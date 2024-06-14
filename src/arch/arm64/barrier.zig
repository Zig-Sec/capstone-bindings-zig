const cs = @import("capstone-c");

pub const Barrier = enum(cs.arm64_barrier_op) {
    INVALID = 0,
    OSHLD = 1,
    OSHST = 2,
    OSH = 3,
    NSHLD = 5,
    NSHST = 6,
    NSH = 7,
    ISHLD = 9,
    ISHST = 10,
    ISH = 11,
    LD = 13,
    ST = 14,
    SY = 15,
};
