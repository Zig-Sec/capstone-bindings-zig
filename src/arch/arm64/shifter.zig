const Shift = @import("shift.zig").Shift;

pub const Shifter = extern struct {
    type: Shift,
    value: c_uint,
};
