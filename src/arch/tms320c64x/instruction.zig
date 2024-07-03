const cs = @import("capstone-c");

const OpMem = @import("op_mem.zig").OpMem;

pub const Instruction = extern union {
    reg: c_uint,
    imm: i32,
    mem: OpMem,
};
