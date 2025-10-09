const std = @import("std");

pub fn main() !void {
    var cnt: usize = 1;

    const stdout = std.io.getStdOut().writer();

    while (cnt <= 5) {
        try stdout.print("hi {d}\n", .{cnt});
        cnt += 1;
    }
}
