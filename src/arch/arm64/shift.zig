const cs = @import("capstone-c");

pub const Shift = enum(cs.arm64_shifter) {
    INVALID = 0,
    LSL = 1,
    MSL = 2,
    LSR = 3,
    ASR = 4,
    ROR = 5,
};
