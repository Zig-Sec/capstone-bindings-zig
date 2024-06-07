const cs = @cImport({
    @cInclude("capstone/capstone.h");
});

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
