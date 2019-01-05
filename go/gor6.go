package main

import "fmt"
import "time"

func main() {
	c := make(chan int)
	//这里是开一个goroutine去接受发送的 如果没有会报错
	go func() {
		n := <-c
		fmt.Println(n)

	}()
	c <- 1
	//c <- 2
	time.Sleep(time.Millisecond) //①

	fmt.Println("--------------")
	a := make(chan int)

	go func() {
		a <- 3
	}()

	b := <-a
	fmt.Println(b)

}
