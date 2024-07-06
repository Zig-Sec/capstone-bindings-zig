const OpMem = @import("op_mem.zig").OpMem;

pub const Instruction = extern union {
    reg: c_uint,
    imm: i64,
    mem: OpMem,
};
