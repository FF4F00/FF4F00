# Rust

---

```rust
// PRIMITIVE ––––––––––––––––––––––––––––––
// • –––––––––– • –––––––––– • –––––––––– •
// | B          | C          | F          |
// • –––––––––– • –––––––––– • –––––––––– •
// | I          | S          |            |
// • –––––––––– • –––––––––– • –––––––––– •

fn main() {
    // Signed integers
    let signed_i8_min: i8 = i8::MIN;
    let signed_i8_max: i8 = i8::MAX;
    println!("i8: min = {}, max = {}", signed_i8_min, signed_i8_max);

    let signed_i16_min: i16 = i16::MIN;
    let signed_i16_max: i16 = i16::MAX;
    println!("i16: min = {}, max = {}", signed_i16_min, signed_i16_max);

    let signed_i32_min: i32 = i32::MIN;
    let signed_i32_max: i32 = i32::MAX;
    println!("i32: min = {}, max = {}", signed_i32_min, signed_i32_max);

    let signed_i64_min: i64 = i64::MIN;
    let signed_i64_max: i64 = i64::MAX;
    println!("i64: min = {}, max = {}", signed_i64_min, signed_i64_max);

    let signed_i128_min: i128 = i128::MIN;
    let signed_i128_max: i128 = i128::MAX;
    println!("i128: min = {}, max = {}", signed_i128_min, signed_i128_max);

    let signed_isize_min: isize = isize::MIN;
    let signed_isize_max: isize = isize::MAX;
    println!("isize: min = {}, max = {}", signed_isize_min, signed_isize_max);

    // Unsigned integers
    let unsigned_u8_min: u8 = u8::MIN;
    let unsigned_u8_max: u8 = u8::MAX;
    println!("u8: min = {}, max = {}", unsigned_u8_min, unsigned_u8_max);

    let unsigned_u16_min: u16 = u16::MIN;
    let unsigned_u16_max: u16 = u16::MAX;
    println!("u16: min = {}, max = {}", unsigned_u16_min, unsigned_u16_max);

    let unsigned_u32_min: u32 = u32::MIN;
    let unsigned_u32_max: u32 = u32::MAX;
    println!("u32: min = {}, max = {}", unsigned_u32_min, unsigned_u32_max);

    let unsigned_u64_min: u64 = u64::MIN;
    let unsigned_u64_max: u64 = u64::MAX;
    println!("u64: min = {}, max = {}", unsigned_u64_min, unsigned_u64_max);

    let unsigned_u128_min: u128 = u128::MIN;
    let unsigned_u128_max: u128 = u128::MAX;
    println!("u128: min = {}, max = {}", unsigned_u128_min, unsigned_u128_max);

    let unsigned_usize_min: usize = usize::MIN;
    let unsigned_usize_max: usize = usize::MAX;
    println!("usize: min = {}, max = {}", unsigned_usize_min, unsigned_usize_max);

    // Floating-point numbers
    let float_f32_min: f32 = f32::MIN;
    let float_f32_max: f32 = f32::MAX;
    println!("f32: min = {}, max = {}", float_f32_min, float_f32_max);

    let float_f64_min: f64 = f64::MIN;
    let float_f64_max: f64 = f64::MAX;
    println!("f64: min = {}, max = {}", float_f64_min, float_f64_max);

    // Boolean values
    let boolean_true: bool = true;
    let boolean_false: bool = false;
    println!("Boolean values: true = {}, false = {}", boolean_true, boolean_false);

    // Character
    let single_char: char = 'a';
    println!("char: {}", single_char);
}

```




