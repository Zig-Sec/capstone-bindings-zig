const cs = @import("capstone-c");

pub const Flag = enum(cs.arm_cpsmode_type) {
    INVALID,
    IE = 2,
    ID = 3,
};

pub const Mode = enum(cs.arm_cpsmode_type) {
    INVALID,
    F,
    I,
    A = 4,
    NONE = 16,
};
