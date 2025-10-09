const std = @import("std");

const Person = struct {
    name: []const u8,
    age: u32,
};

pub fn get_person() Person {
    const me = Person{
        .name = "DongSub_Joung",
        .age = 29,
    };

    return me;
}

test "testing" {
    const result = get_person();
    const expect = Person{
        .name = "DongSub_Joung",
        .age = 29,
    };

    try std.testing.expectEqual(expect, result);
}
