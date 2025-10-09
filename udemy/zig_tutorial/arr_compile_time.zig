const std = @import("std");

pub fn main() !void {
    const arr: [5]i32 = .{ 1, 2, 3, 4, 5 };

    const stdout = std.io.getStdOut().writer();

    try stdout.print("arr: {any}\n", .{arr});
}
