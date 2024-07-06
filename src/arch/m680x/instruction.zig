const Register = @import("register.zig").Register;
const OpIdx = @import("op_idx.zig").OpIdx;
const OpRel = @import("op_rel.zig").OpRel;
const OpExt = @import("op_ext.zig").OpExt;

pub const Instruction = extern union {
    imm: i32,
    reg: Register,
    idx: OpIdx,
    rel: OpRel,
    ext: OpExt,
    direct_addr: u8,
    const_val: u8,
};
