pub const cs = @import("capstone-c");

pub const Cc = enum(cs.x86_xop_cc) {
    INVALID = 0,
    LT,
    LE,
    GT,
    GE,
    EQ,
    NEQ,
    FALSE,
    TRUE,
};
