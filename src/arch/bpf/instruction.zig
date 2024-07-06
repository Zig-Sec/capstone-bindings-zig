const OpMem = @import("op_mem.zig").OpMem;

pub const Instruction = extern union {
    reg: u8,
    imm: u64,
    off: u32,
    mem: OpMem,
    mmem: u32,
    msh: u32,
    ext: u32,
};
