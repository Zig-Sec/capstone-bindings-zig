const cs = @import("capstone-c");

pub const OpType = enum(cs.sysz_op_type) {
    INVALID,
    REG,
    IMM,
    MEM,
    ACREG = 64,
};
