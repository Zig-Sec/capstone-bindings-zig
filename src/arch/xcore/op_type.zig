const cs = @import("capstone-c");

pub const OpType = enum(cs.xcore_op_type) {
    INVALID,
    REG,
    IMM,
    MEM,
};
