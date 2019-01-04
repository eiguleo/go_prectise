package main

import "fmt"

/*
Go 语言提供了另外一种数据类型即接口，它把所有的具有共性的方法定义在一起
任何其他类型只要实现了这些方法就是实现了这个接口,通过该接口初始化一个实体
实体可以调用接口中的方法
*/

//定义接口
type Phone interface {
	call()
}

//定义结构体
type IPhone struct {
}

type NokiaPhone struct {
}

//类型增加方法，该方法实现了Phone接口中的方法，也就是实现了这个接口
func (iph IPhone) call() {
	fmt.Println("I am IPhone")
}

func (nok NokiaPhone) call() {
	fmt.Println("I and NokiaPhone")
}

func main() {
	var phone Phone
	//通过接口新建实例,规则是new（类型）赋值给接口类型
	phone = new(IPhone)
	phone.call()
	phone = new(NokiaPhone)
	phone.call()
}
