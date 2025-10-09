const std = @import("std");

pub fn main() !void {
    var num: i32 = 1;
    const limit: i32 = 10;

    const stdout = std.io.getStdOut().writer();

    while (num <= limit) {
        if (@rem(num, 2) == 0) {
            try stdout.print("{} is even\n", .{num});
        } else {
            try stdout.print("{d} is odd\n", .{num});
        }
        num += 1;
    }
}
