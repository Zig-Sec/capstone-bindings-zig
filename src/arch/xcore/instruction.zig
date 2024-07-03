const cs = @import("capstone-c");

const Register = @import("register.zig").Register;
const OpMem = @import("op_mem.zig").OpMem;

pub const Instruction = extern union {
    reg: Register,
    imm: i32,
    mem: OpMem,
};
