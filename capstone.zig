pub usingnamespace @import("src/error.zig");
pub usingnamespace @import("src/insn.zig");
pub usingnamespace @import("src/setup.zig");

test {
    @import("std").testing.refAllDeclsRecursive(@This());
    @import("std").testing.refAllDeclsRecursive(@import("src/error.zig"));
    @import("std").testing.refAllDeclsRecursive(@import("src/insn.zig"));
    @import("std").testing.refAllDeclsRecursive(@import("src/setup.zig"));
}
