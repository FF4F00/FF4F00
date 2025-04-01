# Zig

---

```zig
// PRIMITIVE ––––––––––––––––––––––––––––––
// • –––––––––– • –––––––––– • –––––––––– •
// | B          | C          | F          |
// • –––––––––– • –––––––––– • –––––––––– •
// | I          | S          |            |
// • –––––––––– • –––––––––– • –––––––––– •

const std = @import("std");

pub fn main() void {
    // Signed Integers
    const i8_min: i8 = @minValue(i8);    // -128
    const i8_max: i8 = @maxValue(i8);    // 127
    const i16_min: i16 = @minValue(i16); // -32768
    const i16_max: i16 = @maxValue(i16); // 32767
    const i32_min: i32 = @minValue(i32); // -2147483648
    const i32_max: i32 = @maxValue(i32); // 2147483647
    const i64_min: i64 = @minValue(i64); // -9223372036854775808
    const i64_max: i64 = @maxValue(i64); // 9223372036854775807
    const i128_min: i128 = @minValue(i128); // -170141183460469231731687303715884105728
    const i128_max: i128 = @maxValue(i128); // 170141183460469231731687303715884105727

    // Unsigned Integers
    const u8_min: u8 = @minValue(u8);    // 0
    const u8_max: u8 = @maxValue(u8);    // 255
    const u16_min: u16 = @minValue(u16); // 0
    const u16_max: u16 = @maxValue(u16); // 65535
    const u32_min: u32 = @minValue(u32); // 0
    const u32_max: u32 = @maxValue(u32); // 4294967295
    const u64_min: u64 = @minValue(u64); // 0
    const u64_max: u64 = @maxValue(u64); // 18446744073709551615
    const u128_min: u128 = @minValue(u128); // 0
    const u128_max: u128 = @maxValue(u128); // 340282366920938463463374607431768211455

    // Floating Point Numbers
    const f16_min: f16 = @minValue(f16); // Smallest positive f16
    const f16_max: f16 = @maxValue(f16); // Largest positive f16
    const f32_min: f32 = @minValue(f32); // Smallest positive f32
    const f32_max: f32 = @maxValue(f32); // Largest positive f32
    const f64_min: f64 = @minValue(f64); // Smallest positive f64
    const f64_max: f64 = @maxValue(f64); // Largest positive f64
    const f128_min: f128 = @minValue(f128); // Smallest positive f128
    const f128_max: f128 = @maxValue(f128); // Largest positive f128

    // Boolean
    const true_value: bool = true;
    const false_value: bool = false;

    // Printing Values
    const stdout = std.io.getStdOut().writer();
    _ = stdout.print("i8 range: {d} to {d}\n", .{i8_min, i8_max});
    _ = stdout.print("u8 range: {d} to {d}\n", .{u8_min, u8_max});
    _ = stdout.print("f32 range: {e} to {e}\n", .{f32_min, f32_max});
    _ = stdout.print("Boolean values: true={b}, false={b}\n", .{true_value, false_value});
}


```


