const cs = @import("capstone-c");

pub const OpType = enum(cs.arm64_op_type) {
    INVALID = 0,
    REG = 1,
    IMM = 2,
    MEM = 3,
    FP = 4,
    CIMM = 64,
    REG_MRS = 65,
    REG_MSR = 66,
    PSTATE = 67,
    SYS = 68,
    SVCR = 69,
    PREFETCH = 70,
    BARRIER = 71,
    SME_INDEX = 72,
};
