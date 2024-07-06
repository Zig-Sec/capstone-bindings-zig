const cs = @import("capstone-c");

pub const OpType = enum(cs.sh_op_type) {
    INVALID,
    REG,
    IMM,
    MEM,
};
