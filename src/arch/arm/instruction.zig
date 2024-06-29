const cs = @import("capstone-c");

const Register = @import("register.zig").Register;

const Setend = enum(cs.arm_setend_type) {
    INVALID,
    BE,
    LE,
};

const OpMemory = extern struct {
    base: Register,
    index: Register,
    scale: c_int,
    disp: c_int,
    lshift: c_int,
};

pub const Instruction = extern union {
    reg: c_int,
    imm: i32,
    fp: f64,
    mem: OpMemory,
    setend: Setend,
};
