pub const User= struct {
    power: u64= 0,
    name: []const u8,

    pub const SUPER_POWER= 9000;

    fn diagnose(user: User) void{
        if(user.power >= SUPER_POWER){
            std.debug.print("it's over {d}!!", .{SUPER_POWER});
        }
    l;
}
