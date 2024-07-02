const cs = @import("capstone-c");

pub const OpType = enum(cs.ppc_op_type) {
    INVALID,
    REG,
    IMM,
    MEM,
    CRX = 64,
};
