const cs = @import("capstone-c");

const OpType = @import("op_type.zig").OpType;
const Instruction = @import("instruction.zig").Instruction;

pub const Operand = extern struct {
    type: OpType,
    instruction: Instruction,
    size: u8,
    access: u8,
};
