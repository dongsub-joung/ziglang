pub fn add(a: i32, b: i32) i32 {
    return (a + b);
}

pub fn abstract(a: i32, b: i32) i32 {
    var nesty_a = a;
    var nesty_b = b;

    if (nesty_a < nesty_b) {
        var temp: i32 = 0;
        temp = nesty_a;
        nesty_a = nesty_b;
        nesty_b = temp;

        return (nesty_a - nesty_b) * -1;
    } else {
        return a - b;
    }
}

pub fn multiple(a: i32, b: i32) i32 {
    return a * b;
}

pub fn divid(a: i32, b: i32) i32 {
    if (a == 0) {
        @panic("dividing zero");
    }
    if (b == 0) {
        @panic("dividing zero");
    }

    return @divTrunc(a, b);
}

test "testing Add" {
    try std.testing.expectEqual(3, add(1, 2));
}

test "Tesing Abstract a>b" {
    try std.testing.expectEqual(1, abstract(2, 1));
}
test "Testing Abstract a<b" {
    try std.testing.expectEqual(-1, abstract(1, 2));
}

test "Testing multiple " {
    try std.testing.expectEqual(6, multiple(2, 3));
}

test "Testing divid" {
    try std.testing.expectEqual(@divTrunc(10, 3), 3);
}

test "Testing dividing by zero" {
    const MyError = error{DivideByZero};
    try std.testing.expectError(MyError.DivideByZero, divid(10, 0));
}

const std = @import("std");

/// This imports the separate module containing `root.zig`. Take a look in `build.zig` for details.
const lib = @import("q01_lib");
