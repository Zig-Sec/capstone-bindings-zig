const cs = @import("capstone-c");

const Register = @import("register.zig").Register;

pub const Sme = extern struct {
    reg: Register,
    base: Register,
    disp: i32,
};
