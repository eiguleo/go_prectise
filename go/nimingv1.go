package main

import "fmt"

func main() {

	x, y := func(i, j int) (m, n int) {
		return 0, i + j
	}(1, 9)
	fmt.Println(x, y)

	f := func(a, b int) {
		c := a + b
		fmt.Println(c)

	}
	f(1, 3)

}
