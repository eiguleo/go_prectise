package main

import "fmt"

var mapv1 map[string]string

//var mp5=make(map[string]
//----在glocal中赋值失败mapv1=map[string]string{"a": "apple", "b": "banana"}
func main() {
	//global中声明，函数中赋值
	mapv1 = map[string]string{"mpv1": "apple", "b": "banana"}
	// declare and =
	var mapv2 map[string]string
	mapv2 = map[string]string{"mpv2": "char"}

	// 先声明map
	var m1 map[string]string
	// 再使用make函数创建一个非nil的map，nil map不能赋值
	m1 = make(map[string]string)
	// 最后给已声明的map赋值
	m1["a"] = "aa"
	m1["b"] = "bb"

	// 直接创建
	m2 := make(map[string]string)
	// 然后赋值
	m2["a"] = "aa"
	m2["b"] = "bb"

	// 初始化 + 赋值一体化
	m3 := map[string]string{
		"a": "aa",
		"b": "bb",
	}

	// ==========================================
	// 查找键值是否存在
	if v, ok := m1["a"]; ok {
		fmt.Println(v)
	} else {
		fmt.Println("Key Not Found")
	}

	// 遍历map
	for k, v := range m1 {
		fmt.Println(k, v)
	}

	fmt.Println(mapv1, mapv2, m1, m2, m3)

}
