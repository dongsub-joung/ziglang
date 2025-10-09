const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const arr: []const i32 = &.{ 10, 20, 30, 40, 50 };

    for (0.., arr) |idx, item| {
        try stdout.print("element {} is {}\n", .{ idx, item });
    }
}
