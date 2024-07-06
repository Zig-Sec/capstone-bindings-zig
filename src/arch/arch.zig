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
const m680x = @import("m680x/all.zig");
const evm = @import("evm/all.zig");
const mos65xx = @import("mos65xx/all.zig");
const wasm = @import("wasm/all.zig");
const bpf = @import("bpf/all.zig");
const riscv = @import("riscv/all.zig");
const sh = @import("sh/all.zig");
const tricore = @import("tricore/all.zig");

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
    m680x: m680x.Arch,
    evm: evm.Arch,
    mos65xx: mos65xx.Arch,
    wasm: wasm.Arch,
    bpf: bpf.Arch,
    riscv: riscv.Arch,
    sh: sh.Arch,
    tricore: tricore.Arch,
};
