const Operand = @import("operand.zig").Operand;
const Condition = @import("condition.zig").Condition;
const Funit = @import("funit.zig").Funit;

pub const Arch = extern struct {
    op_count: u8,
    operands: [8]Operand,
    condition: Condition,
    funit: Funit,
    parallel: c_uint,
};
