package main

import (
	"fmt"
)

type R interface {
	Read()
}

type W interface {
	Write(name string)
}

type RW interface {
	R
	W
}

type log struct {
	name []string
	r    int
}

func (t *log) Read() {
	if len(t.name) > t.r {
		fmt.Println(t.name[t.r])
		t.r++
	} else {
		fmt.Println("empty")
	}
}
func (t *log) Write(name string) {
	t.name = append(t.name, name)
	fmt.Println("wirte success.", t.name)

}
func main() {
	//全集可以赋值给子集，结构体赋值给接口
	var r R = &log{}
	var w W = &log{}
	w.Write("write first")
	w.Write("write second")
	r.Read()
	r.Read()
	//判断w 是否实现RW 接口
	_, ok := w.(RW)
	fmt.Println(ok)
	/*
		if !ok {
			fmt.Println("hi")
		} else {
			val.Read()
			val.Read()
		}
	*/
}
