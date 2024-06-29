const cs = @import("capstone-c");

const Shifter = @import("shifter.zig").Shifter;
const OpType = @import("op_type.zig").OpType;
const Instruction = @import("instruction.zig").Instruction;

pub const Operands = extern struct {
    vector_index: c_int,
    shift: Shifter,
    type: OpType,
    instruction: Instruction,
    subtracted: bool,
    access: u8,
    neon_lane: i8,
};
