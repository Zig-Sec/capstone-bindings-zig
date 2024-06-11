const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const capstone = b.dependency("capstone", .{
        .target = target,
        .optimize = optimize,
    });
    const compiled_capstone = capstone.artifact("capstone");

    const capstone_c = b.createModule(.{
        .root_source_file = b.path("src/capstone/import.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    capstone_c.addLibraryPath(compiled_capstone.getEmittedBin().dirname());
    capstone_c.linkSystemLibrary("capstone", .{ .needed = true, .preferred_link_mode = .static });
    capstone_c.addIncludePath(compiled_capstone.getEmittedIncludeTree());

    const mod = b.addModule("capstone-bindings-zig", .{
        .root_source_file = b.path("capstone.zig"),
        .target = target,
        .optimize = optimize,
        .imports = &.{
            .{
                .name = "capstone-c",
                .module = capstone_c,
            },
        },
    });

    const mod_test = b.addTest(.{
        .root_source_file = mod.root_source_file.?,
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    mod_test.root_module.addImport("capstone-c", capstone_c);

    const run_lib_tests = b.addRunArtifact(mod_test);
    run_lib_tests.step.dependOn(&compiled_capstone.step);
    const test_step = b.step("test", "Run the library tests");
    test_step.dependOn(&run_lib_tests.step);
}
