pub const cs = @import("capstone-c");
const x86 = @import("x86/all.zig");
const arm64 = @import("arm64/all.zig");

pub const Arch = extern union {
    x86: x86.Arch,
    arm64: arm64.Arch,
    arm: cs.cs_arm,
    m68k: cs.cs_m68k,
    mips: cs.cs_mips,
    ppc: cs.cs_ppc,
    sparc: cs.cs_sparc,
    sysz: cs.cs_sysz,
    xcore: cs.cs_xcore,
    tms320c64x: cs.cs_tms320c64x,
    m680x: cs.cs_m680x,
    evm: cs.cs_evm,
    mos65xx: cs.cs_mos65xx,
    wasm: cs.cs_wasm,
    bpf: cs.cs_bpf,
    riscv: cs.cs_riscv,
    sh: cs.cs_sh,
    tricore: cs.cs_tricore,
};
