const cs = @import("capstone-c");

const Vas = @import("vas.zig").Vas;
const Shift = @import("shift.zig").Shift;
const Extender = @import("extender.zig").Extender;
const OpType = @import("op_type.zig").OpType;
const Svcr = @import("svcr.zig").Svcr;
const Instruction = @import("instruction.zig").Instruction;

pub const Operands = extern struct {
    vector_index: c_int,
    vas: Vas,
    shift: Shift,
    ext: Extender,
    type: OpType,
    svcr: Svcr,
    instruction: Instruction,
    access: u8,
};
