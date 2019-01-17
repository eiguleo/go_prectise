package main

import (
	"fmt"
)

//----global 1
var arr1 [3]int

//arr1[0]=1  --error
//------------ global 2
var arr2 [2]int = [2]int{1, 3}

func main() {
	//one
	var arr_name [2]int
	arr_name[0] = 1
	a := arr_name[0]
	//two
	var arrv_name = [3]int{1, 2, 4}
	b := arrv_name[2]
	//three
	arrc := [3]int{4, 5, 6}
	c := arrc[2]
	//four

	d := arr2[1]
	fmt.Println(a, b, c)
	//----------glocal arr test

}
