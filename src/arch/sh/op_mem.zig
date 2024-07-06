const MemType = @import("mem_type.zig").MemType;
const Register = @import("register.zig").Register;

pub const OpMem = extern struct {
    address: MemType,
    reg: Register,
    disp: u32,
};
