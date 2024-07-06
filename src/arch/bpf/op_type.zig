const cs = @import("capstone-c");

pub const OpType = enum(cs.bpf_op_type) {
    INVALID,
    REG,
    IMM,
    OFF,
    MEM,
    MMEM,
    MSH,
    EXT,
};
