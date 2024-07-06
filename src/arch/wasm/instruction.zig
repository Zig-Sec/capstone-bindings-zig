const BrTable = @import("brtable.zig").BrTable;

pub const Instruction = extern union {
    int7: u8,
    varuint32: u32,
    varuint64: u64,
    uint32: u32,
    uint64: u64,
    immediate: [2]u32,
    brtable: BrTable,
};
