const cs = @import("capstone-c");

pub const OpType = enum(cs.tricore_op_type) {
    INVALID,
    REG,
    IMM,
    MEM = 128,
};
