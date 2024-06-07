const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const capstone = b.dependency("capstone", .{
        .target = target,
        .optimize = optimize,
    });

    const mod = b.addModule("capstone-bindings-zig", .{
        .root_source_file = b.path("capstone.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });

    const compiled_capstone = capstone.artifact("capstone");
    mod.addLibraryPath(compiled_capstone.getEmittedBin().dirname());
    mod.linkSystemLibrary("capstone", .{ .needed = true, .preferred_link_mode = .static });
    mod.addIncludePath(compiled_capstone.getEmittedIncludeTree());

    b.default_step.dependOn(capstone.builder.default_step);

    const mod_test = b.addTest(.{
        .root_source_file = mod.root_source_file.?,
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    mod_test.addLibraryPath(compiled_capstone.getEmittedBin().dirname());
    mod_test.linkSystemLibrary("capstone");
    mod_test.addIncludePath(compiled_capstone.getEmittedIncludeTree());

    const run_lib_tests = b.addRunArtifact(mod_test);
    run_lib_tests.step.dependOn(capstone.builder.default_step);
    const test_step = b.step("test", "Run the library tests");
    test_step.dependOn(&run_lib_tests.step);
}
