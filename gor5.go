package main

import "fmt"
import "time"

func main() {
	c := make(chan int)
	//这里是开一个goroutine去接受发送的 如果没有会报错
	go func() {
		for {
			n := <-c
			fmt.Println(n)
		}
	}()
	c <- 1
	c <- 2
	time.Sleep(time.Millisecond) //①

}
