# Go

---

```go
// PRIMITIVE ––––––––––––––––––––––––––––––
// • –––––––––– • –––––––––– • –––––––––– •
// | B          | C          | F          |
// • –––––––––– • –––––––––– • –––––––––– •
// | I          | S          |            |
// • –––––––––– • –––––––––– • –––––––––– •

package main

import (
	"fmt"
	"math"
)

func main() {
	// Unsigned integer types
	var u uint = 0                         // Minimum for uint
	var maxUint = ^uint(0)                 // Maximum for uint
	fmt.Printf("uint: min = %d, max = %d\n", u, maxUint)

	var u8 uint8 = 0                       // Minimum for uint8
	var maxUint8 uint8 = math.MaxUint8     // Maximum for uint8
	fmt.Printf("uint8: min = %d, max = %d\n", u8, maxUint8)

	var u16 uint16 = 0                     // Minimum for uint16
	var maxUint16 uint16 = math.MaxUint16  // Maximum for uint16
	fmt.Printf("uint16: min = %d, max = %d\n", u16, maxUint16)

	var u32 uint32 = 0                     // Minimum for uint32
	var maxUint32 uint32 = math.MaxUint32  // Maximum for uint32
	fmt.Printf("uint32: min = %d, max = %d\n", u32, maxUint32)

	var u64 uint64 = 0                     // Minimum for uint64
	var maxUint64 uint64 = math.MaxUint64  // Maximum for uint64
	fmt.Printf("uint64: min = %d, max = %d\n", u64, maxUint64)

	// Signed integer types
	var i int = math.MinInt                // Minimum for int
	var maxInt = math.MaxInt               // Maximum for int
	fmt.Printf("int: min = %d, max = %d\n", i, maxInt)

	var i8 int8 = math.MinInt8             // Minimum for int8
	var maxInt8 int8 = math.MaxInt8        // Maximum for int8
	fmt.Printf("int8: min = %d, max = %d\n", i8, maxInt8)

	var i16 int16 = math.MinInt16          // Minimum for int16
	var maxInt16 int16 = math.MaxInt16     // Maximum for int16
	fmt.Printf("int16: min = %d, max = %d\n", i16, maxInt16)

	var i32 int32 = math.MinInt32          // Minimum for int32
	var maxInt32 int32 = math.MaxInt32     // Maximum for int32
	fmt.Printf("int32: min = %d, max = %d\n", i32, maxInt32)

	var i64 int64 = math.MinInt64          // Minimum for int64
	var maxInt64 int64 = math.MaxInt64     // Maximum for int64
	fmt.Printf("int64: min = %d, max = %d\n", i64, maxInt64)

	// Floating point types
	var f32 float32 = math.SmallestNonzeroFloat32 // Minimum for float32
	var maxFloat32 float32 = math.MaxFloat32      // Maximum for float32
	fmt.Printf("float32: min = %e, max = %e\n", f32, maxFloat32)

	var f64 float64 = math.SmallestNonzeroFloat64 // Minimum for float64
	var maxFloat64 float64 = math.MaxFloat64      // Maximum for float64
	fmt.Printf("float64: min = %e, max = %e\n", f64, maxFloat64)

	// Aliases
	var b byte = 0                        // Alias for uint8
	var maxByte byte = math.MaxUint8
	fmt.Printf("byte: min = %d, max = %d\n", b, maxByte)

	var r rune = math.MinInt32            // Alias for int32
	var maxRune rune = math.MaxInt32
	fmt.Printf("rune: min = %d, max = %d\n", r, maxRune)

	// Boolean type
	var bl bool = true                    // 1-bit represents true/false
	fmt.Printf("bool: example = %v\n", bl)
}

```

