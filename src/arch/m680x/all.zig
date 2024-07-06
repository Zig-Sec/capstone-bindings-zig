const cs = @import("capstone-c");

const Operand = @import("operand.zig").Operand;

pub const Arch = extern struct {
    flags: u8,
    op_count: u8,
    operands: [9]Operand,
};
