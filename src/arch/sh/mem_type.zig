const cs = @import("capstone-c");

pub const MemType = enum(cs.sh_op_mem_type) {
    INVALID,
    REG_IND,
    REG_POST,
    REG_PRE,
    REG_DISP,
    REG_R0,
    GBR_DISP,
    GBR_R0,
    PCR,
    TBR_DISP,
};
