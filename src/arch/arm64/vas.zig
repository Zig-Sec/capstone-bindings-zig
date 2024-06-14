const cs = @import("capstone-c");

pub const Vas = enum(cs.arm64_vas) {
    INVALID = 0,
    @"16B" = 1,
    @"8B" = 2,
    @"4B" = 3,
    @"1B" = 4,
    @"8H" = 5,
    @"4H" = 6,
    @"2H" = 7,
    @"1H" = 8,
    @"4S" = 9,
    @"2S" = 10,
    @"1S" = 11,
    @"2D" = 12,
    @"1D" = 13,
    @"1Q" = 14,
};
