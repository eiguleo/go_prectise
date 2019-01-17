package main

import "fmt"
import "time"

func chanDemo() {
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
func main() {
	chanDemo() //如果没有①则这里输出是1，因为虽然2发过去了但是来不及打印出来就结束了
}
