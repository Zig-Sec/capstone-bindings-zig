const cs = @import("capstone-c");

pub const Extender = enum(cs.arm64_extender) {
    INVALID = 0,
    UXTB = 1,
    UXTH = 2,
    UXTW = 3,
    UXTX = 4,
    SXTB = 5,
    SXTH = 6,
    SXTW = 7,
    SXTX = 8,
};
