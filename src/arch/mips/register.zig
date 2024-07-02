const cs = @import("capstone-c");

pub const Register = enum(cs.mips_reg) {
    INVALID,
    PC,
    @"0",
    @"1",
    @"2",
    @"3",
    @"4",
    @"5",
    @"6",
    @"7",
    @"8",
    @"9",
    @"10",
    @"11",
    @"12",
    @"13",
    @"14",
    @"15",
    @"16",
    @"17",
    @"18",
    @"19",
    @"20",
    @"21",
    @"22",
    @"23",
    @"24",
    @"25",
    @"26",
    @"27",
    @"28",
    @"29",
    @"30",
    @"31",
    DSPCCOND,
    DSPCARRY,
    DSPEFI,
    DSPOUTFLAG,
    DSPOUTFLAG16_19,
    DSPOUTFLAG20,
    DSPOUTFLAG21,
    DSPOUTFLAG22,
    DSPOUTFLAG23,
    DSPPOS,
    DSPSCOUNT,
    AC0,
    AC1,
    AC2,
    AC3,
    CC0,
    CC1,
    CC2,
    CC3,
    CC4,
    CC5,
    CC6,
    CC7,
    F0,
    F1,
    F2,
    F3,
    F4,
    F5,
    F6,
    F7,
    F8,
    F9,
    F10,
    F11,
    F12,
    F13,
    F14,
    F15,
    F16,
    F17,
    F18,
    F19,
    F20,
    F21,
    F22,
    F23,
    F24,
    F25,
    F26,
    F27,
    F28,
    F29,
    F30,
    F31,
    FCC0,
    FCC1,
    FCC2,
    FCC3,
    FCC4,
    FCC5,
    FCC6,
    FCC7,
    W0,
    W1,
    W2,
    W3,
    W4,
    W5,
    W6,
    W7,
    W8,
    W9,
    W10,
    W11,
    W12,
    W13,
    W14,
    W15,
    W16,
    W17,
    W18,
    W19,
    W20,
    W21,
    W22,
    W23,
    W24,
    W25,
    W26,
    W27,
    W28,
    W29,
    W30,
    W31,
    HI,
    LO,
    P0,
    P1,
    P2,
    MPL0,
    MPL1,
    MPL2,
    ENDING,

    pub const ZERO: cs.mips_register = 2;
    pub const AT: cs.mips_register = 3;
    pub const V0: cs.mips_register = 4;
    pub const V1: cs.mips_register = 5;
    pub const A0: cs.mips_register = 6;
    pub const A1: cs.mips_register = 7;
    pub const A2: cs.mips_register = 8;
    pub const A3: cs.mips_register = 9;
    pub const T0: cs.mips_register = 10;
    pub const T1: cs.mips_register = 11;
    pub const T2: cs.mips_register = 12;
    pub const T3: cs.mips_register = 13;
    pub const T4: cs.mips_register = 14;
    pub const T5: cs.mips_register = 15;
    pub const T6: cs.mips_register = 16;
    pub const T7: cs.mips_register = 17;
    pub const S0: cs.mips_register = 18;
    pub const S1: cs.mips_register = 19;
    pub const S2: cs.mips_register = 20;
    pub const S3: cs.mips_register = 21;
    pub const S4: cs.mips_register = 22;
    pub const S5: cs.mips_register = 23;
    pub const S6: cs.mips_register = 24;
    pub const S7: cs.mips_register = 25;
    pub const T8: cs.mips_register = 26;
    pub const T9: cs.mips_register = 27;
    pub const K0: cs.mips_register = 28;
    pub const K1: cs.mips_register = 29;
    pub const GP: cs.mips_register = 30;
    pub const SP: cs.mips_register = 31;
    pub const FP: cs.mips_register = 32;
    pub const S8: cs.mips_register = 32;
    pub const RA: cs.mips_register = 33;
    pub const HI0: cs.mips_register = 45;
    pub const HI1: cs.mips_register = 46;
    pub const HI2: cs.mips_register = 47;
    pub const HI3: cs.mips_register = 48;
    pub const LO0: cs.mips_register = 45;
    pub const LO1: cs.mips_register = 46;
    pub const LO2: cs.mips_register = 47;
    pub const LO3: cs.mips_register = 48;
};
