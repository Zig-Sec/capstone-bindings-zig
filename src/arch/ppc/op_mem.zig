const Register = @import("register.zig").Register;

pub const OpMem = extern struct {
    base: Register,
    disp: i32,
};
