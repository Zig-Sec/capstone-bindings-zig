pub const Cc = @import("cc.zig").Cc;
pub const Operand = @import("operand.zig").Operand;

pub const Arch = extern struct {
    cc: Cc,
    update_flags: bool,
    writeback: bool,
    post_index: bool,
    op_count: u8,
    operands: [8]Operand,
};
