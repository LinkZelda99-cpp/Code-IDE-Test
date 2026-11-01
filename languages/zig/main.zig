const std = @import("std");
pub fn main() void {
  const values = [_]i32{ 3, 1, 4, 1, 5, 9 };
  var total: i32 = 0;
  for (values) |value| total += value;
  std.debug.print("Hello from Zig\nsum: {d}\n", .{total});
}
