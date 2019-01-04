package main

import "fmt"

func f1() (r int) {
	defer func() {
		r++
	}()
	return 0

}

//r=4, r++ ,r=5
func f2() (r int) {
	defer func() {
		r++
	}()
	r = 4
	return
}

func double(x int) int {
	return x + x
}

func triple(x int) (r int) {
	x = 4
	defer func() {
		fmt.Println("x is :", x)
		fmt.Println("r is :", r)
		r = r + x + 1
		fmt.Println("r is :", r)
	}()
	//r=double(x)
	return double(x)
}

func main() {
	fmt.Println(f1())
	fmt.Println(f2())
	fmt.Println(triple(3))
}
