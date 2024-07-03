pub const OpMem = extern struct {
    base: u8,
    index: u8,
    disp: i32,
    direct: c_int,
};
