# Swift

---

```swift
# OPERATORS ––––––––––––––––––––––––––––––
# ––––––––––––––––––––––––––––– arithmetic
# • –––––––––– • –––––––––– • –––––––––– •
# | +          | -          | *          |
# • –––––––––– • –––––––––– • –––––––––– •
# | /          | %          |            |
# • –––––––––– • –––––––––– • –––––––––– •
# ––––––––––––––––––––––––––––– comparison
# • –––––––––– • –––––––––– • –––––––––– •
# | ==         | !=         | >          |
# • –––––––––– • –––––––––– • –––––––––– •
# | <          | >=         | <=         |
# • –––––––––– • –––––––––– • –––––––––– •
# –––––––––––––––––––––––––––––––– logical
# • –––––––––– • –––––––––– • –––––––––– •
# | and         | or         | !          |
# • –––––––––– • –––––––––– • –––––––––– •
# | <          | >=         | <=         |
# • –––––––––– • –––––––––– • –––––––––– •
# –––––––––––––––––––––––––––––––– bitwise
# • –––––––––– • –––––––––– • –––––––––– •
# | &          | |          | ^          |
# • –––––––––– • –––––––––– • –––––––––– •
# | ~          | <<         | >>         |
# • –––––––––– • –––––––––– • –––––––––– •
# ––––––––––––––––––––––––––––– assignment
# • –––––––––– •
# | =          |
# • –––––––––– •
```


``` swift
let match = { (x: Int) -> Bool in return x == 10 }                 // (=)
let pin_match = { (x: Int) -> Int in return x }                    // (^=)

let mul = { (x: Double) -> Double in return x * 2.0 }              // (*)
let div = { (x: Double) -> Double in return 4.0 / x }              // (/)
let add = { (x: Int)    -> Int    in return x + 1024}              // (+)
let sub = { (x: Int)    -> Int    in return 2048 - x}              // (-)

let gt = { (x: Int, y: Int) -> Bool in return  x > y }             // (>)
let lt = { (x: Int, y: Int) -> Bool in return  x < y }             // (<)
let eq = { (x: Int, y: Int) -> Bool in return x == y }             // (==)
let gq = { (x: Int, y: Int) -> Bool in return x >= y }             // (>=)
let lq = { (x: Int, y: Int) -> Bool in return x <= y }             // (<=)
let nq = { (x: Int, y: Int) -> Bool in return x != y }             // (!=)

let nd = { (x: String) -> Bool in return x == "s" && "s" == "rs" } // (&&)
let ro = { (x: String) -> Bool in return x == "s" || "s" == "rs" } // (||)

let bnd = { (x: Int, y: Int) -> Int in return  x & y }             // (&&&)
let bor = { (x: Int, y: Int) -> Int in return  x | y }             // (|||)
let bxr = { (x: Int, y: Int) -> Int in return  x ^ y }             // (^^^)
let bsl = { (x: Int, y: Int) -> Int in return x << y }             // (<<<)
let bsr = { (x: Int, y: Int) -> Int in return x >> y }             // (>>>)
```
