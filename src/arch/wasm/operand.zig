const OpType = @import("op_type.zig").OpType;
const Instruction = @import("instruction.zig").Instruction;

pub const Operand = extern struct {
    type: OpType,
    size: u32,
    instruction: Instruction,
};
