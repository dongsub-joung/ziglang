const std = @import("std");

pub fn main() void {
    const my_name = "JoungDongSub";

    std.debug.print("My name is {s}\n", .{my_name});
}
