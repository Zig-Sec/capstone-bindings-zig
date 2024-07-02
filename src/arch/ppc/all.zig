const cs = @import("capstone-c");

const Bc = @import("bc.zig").Bc;
const Bh = @import("bh.zig").Bh;
const Operand = @import("operand.zig").Operand;

pub const Arch = extern struct {
    bc: Bc,
    bh: Bh,
    update_cr0: bool,
    op_count: u8,
    operands: [8]Operand,
};
