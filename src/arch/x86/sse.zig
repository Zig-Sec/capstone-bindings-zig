pub const cs = @import("capstone-c");

pub const Cc = enum(cs.x86_sse_cc) {
    INVALID = 0,
    EQ,
    LT,
    LE,
    UNORD,
    NEQ,
    NLT,
    NLE,
    ORD,
};
