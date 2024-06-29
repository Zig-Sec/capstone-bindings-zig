const cs = @import("capstone-c");

pub const Cc = enum(cs.arm_cc) {
    INVALID,
    EQ,
    NE,
    HS,
    LO,
    MI,
    PL,
    VS,
    VC,
    HI,
    LS,
    GE,
    LT,
    GT,
    LE,
    AL,
};
