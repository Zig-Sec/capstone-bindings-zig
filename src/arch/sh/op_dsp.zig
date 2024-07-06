const DspInsn = @import("dsp_insn.zig").DspInsn;
const DspOperand = @import("dsp_operand.zig").DspOperand;
const Register = @import("register.zig").Register;
const DspCc = @import("dsp_cc.zig").DspCc;

pub const OpDsp = extern struct {
    insn: DspInsn,
    operand: [2]DspOperand,
    r: [6]Register,
    cc: DspCc,
    imm: u8,
    size: c_int,
};
