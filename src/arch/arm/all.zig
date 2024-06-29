const cs = @import("capstone-c");

const VectorData = @import("vectordata.zig").VectorData;
const Cps = @import("cps.zig");
const Cc = @import("cc.zig").Cc;
const Barrier = @import("barrier.zig").Barrier;
const Operands = @import("operands.zig").Operands;

pub const Arch = extern struct {
    usermode: bool,
    vector_size: c_uint,
    vector_data: VectorData,
    cps_mode: Cps.Mode,
    cps_flag: Cps.Flag,
    cc: Cc,
    update_flags: bool,
    writeback: bool,
    post_index: bool,
    mem_barrier: Barrier,
    op_count: u8,
    operands: [36]Operands,
};
