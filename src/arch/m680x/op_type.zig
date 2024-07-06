const cs = @import("capstone-c");

pub const OpType = enum(cs.m680x_op_type) {
    INVALID,
    REGISTER,
    IMMEDIATE,
    INDEXED,
    EXTENDED,
    DIRECT,
    RELATIVE,
    CONSTANT,
};
