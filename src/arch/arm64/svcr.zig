const cs = @import("capstone-c");

pub const Svcr = enum(cs.arm64_svcr_op) {
    INVALID = 0,
    SVCRSM = 1,
    SVCRSMZA = 3,
    SVCRZA = 2,
};
