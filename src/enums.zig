pub const cs = @import("capstone-c");

pub const Arch = enum(cs.cs_arch) {
    ARM = 0,
    ARM64,
    MIPS,
    X86,
    PPC,
    SPARC,
    SYSZ,
    XCORE,
    M68K,
    TMS320C64X,
    M680X,
    EVM,
    MOS65XX,
    WASM,
    BPF,
    RISCV,
    SH,
    TRICORE,
    MAX = 18,
    ALL = 65535,
};

// zig fmt: off
pub const Mode = enum(cs.cs_mode) {
    LITTLE_ENDIAN = 0,
    BPF_EXTENDED = 1, 
    @"16" = 2,
    @"32" = 4,
    @"64" = 8,
    THUMB = 16,
    MCLASS = 32,
    V8 = 64,
    MIPS2 = 128,
    BIG_ENDIAN = 2147483648,
    M680X_6811 = 256,
    M680X_CPU12 = 512,
    M680X_HCS08 = 1024,
    MOS65XX_65816_LONG_MX = 96,

    const ARM = @intFromEnum(Mode.LITTLE_ENDIAN);
    const BPF_CLASSIC = @intFromEnum(Mode.LITTLE_ENDIAN);

    const RISCV32 = @intFromEnum(Mode.BPF_EXTENDED);

    const M68K_000 = @intFromEnum(Mode.@"16");
    const M680X_6301 = @intFromEnum(Mode.@"16");
    const RISCV64 = @intFromEnum(Mode.@"16");
    const MOS65XX_6502 = @intFromEnum(Mode.@"16");
    const SH2 = @intFromEnum(Mode.@"16");
    const TRICORE_110 = @intFromEnum(Mode.@"16");

    const M68K_010 = @intFromEnum(Mode.@"32");
    const MIPS32 = @intFromEnum(Mode.@"32");
    const M680X_6309 = @intFromEnum(Mode.@"32");
    const RISCVC = @intFromEnum(Mode.@"32");
    const MOS65XX_65C02 = @intFromEnum(Mode.@"32");
    const SH2A = @intFromEnum(Mode.@"32");
    const TRICORE_120 = @intFromEnum(Mode.@"32");

    const M68K_020 = @intFromEnum(Mode.@"64");
    const MIPS64 = @intFromEnum(Mode.@"64");
    const M680X_6800 = @intFromEnum(Mode.@"64");
    const MOS65XX_W65C02 = @intFromEnum(Mode.@"64");
    const SH3 = @intFromEnum(Mode.@"64");
    const TRICORE_130 = @intFromEnum(Mode.@"64");

    const MICRO = @intFromEnum(Mode.THUMB);
    const V9 = @intFromEnum(Mode.THUMB);
    const QPX = @intFromEnum(Mode.THUMB);
    const M68K_030 = @intFromEnum(Mode.THUMB);
    const M680X_6801 = @intFromEnum(Mode.THUMB);
    const MOS65XX_65816 = @intFromEnum(Mode.THUMB);
    const SH4 = @intFromEnum(Mode.THUMB);
    const TRICORE_131 = @intFromEnum(Mode.THUMB);

    const MIPS3 = @intFromEnum(Mode.MCLASS);
    const SPE = @intFromEnum(Mode.MCLASS);
    const M68K_040 = @intFromEnum(Mode.MCLASS);
    const M680X_6805 = @intFromEnum(Mode.MCLASS);
    const MOS65XX_65816_LONG_M = @intFromEnum(Mode.MCLASS);
    const SH4A = @intFromEnum(Mode.MCLASS);
    const TRICORE_160 = @intFromEnum(Mode.MCLASS);

    const MIPS32R6 = @intFromEnum(Mode.V8);
    const BOOKE = @intFromEnum(Mode.V8);
    const M68K_060 = @intFromEnum(Mode.V8);
    const M680X_6808 = @intFromEnum(Mode.V8);
    const MOS65XX_65816_LONG_X = @intFromEnum(Mode.V8);
    const SHFPU = @intFromEnum(Mode.V8);
    const TRICORE_161 = @intFromEnum(Mode.V8);

    const PS = @intFromEnum(Mode.MIPS2);
    const M680X_6809 = @intFromEnum(Mode.MIPS2);
    const SHDSP = @intFromEnum(Mode.MIPS2);
    const TRICORE_162 = @intFromEnum(Mode.MIPS2);
};
// zig fmt: on

pub const Type = enum(cs.cs_opt_type) {
    INVALID,
    SYNTAX,
    DETAIL,
    MODE,
    MEM,
    SKIPDATA,
    SKIPDATA_SETUP,
    MNEMONIC,
    UNSIGNED,
    NO_BRANCH_OFFSET,
};
