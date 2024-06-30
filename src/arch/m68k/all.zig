const cs = @import("capstone-c");

const Operands = @import("operands.zig").Operands;
const OpSize = @import("op_size.zig").OpSize;

pub const Arch = extern struct {
    operands: [4]Operands,
    op_size: OpSize,
    op_count: u8,
};
