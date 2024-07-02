pub const cs = @import("capstone-c");

const x86 = @import("x86/all.zig");
const arm64 = @import("arm64/all.zig");
const arm = @import("arm/all.zig");
const m68k = @import("m68k/all.zig");
const mips = @import("mips/all.zig");
const ppc = @import("ppc/all.zig");

pub const Arch = extern union {
    x86: x86.Arch,
    arm64: arm64.Arch,
    arm: arm.Arch,
    m68k: m68k.Arch,
    mips: mips.Arch,
    ppc: ppc.Arch,
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
