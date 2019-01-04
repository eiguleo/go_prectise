package main

import (
	"fmt"
	"time"
)

// ch(run) -> ch_run (Run) -> re(Run) -> ch(Run) -> chs[i] (main)

func Run(task_id, sleeptime, timeout int, ch chan string) {
	ch_run := make(chan string)
	go run(task_id, sleeptime, ch_run)
	select {
	case re := <-ch_run:
		ch <- re
	case <-time.After(time.Duration(timeout) * time.Second):
		re := fmt.Sprintf("task id %d , timeout", task_id)
		ch <- re
	}
}

//task_id is i,sleeptime is key   of input[]
func run(task_id, sleeptime int, ch chan string) {

	time.Sleep(time.Duration(sleeptime) * time.Second)
	ch <- fmt.Sprintf("task id %d , sleep %d second", task_id, sleeptime)
	return
}

func main() {
	input := []int{3, 2, 1}
	timeout := 2
	chLimit := make(chan bool, 1)
	chs := make([]chan string, len(input))
	limitFunc := func(chLimit chan bool, ch chan string, task_id, sleeptime, timeout int) {
		Run(task_id, sleeptime, timeout, ch)
		<-chLimit
	}
	startTime := time.Now()
	fmt.Println("Multirun start")
	//通过for新建chanel chs[i]
	for i, sleeptime := range input {
		chs[i] = make(chan string, 1)
		/*

			当创建的 goroutine 数量到达 chLimit 的缓冲区上限后。主 goroutine 就挂起阻塞了，直到这些 goroutine 执行完毕，消费掉了 chLimit 缓冲区中的数据，程序才会继续创建新的 goroutine。我们并发数量限制的目的也就达到了
		*/
		chLimit <- true
		//
		go limitFunc(chLimit, chs[i], i, sleeptime, timeout)
	}

	for _, ch := range chs {
		fmt.Println(<-ch)
	}
	endTime := time.Now()
	fmt.Printf("Multissh finished. Process time %s. Number of task is %d\n", endTime.Sub(startTime), len(input))
}
