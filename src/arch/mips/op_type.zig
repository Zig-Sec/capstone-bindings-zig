const cs = @import("capstone-c");

pub const OpType = enum(cs.mips_op_type) {
    INVALID,
    REG,
    IMM,
    MEM,
};
