const cs = @import("capstone-c");

const Cc = @import("cc.zig").Cc;
const Hint = @import("hint.zig").Hint;
const Operand = @import("operand.zig").Operand;

pub const Arch = extern struct {
    cc: Cc,
    hint: Hint,
    op_count: u8,
    operands: [4]Operand,
};
