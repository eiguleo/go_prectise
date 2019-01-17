package main

import (
	"fmt"
	"math/rand"
	//"time"
)

func main() {
	rand.Seed(5)
	var z []int
	for i := 0; i < 10; i++ {
		z = append(z, rand.Intn(100))

	}
	sort(z)
	fmt.Println(z)
}
func sort(list []int) {
	if len(list) <= 1 {
		return //退出条件
	}
	i, j := 0, len(list)-1
	index := 1     //表示第一次比较的索引位置.
	key := list[0] //第一次比较的参考值.这里选择第一个数
	if list[index] > key {
		list[i], list[j] = list[j], list[i]
		j-- //表示取大值跟末尾的数替换位置,使大于参考值的数在后面
	} else {
		list[i], list[index] = list[index], list[i]
		i++ //表示取小的值跟前面的替换位置,使小于参考值的数在前面
		index++
	}
	sort(list[:i])   //处理参考值前面的数组
	sort(list[i+1:]) //处理参考值后面的数组
}
