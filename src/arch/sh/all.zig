const Insn = @import("insn.zig").Insn;
const Operand = @import("operand.zig").Operand;

pub const Arch = extern struct {
    insn: Insn,
    size: u8,
    op_count: u8,
    operands: [3]Operand,
};
