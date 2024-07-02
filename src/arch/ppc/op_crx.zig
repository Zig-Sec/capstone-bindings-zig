const cs = @import("capstone-c");

const Register = @import("register.zig").Register;
const Bc = @import("bc.zig").Bc;

pub const OpCrx = extern struct {
    scale: c_uint,
    reg: Register,
    cond: Bc,
};
