const Cc = @import("cc.zig").Cc;
const Operand = @import("operand.zig").Operand;

pub const Arch = extern struct {
    cc: Cc,
    op_count: u8,
    operands: [6]Operand,
};
