const Operand = @import("operand.zig").Operand;

pub const Arch = extern struct {
    op_count: u8,
    operands: [8]Operand,
    update_flags: bool,
};
