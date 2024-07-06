const Operand = @import("operand.zig");

pub const Arch = extern struct {
    need_effective_addr: bool,
    op_count: u8,
    operands: [8]Operand,
};
