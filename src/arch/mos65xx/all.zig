const AddressMode = @import("address_mode.zig").AddressMode;
const Operand = @import("operand.zig").Operand;

pub const Arch = extern struct {
    am: AddressMode,
    modifies_flags: bool,
    op_count: u8,
    operands: [3]Operand,
};
