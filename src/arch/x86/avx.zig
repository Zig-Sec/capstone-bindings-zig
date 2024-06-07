const cs = @cImport({
    @cInclude("capstone/capstone.h");
});

pub const Cc = enum(cs.x86_avx_cc) {
    INVALID = 0,
    EQ,
    LT,
    LE,
    UNORD,
    NEQ,
    NLT,
    NLE,
    ORD,
    EQ_UQ,
    NGE,
    NGT,
    FALSE,
    NEQ_OQ,
    GE,
    GT,
    TRUE,
    EQ_OS,
    LT_OQ,
    LE_OQ,
    UNORD_S,
    NEQ_US,
    NLT_UQ,
    NLE_UQ,
    ORD_S,
    EQ_US,
    NGE_UQ,
    NGT_UQ,
    FALSE_OS,
    NEQ_OS,
    GE_OQ,
    GT_OQ,
    TRUE_US,
};

pub const Rm = enum(cs.x86_avx_rm) {
    INVALID = 0,
    RN,
    RD,
    RU,
    RZ,
};

pub const Bcast = enum(cs.x86_avx_bcast) {
    INVALID = 0,
    @"2",
    @"4",
    @"8",
    @"16",
};
