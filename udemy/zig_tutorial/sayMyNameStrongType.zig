const std = @import("std");

pub fn main() !void {
    const my_name: []const u8 = "oungDongSub";
    const first_char: u8 = 'J';

    var stdout = std.io.getStdOut().writer();

    try stdout.print("My name is {c}{s}", .{ first_char, my_name });
}
