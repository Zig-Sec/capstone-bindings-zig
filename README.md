# capstone-bindings-zig

## Introduction
Capstone natively works with Zig because of `translate-c`, but i always find it more pleasent to use
Zig's features whenever i write anything, so i decided to create those bindings.

## Example
Simple example, i believe i snatched it from some of the tests in capstone itself.

## Remarks
> [!WARNING]
> The bindings are still work in progress, but x86 architecture should work already!
> Maybe even others, not sure haven't tested the others yet.

## Future plans
The API is probably not 100% as i want it yet, so changes are to be expected, and that's where especially you,
the user comes into play. If you have ideas on how to improve the API design, don't shy away from creating an
issue.

## Example
```zig
const std = @import("std");
const cs = @import("capstone-z");

const CODE = "\x55\x48\x8b\x05\xb8\x13\x00\x00\xe9\xea\xbe\xad\xde\xff\x25\x23\x01\x00\x00\xe8\xdf\xbe\xad\xde\x74\xff";

pub fn main() !void {
    try cs.setup.initCapstone(std.heap.page_allocator);

    var handle = try cs.open(cs.Arch.X86, cs.Mode.@"64");
    defer cs.close(&handle) catch |e| {
        std.debug.print("handle not closed cuz: {any}\n", .{e});
        unreachable;
    };

    const disass = try cs.disasm(handle, CODE, 0x1000, 0);
    defer cs.free(disass);

    for (disass, 0..) |insn, i| {
        std.debug.print("{d}: {*}: 0x{x}\t{s}\t{s}\n", .{ i, &disass.ptr[i], insn.address, insn.mnemonic, insn.op_str });
    }
}
```

that gives the following output:
```
0: src.insn.Insn@7feca4d0b000: 0x1000   push    rbp
1: src.insn.Insn@7feca4d0b0f8: 0x1001   mov     rax, qword ptr [rip + 0x13b8]
2: src.insn.Insn@7feca4d0b1f0: 0x1008   jmp     0xffffffffdeadcef7
3: src.insn.Insn@7feca4d0b2e8: 0x100d   jmp     qword ptr [rip + 0x123]
4: src.insn.Insn@7feca4d0b3e0: 0x1013   call    0xffffffffdeadcef7
5: src.insn.Insn@7feca4d0b4d8: 0x1018   je      0x1019
```

## License
I am not an expert on licenses, but from my understanding bindings can have a different license.
So if you're using it in your project, make sure to actually verify that it is compatible with the
actual [capstone license](https://github.com/capstone-engine/capstone#License).
