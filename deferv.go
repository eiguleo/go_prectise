package main

import "fmt"

func deferCommon() {
	for i := 0; i < 3; i++ {
		defer fmt.Println(i)
	}
	fmt.Println("done")
}

func main() {
	deferCommon()
	fmt.Println("main end")
}

/*
go run deferv.go
done
2
1
0
main end
*/
