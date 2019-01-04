package main

import "fmt"

// Greeting function types
type Greeting func(name string) string

// 给函数类型增加方法
func (g Greeting) say(n string) {
	fmt.Println(g(n))
}

//同类型函数1
func english(name string) string {
	return "Hello, " + name
}

//同类型函数2
func french(name string) string {
	return "Bonjour, " + name
}

func main() {
	// 通过函数类型名和实现函数名初始化函数
	g := Greeting(english)
	g.say("World")
	g = Greeting(french)
	g.say("World")
}
