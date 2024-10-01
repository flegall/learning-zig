const std = @import("std");
const expect = std.testing.expect;
const expectEqual = std.testing.expectEqual;

test "always succeeds" {
    try expect(true);
}

test "assigning to a variable" {
    var variable: u32 = 5000; // unsigned 32-bit variable

    variable = 2;
}

test "arrays" {
    const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
    const b = [_]u8{ 'w', 'o', 'r', 'l', 'd' };
    // std.debug.print("{d} - {d}\n", .{ a, b });

    try expect(a.len == 5);
    try expect(b.len == 5);
}

test "if statement" {
    const a = true;
    var x: u16 = 0;
    if (a) {
        x += 1;
    } else {
        x += 2;
    }
    try expectEqual(x, 1);
}

test "if statement expression" {
    const a = true;
    var x: u16 = 0;
    x += if (a) 1 else 2;
    try expectEqual(x, 1);
}

test "while" {
    var i: u8 = 2;
    while (i < 100) {
        i *= 2;
    }
    try expectEqual(i, 128);
}
