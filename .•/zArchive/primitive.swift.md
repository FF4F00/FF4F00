# Swift

---

```swift
// PRIMITIVE ––––––––––––––––––––––––––––––
// • –––––––––– • –––––––––– • –––––––––– •
// | Bool       | Character  | Float      |
// • –––––––––– • –––––––––– • –––––––––– •
// | Int        | String     |            |
// • –––––––––– • –––––––––– • –––––––––– •

import Foundation

// Integer types
let minInt = Int.min          // Min value for Int (system-dependent 32/64 bit)
let maxInt = Int.max          // Max value for Int (system-dependent 32/64 bit)
print("Int: min=\(minInt), max=\(maxInt)")

let minUInt = UInt.min        // Min value for UInt
let maxUInt = UInt.max        // Max value for UInt
print("UInt: min=\(minUInt), max=\(maxUInt)")

let minInt8 = Int8.min        // Min value for Int8
let maxInt8 = Int8.max        // Max value for Int8
print("Int8: min=\(minInt8), max=\(maxInt8)")

let minUInt8 = UInt8.min      // Min value for UInt8
let maxUInt8 = UInt8.max      // Max value for UInt8
print("UInt8: min=\(minUInt8), max=\(maxUInt8)")

let minInt16 = Int16.min      // Min value for Int16
let maxInt16 = Int16.max      // Max value for Int16
print("Int16: min=\(minInt16), max=\(maxInt16)")

let minUInt16 = UInt16.min    // Min value for UInt16
let maxUInt16 = UInt16.max    // Max value for UInt16
print("UInt16: min=\(minUInt16), max=\(maxUInt16)")

let minInt32 = Int32.min      // Min value for Int32
let maxInt32 = Int32.max      // Max value for Int32
print("Int32: min=\(minInt32), max=\(maxInt32)")

let minUInt32 = UInt32.min    // Min value for UInt32
let maxUInt32 = UInt32.max    // Max value for UInt32
print("UInt32: min=\(minUInt32), max=\(maxUInt32)")

let minInt64 = Int64.min      // Min value for Int64
let maxInt64 = Int64.max      // Max value for Int64
print("Int64: min=\(minInt64), max=\(maxInt64)")

let minUInt64 = UInt64.min    // Min value for UInt64
let maxUInt64 = UInt64.max    // Max value for UInt64
print("UInt64: min=\(minUInt64), max=\(maxUInt64)")

// Floating-point types
let minFloat = Float.leastNormalMagnitude // Smallest positive Float
let maxFloat = Float.greatestFiniteMagnitude // Largest Float
print("Float: min=\(minFloat), max=\(maxFloat)")

let minDouble = Double.leastNormalMagnitude // Smallest positive Double
let maxDouble = Double.greatestFiniteMagnitude // Largest Double
print("Double: min=\(minDouble), max=\(maxDouble)")

// Boolean type
let trueValue: Bool = true
let falseValue: Bool = false
print("Bool: true=\(trueValue), false=\(falseValue)")

// Character type
let someCharacter: Character = "A"
print("Character: example='\(someCharacter)'")


let b:Bool      = true
let c:Character =  "λ"
let f:Float     = 0.42
let i:Int       = 2001
let s:String    = "swift"
```





