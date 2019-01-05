package main

import (
	"fmt"
)

/*
n1=7
num=2+7=9

*/

func getStatus(n1 int) (num int) {
	// num是在返回值中定义的变量
	num = 2 + n1
	defer func() {
		num++
		fmt.Println("num in defer is:", num)
	}()
	fmt.Println("num is:", num)
	fmt.Println("num + 3 in getStatus is :", num+3)
	/*
			return num=num+3=12
			defer num=num+1=13
			return -> num(return value) -> num++ -> getStatus (return completely)
		return 将后边表达式给返回值num，执行defer，num+1修改num，返回num给调用者
	*/
	return num + 3
}

func getStatus1(n1 int) (num int) {
	// num是在返回值中定义的变量
	num = 2 + n1
	defer func() {
		num++
		fmt.Println("num in defer is:", num)
	}()
	fmt.Println("num is:", num)
	return num
}

func voh(n int) (m int) {
	m = 77
	fmt.Println(n)
	return 99
}

func main() {
	fmt.Println(getStatus(7))
	voh(5)
	fmt.Println(voh(6))
	fmt.Println(getStatus1(7))
	func() {
		i := 0
		defer fmt.Println(i)
		i++
		return
	}()
}
