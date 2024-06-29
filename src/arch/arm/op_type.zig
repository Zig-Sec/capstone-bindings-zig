const cs = @import("capstone-c");

pub const OpType = enum(cs.arm_op_type) {
    INVALID,
    REG,
    IMM,
    MEM,
    FP,
    CIMM = 64,
    PIMM = 65,
    SETEND = 66,
    SYSREG = 67,
};
