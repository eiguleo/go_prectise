package main

import "fmt"

func main() {
	ii := 1
	f1 := func(int) int {
		ii = 0
		defer fmt.Println(ii)
		ii++
		return ii
	}
	fmt.Println("f1(2)---------")
	f1(2)
	//	fmt.Println("----print f1(2)")
	//	fmt.Println(f1(2))

}
