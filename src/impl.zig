const cs = @import("capstone-c");

pub const err = @import("error.zig");
pub const insn = @import("insn.zig");
pub const setup = @import("setup.zig");
pub const enums = @import("enums.zig");

pub const Iter = @import("iter.zig").Iter;
pub const Handle = cs.csh;

pub fn version(major: ?*c_int, minor: ?*c_int) err.CapstoneError!void {
    const maj = major orelse return {};
    const min = minor orelse return {};

    return err.toError(cs.cs_version(@ptrCast(maj), @ptrCast(min))) orelse return;
}

pub fn support(query: c_int) bool {
    return cs.cs_support(query);
}

/// Please close the handle after usage by using: `close`
pub fn open(arch: enums.Arch, mode: enums.Mode) err.CapstoneError!Handle {
    var handle: Handle = 0;

    return err.toError(cs.cs_open(@intFromEnum(arch), @intFromEnum(mode), &handle)) orelse handle;
}

/// Closes a handle
pub fn close(handle: *Handle) err.CapstoneError!void {
    return err.toError(cs.cs_close(@ptrCast(handle))) orelse return;
}

pub fn option(handle: ?Handle, @"type": enums.Type, value: usize) err.CapstoneError!void {
    return err.toError(cs.cs_option(handle orelse 0, @intFromEnum(@"type"), value)) orelse return;
}

pub fn errno(handle: Handle) err.CapstoneError!void {
    return err.toError(cs.cs_errno(handle)) orelse return;
}

pub fn strerror(code: ?err.CapstoneError) ?[*:0]const u8 {
    if (code) |e| {
        const err_as_int = err.fromError(e);
        return @ptrCast(cs.cs_strerror(err_as_int));
    }

    return null;
}

/// The owner takes responsibility of the pointer.
/// Please free with `free`
pub fn disasm(handle: Handle, code: []const u8, address: usize, count: usize) err.CapstoneError![]insn.Insn {
    var ins: [*]insn.Insn = undefined;

    const res_count = cs.cs_disasm(handle, code.ptr, code.len, address, count, @ptrCast(&ins));

    errno(handle) catch |n| return n;

    return ins[0..res_count];
}

pub fn free(ins: []insn.Insn) void {
    cs.cs_free(@ptrCast(ins.ptr), ins.len);
}

pub fn malloc(handle: Handle) [*]insn.Insn {
    return @ptrCast(cs.cs_malloc(handle));
}

/// Same as the normal Variant, but does the allocation for you.
pub fn disasmIterManaged(handle: Handle, code: []const u8, address: u64) Iter {
    const ins = malloc(handle);
    return Iter{
        .handle = handle,
        .code = code,
        .address = address,
        .insn = ins,
    };
}

/// Return an Iter object
/// Does not yet consume any element.
pub fn disasmIter(handle: Handle, code: []const u8, address: u64, ins: [*]insn.Insn) Iter {
    return Iter{
        .handle = handle,
        .code = code,
        .address = address,
        .insn = ins,
    };
}

pub fn regName(handle: Handle, reg_id: c_uint) [*:0]const u8 {
    return cs.cs_reg_name(handle, reg_id);
}

pub fn insnName(handle: Handle, insn_id: c_uint) [*:0]const u8 {
    return cs.cs_insn_name(handle, insn_id);
}

pub fn groupName(handle: Handle, group_id: c_uint) [*:0]const u8 {
    return cs.cs_group_name(handle, group_id);
}

pub fn insnGroup(handle: Handle, ins: []const insn.Insn, group_id: c_uint) bool {
    return cs.cs_insn_group(handle, @ptrCast(ins.ptr), group_id);
}

pub fn regRead(handle: Handle, ins: []const insn.Insn, reg_id: c_uint) bool {
    return cs.cs_reg_read(handle, @ptrCast(ins.ptr), reg_id);
}

pub fn regWrite(handle: Handle, ins: []const insn.Insn, reg_id: c_uint) bool {
    return cs.cs_reg_write(handle, @ptrCast(ins.ptr), reg_id);
}

pub fn opCount(handle: Handle, ins: []const insn.Insn, op_type: c_uint) c_int {
    return cs.cs_op_count(handle, @ptrCast(ins.ptr), op_type);
}

pub fn opIndex(handle: Handle, ins: []const insn.Insn, op_type: c_uint, position: c_uint) c_int {
    return cs.cs_op_index(handle, @ptrCast(ins.ptr), op_type, position);
}

pub fn regsAccess(
    handle: Handle,
    ins: []const insn.Insn,
    regs_read: [*]u16,
    regs_read_count: [*]u8,
    regs_write: [*]u16,
    regs_write_count: [*]u8,
) err.CapstoneError!void {
    return err.toError(cs.cs_regs_access(handle, @ptrCast(ins.ptr), regs_read, regs_read_count, regs_write, regs_write_count)) orelse return;
}

test {
    @import("std").testing.refAllDecls(@This());
    @import("std").testing.refAllDecls(@import("error.zig"));
    @import("std").testing.refAllDecls(@import("insn.zig"));
    @import("std").testing.refAllDecls(@import("setup.zig"));
}
