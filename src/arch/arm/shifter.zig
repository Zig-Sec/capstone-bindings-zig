const cs = @import("capstone-c");

const Shift = enum(cs.arm_shifter) {
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

pub const Shifter = extern union {
    type: Shift,
    value: c_uint,
};
