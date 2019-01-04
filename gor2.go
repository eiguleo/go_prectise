package main

import (
	"fmt"
	"time"
)

func run(task_id, sleeptime int, ch chan string) {

	time.Sleep(time.Duration(sleeptime) * time.Second)
	ch <- fmt.Sprintf("task id %d , sleep %d second", task_id, sleeptime)
	return
}

func main() {
	input := []int{3, 2, 1}
	ch := make(chan string)
	startTime := time.Now()
	fmt.Println("Multirun start")
	for i, sleeptime := range input {
		go run(i, sleeptime, ch)
	}

	for range input {
		fmt.Println(<-ch)
	}

	endTime := time.Now()
	fmt.Printf("Multissh finished. Process time %s. Number of tasks is %d\n\n", endTime.Sub(startTime), len(input))

	chs := make([]chan string, len(input))
	startTime1 := time.Now()
	fmt.Println("Multirun start")
	for i, sleeptime := range input {
		chs[i] = make(chan string)
		go run(i, sleeptime, chs[i])
	}

	for _, ch := range chs {
		fmt.Println(<-ch)
	}

	endTime1 := time.Now()
	fmt.Printf("Multissh finished. Process time %s. Number of tasks is %d\n", endTime1.Sub(startTime1), len(input))

}
