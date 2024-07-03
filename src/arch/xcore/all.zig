const cs = @import("capstone-c");

const Operand = @import("operand.zig").Operand;

pub const Arch = extern struct {
    op_count: u8,
    operands: [8]Operand,
};
