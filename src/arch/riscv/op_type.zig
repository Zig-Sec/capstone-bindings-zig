const cs = @import("capstone-c");

pub const OpType = enum(cs.riscv_op_type) {
    INVALID,
    REG,
    IMM,
    MEM,
};
