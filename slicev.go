package main

import "fmt"

//---------1
var slice1 []int

//slice1 = []int{1,2,3} -- 不能声明后赋值

//-------2 声明和赋值可以一起
var slice2 = []int{1, 2, 3, 4}

//---make slice global 声明，函数中赋值
var slic4 []int = make([]int, 4)

func main() {
	slice1 = []int{1, 2, 3}
	//---先声明后赋值
	var slic3 []int
	slic3 = []int{1, 2, 34}
	//----4
	//var slic4 []int = make([]int, 4)
	slic4 = []int{1, 2, 3, 4}
	//----5
	var slice5 = []int{1, 2, 3, 4, 5}
	//-----6
	slice6 := []int{5, 6}

	var arr1 = [8]int{1, 2, 3, 4, 5, 6, 7, 8}
	slice7 := arr1[:6]
	slice8 := slice7[2:4]

	fmt.Println(slice1, slice2, slic3, slic4, slice5, slice6, arr1, slice7, slice8)

}
