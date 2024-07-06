const cs = @import("capstone-c");

pub const AddressMode = enum(cs.mos65xx_address_mode) {
    INVALID,
    ACC,
    X,
    Y,
    P,
    SP,
    DP,
    B,
    K,
    ENDING,
};
