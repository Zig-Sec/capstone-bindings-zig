const cs = @import("capstone-c");

pub const Pstate = enum(cs.arm64_pstate) {
    INVALID = 0,
    SPSEL = 5,
    DAIFSET = 30,
    DAIFCLR = 31,
    PAN = 4,
    UAO = 3,
    DIT = 26,
};
