const cs = @cImport({
    @cInclude("capstone/capstone.h");
});

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
