const Register = @import("register.zig").Register;
const Setend = @import("setend.zig").Setend;
const OpMem = @import("op_mem.zig").OpMem;

pub const Instruction = extern union {
    reg: c_int,
    imm: i32,
    fp: f64,
    mem: OpMem,
    setend: Setend,
};
