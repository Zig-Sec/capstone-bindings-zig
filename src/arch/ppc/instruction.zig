const cs = @import("capstone-c");

const Register = @import("register.zig").Register;
const OpMem = @import("op_mem.zig").OpMem;
const OpCrx = @import("op_crx.zig").OpCrx;

pub const Instruction = extern union {
    reg: Register,
    imm: i64,
    mem: OpMem,
    crx: OpCrx,
};
