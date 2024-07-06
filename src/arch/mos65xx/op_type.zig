const cs = @import("capstone-c");

pub const OpType = enum(cs.mos65xx_op_type) {
    INVALID,
    REG,
    IMM,
    MEM,
};
