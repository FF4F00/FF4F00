```go
package main
import "fmt"

func main() {

	p := func(value interface{}, format string){fmt.Printf(format, value)}
    b := true; p(b, "%v\n")
}
```