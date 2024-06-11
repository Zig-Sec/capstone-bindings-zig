pub const cs = @import("capstone-c");

pub const CapstoneError = error{
    Memory,
    Arch,
    Handle,
    Csh,
    Mode,
    Option,
    Detail,
    MemSetup,
    Version,
    Diet,
    SkipData,
    X86_ATT,
    X86_INTEL,
    X86_MASM,
};

pub fn toError(err: c_uint) ?CapstoneError {
    return switch (err) {
        1 => CapstoneError.Memory,
        2 => CapstoneError.Arch,
        3 => CapstoneError.Handle,
        4 => CapstoneError.Csh,
        5 => CapstoneError.Mode,
        6 => CapstoneError.Option,
        7 => CapstoneError.Detail,
        8 => CapstoneError.MemSetup,
        9 => CapstoneError.Version,
        10 => CapstoneError.Diet,
        11 => CapstoneError.SkipData,
        12 => CapstoneError.X86_ATT,
        13 => CapstoneError.X86_INTEL,
        14 => CapstoneError.X86_MASM,
        else => null,
    };
}

pub fn fromError(err: CapstoneError) c_uint {
    return switch (err) {
        CapstoneError.Memory => 1,
        CapstoneError.Arch => 2,
        CapstoneError.Handle => 3,
        CapstoneError.Csh => 4,
        CapstoneError.Mode => 5,
        CapstoneError.Option => 6,
        CapstoneError.Detail => 7,
        CapstoneError.MemSetup => 8,
        CapstoneError.Version => 9,
        CapstoneError.Diet => 10,
        CapstoneError.SkipData => 11,
        CapstoneError.X86_ATT => 12,
        CapstoneError.X86_INTEL => 13,
        CapstoneError.X86_MASM => 14,
    };
}
