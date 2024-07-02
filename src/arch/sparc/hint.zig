const cs = @import("capstone-c");

pub const Hint = enum(cs.sparc_hint) {
    INVALID,
    A,
    PT,
    PN = 4,
};
