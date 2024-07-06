const Operand = @import("operand.zig").Operand;

pub const Arch = extern struct {
    op_count: u8,
    operands: [4]Operand,
};
