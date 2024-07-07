const Register = @import("register.zig").Register;
const Pstate = @import("pstate.zig").Pstate;
const SysOp = @import("sys_op.zig").SysOp;
const Prefetch = @import("prefetch.zig").Prefetch;
const Barrier = @import("barrier.zig").Barrier;
const Sme = @import("sme.zig").Sme;

pub const OpMem = extern struct {
    base: Register,
    index: Register,
    disp: i32,
};

pub const Instruction = extern union {
    reg: Register,
    imm: i64,
    fp: f64,
    mem: OpMem,
    pstate: Pstate,
    sys: SysOp,
    prefetch: Prefetch,
    barrier: Barrier,
    sme_index: Sme,
};
