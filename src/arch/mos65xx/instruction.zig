const Register = @import("register.zig").Register;

pub const Instruction = extern union {
    reg: Register,
    imm: u16,
    mem: u32,
};
