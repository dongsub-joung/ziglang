const std = @import("std");

pub fn main() !void {
    const msg = "hasdf, zig programmmers";

    var stdout = std.io.getStdOut().writer();

    try stdout.print("mesg: {s}\n ", .{msg});
}
