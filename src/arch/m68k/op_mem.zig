const cs = @import("capstone-c");

const Register = @import("register.zig").Register;

pub const OpMem = extern struct {
    base_reg: Register,
    index_reg: Register,
    in_base_reg: Register,
    in_disp: u32,
    out_disp: u32,
    disp: i16,
    scale: u8,
    bitfield: u8,
    width: u8,
    offset: u8,
    index_size: u8,
};
