# Kotlin
---

```kotlin
// PRIMITIVE ––––––––––––––––––––––––––––––
// • –––––––––– • –––––––––– • –––––––––– •
// | Boolean        | Char          | Float          |
// • –––––––––– • –––––––––– • –––––––––– •
// | Int          | S          |            |
// • –––––––––– • –––––––––– • –––––––––– •

fun main() {
    // Byte - 8 bit signed integer
    val minByte: Byte = Byte.MIN_VALUE
    val maxByte: Byte = Byte.MAX_VALUE
    println("Byte: Min = $minByte, Max = $maxByte")

    // Short - 16 bit signed integer
    val minShort: Short = Short.MIN_VALUE
    val maxShort: Short = Short.MAX_VALUE
    println("Short: Min = $minShort, Max = $maxShort")

    // Int - 32 bit signed integer
    val minInt: Int = Int.MIN_VALUE
    val maxInt: Int = Int.MAX_VALUE
    println("Int: Min = $minInt, Max = $maxInt")

    // Long - 64 bit signed integer
    val minLong: Long = Long.MIN_VALUE
    val maxLong: Long = Long.MAX_VALUE
    println("Long: Min = $minLong, Max = $maxLong")

    // Char - 16 bit Unicode character
    val minChar: Char = Char.MIN_VALUE // '\u0000'
    val maxChar: Char = Char.MAX_VALUE // '\uffff'
    println("Char: Min = $minChar (Unicode: ${minChar.code}), Max = $maxChar (Unicode: ${maxChar.code})")

    // Boolean - 1-bit true/false
    val trueValue: Boolean = true
    val falseValue: Boolean = false
    println("Boolean: True = $trueValue, False = $falseValue")
}

```

### Kotlin Primitive Data Types



In Kotlin, the following are the basic primitive data types:
























float  - 32 bit floating point number
double - 64 bit floating point number



Char
**Float**: Example: `val pi: Float = 3.14f;`
**Double**: Example: `val e: Double = 2.71;`
**Boolean**: Example: `val isAdmin: Boolean = true;`

**Int**: Example: `val x: Int = 10;`
**Long**: Example: `val y: Long = 2000000000L;`
**Byte**: Example: `val z: Byte = 100;`
**Short**: Example: `val w: Short = -50;`


UByte
UShort
UInt
ULong


Memory Management 

Rust
### **Raw Pointer Types**

1. **`*const T`** and **`*mut T`**
    
    - Represents raw pointers to a constant or mutable value of type `T`.
