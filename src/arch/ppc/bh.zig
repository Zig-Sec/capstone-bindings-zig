const cs = @import("capstone-c");

pub const Bh = enum(cs.ppc_bh) {
    INVALID,
    PLUS,
    MINUS,
};
