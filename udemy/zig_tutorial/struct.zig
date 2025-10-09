const std = @import("std");

const Person = struct {
    name: []const u8,
    age: u32,
};

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const me = Person{
        .name = "DongSub_Joung",
        .age = 29,
    };

    try stdout.print("name: {s}, age: {d}\n", .{ me.name, me.age });
}
