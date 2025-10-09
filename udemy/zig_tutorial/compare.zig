const std = @import("std");

pub fn main() void {
    const a: i32 = 10;
    const b: i32 = 20;

    const stdout = std.io.getStdOut().writer();

    stdout.print("a > b: {}\n", .{a > b}) catch {};
}
