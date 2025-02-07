pub const System = struct {
    volume: u64,
    managed: u8,
    remained_time: u8,
};

const std = @import("std");
const stdout = std.io.getStdOut().writer();
const stdin = std.io.getStdIn().reader();
pub fn main() !void {
    // IO - https://pedropark99.github.io/zig-book/Chapters/12-file-op.html
    const C = "Create";
    const R = "Read";
    const U = "Update";
    const D = "Delete";
    try stdout.print("System 1. {s} \n", .{C});
    try stdout.print("System 2. {s} \n", .{R});
    try stdout.print("System 3. {s} \n", .{U});
    try stdout.print("System 4. {s} \n", .{D});

    var buffer: [10]u8 = undefined;
    @memset(buffer[0..], 0);
    _ = try stdin.readUntilDelimiterOrEof(buffer[0..], '\n');
    try stdout.print(
        "{s}{s}\n",
        .{ buffer, C },
    );
}
