const cs = @import("capstone-c");

const reg = @import("register.zig");

pub const Instruction = extern union {
    imm: u64,
    dimm: f64,
    simm: f32,
    reg: reg.Register,
    reg_pair: reg.RegisterPair,
};
