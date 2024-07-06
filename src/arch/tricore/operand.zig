const OpType = @import("op_type.zig").OpType;
const Instruction = @import("instruction.zig").Instruction;

pub const Operand = extern struct {
    type: OpType,
    instruction: Instruction,
    access: u8,
};
