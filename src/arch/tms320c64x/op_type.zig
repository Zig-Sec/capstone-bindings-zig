const cs = @import("capstone-c");

pub const OpType = enum(cs.tms320c64x_op_type) {
    INVALID,
    REG,
    IMM,
    MEM,
    REGPAIR = 64,
};
