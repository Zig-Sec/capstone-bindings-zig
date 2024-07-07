const Register = @import("register.zig").Register;

pub const OpMem = extern struct {
    base: Register,
    index: Register,
    scale: c_int,
    disp: c_int,
    lshift: c_int,
};
