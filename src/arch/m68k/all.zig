const Operand = @import("operand.zig").Operand;
const OpSize = @import("op_size.zig").OpSize;

pub const Arch = extern struct {
    operands: [4]Operand,
    op_size: OpSize,
    op_count: u8,
};
