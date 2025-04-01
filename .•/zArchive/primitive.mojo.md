# Mojo

```
from utils.numerics import *
```
```
# PRIMITIVE ––––––––––––––––––––––––––––––
# • –––––––––– • –––––––––– • –––––––––– •
# | Bool       | Float32    | Int32      |
# • –––––––––– • –––––––––– • –––––––––– •

var b: Bool    = True; print(b,"\n")
var f: Float32 = 42.0; print(f,"\n")
var i: Int32   = 2001; print(i,"\n")
```
```
fn FloatMinMax[dtype: DType]():
    print("Float MIN", min_finite[dtype](),"\nFloat MAX", max_finite[dtype](),"\n")

FloatMinMax[DType.float16]()
FloatMinMax[DType.float32]()
FloatMinMax[DType.float64]()
```
```
fn IntMinMax[dtype: DType]():
    print("Int MIN", min_finite[dtype](),"\nInt MAX", max_finite[dtype](),"\n")

IntMinMax[DType.int8]()
IntMinMax[DType.int16]()
IntMinMax[DType.int32]()
IntMinMax[DType.int64]()
```
```
fn UIntMinMax[dtype: DType]():
    print("UInt MIN", min_finite[dtype](),"\nUInt MAX", max_finite[dtype](),"\n")

UIntMinMax[DType.uint8]()
UIntMinMax[DType.uint16]()
UIntMinMax[DType.uint32]()
UIntMinMax[DType.uint64]()
```


put all examples in same code block provide examples of type declarations for show min, max examples for each numeric type, use built in min, max if available/supported
==Mojo==
Signed Integer Int8, Int16, Int32, Int64, Int128
Unsigned UInt8, UInt16, UInt32, UInt64, UInt128
Float16,Float32,Float64, Float128
Bool

