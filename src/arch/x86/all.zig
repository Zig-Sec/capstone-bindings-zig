const cs = @cImport({
    @cInclude("capstone/capstone.h");
});

pub const avx = @import("avx.zig");
pub const sse = @import("sse.zig");
pub const reg = @import("register.zig");
pub const xop = @import("xop.zig");

pub const Flags = extern union {
    eflags: u64,
    fpu_flags: u64,
};

const OpType = enum(cs.x86_op_type) {
    INVALID = 0,
    REG,
    IMM,
    MEM,
};

const Memory = extern struct {
    segment: reg.Register,
    base: reg.Register,
    index: reg.Register,
    scale: c_uint,
    disp: i64,
};

const Instruction = extern union {
    reg: reg.Register,
    imm: i64,
    mem: Memory,
};

pub const Op = extern struct {
    type: OpType,
    inst: Instruction,
    size: u8,
    access: u8,
    avx_bcast: avx.Bcast,
    avx_zero_opmask: bool,
};

pub const Encoding = extern struct {
    modrm_offset: u8,
    disp_offset: u8,
    disp_size: u8,
    imm_offset: u8,
    imm_size: u8,
};

pub const Arch = extern struct {
    prefix: [4]u8,
    opcode: [4]u8,
    rex: u8,
    addr_size: u8,
    modrm: u8,
    sib: u8,
    disp: i64,
    sib_index: reg.Register,
    sib_scale: i8,
    sib_base: reg.Register,
    xop_cc: xop.Cc,
    sse_cc: sse.Cc,
    avx_cc: avx.Cc,
    avx_sae: bool,
    avx_rm: avx.Rm,
    unnamed_0: Flags,
    op_count: u8,
    operands: [8]Op,
    encoding: Encoding,
};
