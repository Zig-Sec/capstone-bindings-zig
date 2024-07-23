const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const arm = b.option(bool, "arm", "Controls -DCAPSTONE_HAS_ARM") orelse true;
    const arm64 = b.option(bool, "arm64", "Controls -DCAPSTONE_HAS_ARM64") orelse true;
    const mips = b.option(bool, "mips", "Controls -DCAPSTONE_HAS_MIPS") orelse true;
    const powerpc = b.option(bool, "powerpc", "Controls -DCAPSTONE_HAS_POWERPC") orelse true;
    const x86 = b.option(bool, "x86", "Controls -DCAPSTONE_HAS_X86") orelse true;
    const sparc = b.option(bool, "sparc", "Controls -DCAPSTONE_HAS_SPARC") orelse true;
    const sysz = b.option(bool, "sysz", "Controls -DCAPSTONE_HAS_SYSZ") orelse true;
    const xcore = b.option(bool, "xcore", "Controls -DCAPSTONE_HAS_XCORE") orelse true;
    const m68k = b.option(bool, "m68k", "Controls -DCAPSTONE_HAS_M68K") orelse true;
    const tms320c64x = b.option(bool, "tms320c64x", "Controls -DCAPSTONE_HAS_TMS320C64X") orelse true;
    const m680x = b.option(bool, "m680x", "Controls -DCAPSTONE_HAS_M680X") orelse true;
    const evm = b.option(bool, "evm", "Controls -DCAPSTONE_HAS_EVM") orelse true;
    const wasm = b.option(bool, "wasm", "Controls -DCAPSTONE_HAS_WASM") orelse true;
    const mos65xx = b.option(bool, "mos65xx", "Controls -DCAPSTONE_HAS_MOS65XX") orelse true;
    const bpf = b.option(bool, "bpf", "Controls -DCAPSTONE_HAS_BPF") orelse true;
    const riscv = b.option(bool, "riscv", "Controls -DCAPSTONE_HAS_RISCV") orelse true;
    const sh = b.option(bool, "sh", "Controls -DCAPSTONE_HAS_SH") orelse true;
    const tricore = b.option(bool, "tricore", "Controls -DCAPSTONE_HAS_TRICORE") orelse true;

    const capstone = b.dependency("capstone", .{
        .target = target,
        .optimize = optimize,
        .arm = arm,
        .arm64 = arm64,
        .mips = mips,
        .powerpc = powerpc,
        .x86 = x86,
        .sparc = sparc,
        .sysz = sysz,
        .xcore = xcore,
        .m68k = m68k,
        .tms320c64x = tms320c64x,
        .m680x = m680x,
        .evm = evm,
        .wasm = wasm,
        .mos65xx = mos65xx,
        .bpf = bpf,
        .riscv = riscv,
        .sh = sh,
        .tricore = tricore,
    });
    const compiled_capstone = capstone.artifact("capstone");

    compiled_capstone.getEmittedIncludeTree().addStepDependencies(&compiled_capstone.step);
    const capstone_c = b.addTranslateC(.{
        .root_source_file = compiled_capstone.getEmittedIncludeTree().path(b, "capstone/capstone.h"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });

    const mod = b.addModule("capstone-bindings-zig", .{
        .root_source_file = b.path("capstone.zig"),
        .target = target,
        .optimize = optimize,
        .imports = &.{
            .{
                .name = "capstone-c",
                .module = capstone_c.createModule(),
            },
        },
    });
    mod.addLibraryPath(compiled_capstone.getEmittedBin().dirname());
    mod.linkSystemLibrary("capstone", .{ .needed = true, .preferred_link_mode = .static });
    mod.addIncludePath(compiled_capstone.getEmittedIncludeTree());

    const mod_test = b.addTest(.{
        .root_source_file = mod.root_source_file.?,
        .target = target,
        .optimize = optimize,
    });
    mod_test.step.dependOn(&compiled_capstone.step);

    mod_test.root_module.addImport("capstone-c", capstone_c.createModule());

    const run_lib_tests = b.addRunArtifact(mod_test);
    const test_step = b.step("test", "Run the library tests");
    test_step.dependOn(&run_lib_tests.step);
}
