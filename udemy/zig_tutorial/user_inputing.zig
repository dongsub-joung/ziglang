const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    try stdout.print("your value", .{});

    var buff: [256]u8 = undefined;
    const user_input_slice = try stdin.readUntilDelimiter(&buff, '\n');

    const trimed = std.mem.trim(u8, user_input_slice, "\r");

    try stdout.print("inputed: {s}\n", .{trimed});
}
