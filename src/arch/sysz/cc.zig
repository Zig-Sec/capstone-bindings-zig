const cs = @import("capstone-c");

pub const Cc = enum(cs.sysz_cc) {
    INVALID,
    O,
    H,
    NLE,
    L,
    NHE,
    LH,
    NE,
    E,
    NLH,
    HE,
    NL,
    LE,
    NH,
    NO,
};
