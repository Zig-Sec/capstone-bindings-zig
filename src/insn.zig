const arch = @import("arch/arch.zig");

pub const Detail = extern struct {
    regs_read: [20]u16,
    regs_read_count: u8,
    regs_write: [20]u16,
    regs_write_count: u8,
    groups: [8]u8,
    groups_count: u8,
    writeback: bool,
    arch: arch.Arch,
};

pub const Insn = extern struct {
    id: c_uint,
    address: usize,
    size: u16,
    bytes: [24]u8,
    mnemonic: [32]u8,
    op_str: [160]u8,
    detail: ?*Detail,

    pub fn normalizeStrings(self: *Insn) void {
        var write = false;
        for (&self.bytes) |*c| {
            if (c.* == '\x00') {
                write = true;
                continue;
            }
            if (write) c.* = '\x00';
        }

        write = false;
        for (&self.mnemonic) |*c| {
            if (c.* == '\x00') {
                write = true;
                continue;
            }
            if (write) c.* = '\x00';
        }

        write = false;
        for (&self.op_str) |*c| {
            if (c.* == '\x00') {
                write = true;
                continue;
            }
            if (write) c.* = '\x00';
        }
    }
};
