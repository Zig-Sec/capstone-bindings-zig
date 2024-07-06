const Register = @import("register.zig").Register;
const OpMem = @import("op_mem.zig").OpMem;
const OpDsp = @import("op_dsp.zig").OpDsp;

pub const Instruction = extern union {
    imm: u64,
    reg: Register,
    mem: OpMem,
    dsp: OpDsp,
};
