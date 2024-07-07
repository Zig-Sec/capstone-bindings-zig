const cs = @import("capstone-c");

pub const Setend = enum(cs.arm_setend_type) {
    INVALID,
    BE,
    LE,
};
