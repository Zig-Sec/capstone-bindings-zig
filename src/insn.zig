const arch = @import("arch/arch.zig");

const zeroes = @import("std").mem.zeroes;

pub const Detail = extern struct {
    regs_read: [20]u16,
    regs_read_count: u8,
    regs_write: [20]u16,
    regs_write_count: u8,
    groups: [8:0]u8 = zeroes([8:0]u8),
    groups_count: u8,
    writeback: bool,
    arch: arch.Arch,
};

pub const Insn = extern struct {
    id: c_uint,
    address: usize,
    size: u16,
    bytes: [24:0]u8 = zeroes([24:0]u8),
    mnemonic: [32:0]u8 = zeroes([32:0]u8),
    op_str: [160:0]u8 = zeroes([160:0]u8),
    detail: ?*Detail,
};
