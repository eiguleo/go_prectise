package main

import "fmt"

type Base struct {
	FirstName, LastName string
	Age                 float32
}

func (base *Base) HasFeet() {
	fmt.Println(base.FirstName + base.LastName + "has feet! Base")
}

func (base *Base) Flying() {
	fmt.Println("Base Can flying!")
}

/*
func (base *Base) Eating() {
	fmt.Println("Base eating...in Base")
}
*/

type Sub struct {
	Base
	Area string
}

func (sub *Sub) Flying() {
	//sub 调用Base中的方法
	sub.Base.Flying()
	fmt.Println("Sub flying")
}

func (sub *Sub) Eating() {
	fmt.Println("Eating in Sub")

}

func main() {
	chk := new(Sub)
	chk.Flying()
	//Sub 中未实现Eating 方法，会调用Base中的同名方法
	chk.Eating()
	chk2 := &Sub{Base{"Bob", "Steven", 2.0}, "China"}

	fmt.Println(chk2.Area)
	chk2.Base.Flying()

	chkbase := new(Base)
	/* base不能调用只在sub中的方法
	chkbase.Eating()
	*/
}
