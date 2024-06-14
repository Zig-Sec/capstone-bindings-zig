const cs = @import("capstone-c");

pub const Prefetch = enum(cs.arm64_prefetch_op) {
    INVALID = 0,
    PLDL1KEEP = 1,
    PLDL1STRM = 2,
    PLDL2KEEP = 3,
    PLDL2STRM = 4,
    PLDL3KEEP = 5,
    PLDL3STRM = 6,
    PLIL1KEEP = 9,
    PLIL1STRM = 10,
    PLIL2KEEP = 11,
    PLIL2STRM = 12,
    PLIL3KEEP = 13,
    PLIL3STRM = 14,
    PSTL1KEEP = 17,
    PSTL1STRM = 18,
    PSTL2KEEP = 19,
    PSTL2STRM = 20,
    PSTL3KEEP = 21,
    PSTL3STRM = 22,
};
