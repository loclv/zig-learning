const std = @import("std");

pub const User = struct {
    power: u16,
    name: []const u8,
};

// This code won't compile if `main` isn't `pub` (public)
pub fn main() void {
    const user = User{
        .power = 9001,
        .name = "Goku",
    };

    std.debug.print("{s}'s power is {d}\n", .{ user.name, user.power });
}
