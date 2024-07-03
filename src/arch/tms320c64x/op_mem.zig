pub const OpMem = extern struct {
    base: c_uint,
    disp: c_uint,
    unit: c_uint,
    scaled: c_uint,
    disptype: c_uint,
    direction: c_uint,
    modify: c_uint,
};
