const cs = @import("capstone-c");

pub const DspOperand = enum(cs.sh_dsp_operand) {
    INVALID,
    REG_PRE,
    REG_IND,
    REG_POST,
    REG_INDEX,
    REG,
    IMM,
};
