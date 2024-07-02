const cs = @import("capstone-c");

pub const OpType = enum(cs.sparc_op_type) {
    INVALID,
    REG,
    IMM,
    MEM,
};
