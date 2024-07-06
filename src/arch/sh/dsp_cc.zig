const cs = @import("capstone-c");

pub const DspCc = enum(cs.sh_dsp_cc) {
    INVALID,
    NONE,
    DCT,
    DCF,
};
