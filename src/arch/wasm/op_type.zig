const cs = @import("capstone-c");

pub const OpType = enum(cs.wasm_op_type) {
    INVALID,
    NONE,
    INT7,
    VARUINT32,
    VARUINT64,
    UINT32,
    UINT64,
    IMM,
    BRTABLE,
};
