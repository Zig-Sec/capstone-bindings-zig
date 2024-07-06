const Register = @import("register.zig").Register;

pub const OpIdx = extern struct {
    base_reg: Register,
    offset_reg: Register,
    offset: i16,
    offset_addr: u16,
    offset_bits: u8,
    inc_dec: i8,
    flags: u8,
};
