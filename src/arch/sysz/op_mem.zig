pub const OpMem = extern struct {
    base: u8,
    index: u8,
    length: u64,
    disp: i64,
};
