const Register = @import("register.zig").Register;

pub const OpMemory = extern struct {
    base: Register,
    index: Register,
    scale: c_int,
    disp: c_int,
    lshift: c_int,
};
