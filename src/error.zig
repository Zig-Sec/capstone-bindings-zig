usingnamespace @cImport({
    @cInclude("capstone/capstone.h");
});

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
