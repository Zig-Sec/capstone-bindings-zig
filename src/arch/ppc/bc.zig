const cs = @import("capstone-c");

pub const Bc = enum(cs.ppc_bc) {
    INVALID,
    LT = 12,
    LE = 36,
    EQ = 76,
    GE = 4,
    GT = 44,
    NE = 68,
    UN = 108,
    NU = 100,
    SO = 140,
    NS = 132,
};
