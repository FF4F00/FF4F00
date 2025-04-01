```go
package main
import ("fmt")

func main() {

	p := func(value ...interface{}) {
    fmt.Println(value...)
}
    const i8MIN   int8   = -128;                 p("i8MIN",   i8MIN        )
    const i8MAX   int8   = 127;                  p("i8MAX",   i8MAX,   "\n")
    
    const ui8MIN  uint8  = 0;                    p("ui8MIN",  ui8MIN       )
    const ui8MAX  uint8  = 255;                  p("ui8MAX",  ui8MAX,  "\n")
    
    const i16MIN  int16  = -32768;               p("i16MIN",  i16MIN       )
    const i16MAX  int16  = 32767;                p("i16MAX",  i16MAX,  "\n")
    
    const ui16MIN uint16 = 0;                    p("ui16MIN", ui16MIN      )
    const ui16MAX uint16 = 65535;                p("ui16MAX", ui16MAX, "\n")
    
    const i32MIN  int32  = -2147483648;          p("i32MIN",  i32MIN       )
    const i32MAX  int32  = 2147483647;           p("i32MAX",  i32MAX,  "\n")
    
    const ui32MIN uint32 = 0;                    p("ui32MIN", ui32MIN      )
    const ui32MAX uint32 = 4294967295;           p("ui32MAX", ui32MAX, "\n")
    
    const i64MIN  int64  = -9223372036854775808; p("i64MIN",  i64MIN       )
    const i64MAX  int64  = 9223372036854775807;  p("i64MAX",  i64MAX,  "\n")
    
    const ui64MIN uint64 = 0;                    p("ui64MIN", ui64MIN      )
    const ui64MAX uint64 = 18446744073709551615; p("ui64MAX", ui64MAX, "\n")
}
```
