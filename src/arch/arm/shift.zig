const cs = @import("capstone-c");

pub const Shift = enum(cs.arm_shifter) {
    INVALID,
    ASR,
    LSL,
    LSR,
    ROR,
    RRX,
    ASR_REG,
    LSL_REG,
    LSR_REG,
    ROR_REG,
    RRX_REG,
};
