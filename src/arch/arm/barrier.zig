const cs = @import("capstone-c");

pub const Barrier = enum(cs.arm_mem_barrier) {
    INVALID,
    RESERVED_0,
    OSHLD,
    OSHST,
    OSH,
    RESERVED_4,
    NSHLD,
    NSHST,
    NSH,
    RESERVED_8,
    ISHLD,
    ISHST,
    ISH,
    RESERVED_12,
    LD,
    ST,
    SY,
};
