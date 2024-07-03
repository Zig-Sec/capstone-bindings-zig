pub const cs = @import("capstone-c");

const x86 = @import("x86/all.zig");
const arm64 = @import("arm64/all.zig");
const arm = @import("arm/all.zig");
const m68k = @import("m68k/all.zig");
const mips = @import("mips/all.zig");
const ppc = @import("ppc/all.zig");
const sparc = @import("sparc/all.zig");
const sysz = @import("sysz/all.zig");
const xcore = @import("xcore/all.zig");
const tms320c64x = @import("tms320c64x/all.zig");

pub const Arch = extern union {
    x86: x86.Arch,
    arm64: arm64.Arch,
    arm: arm.Arch,
    m68k: m68k.Arch,
    mips: mips.Arch,
    ppc: ppc.Arch,
    sparc: sparc.Arch,
    sysz: sysz.Arch,
    xcore: xcore.Arch,
    tms320c64x: tms320c64x.Arch,
    m680x: cs.cs_m680x,
    evm: cs.cs_evm,
    mos65xx: cs.cs_mos65xx,
    wasm: cs.cs_wasm,
    bpf: cs.cs_bpf,
    riscv: cs.cs_riscv,
    sh: cs.cs_sh,
    tricore: cs.cs_tricore,
};
