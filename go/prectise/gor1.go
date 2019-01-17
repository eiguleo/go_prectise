package main

import (
	"fmt"
	"time"
)

func main() {
	go newTask() //新建一个goroutine
	for {
		fmt.Println("this is a main goroutine.")
		time.Sleep(time.Second)
	}
}

func newTask() {
	for {
		fmt.Println("this is a new Task.")
		time.Sleep(time.Second) //延时1s
	}
}
