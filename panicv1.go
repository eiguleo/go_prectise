package main

//import "os"
import "fmt"

func goodnight() {
	fmt.Println("GoodNight")
}

func goodbye() {
	fmt.Println("Goodbye")
}

func main() {
	/*
		// panic("a problem")
		_, err := os.Create("/tmp/tt/yyfile")
		if err != nil {
			panic(err)
		}
	*/
	func() {
		i := 0
		defer fmt.Println(i)
		i++
		return
	}()
	fmt.Println("--------------")
	func() {
		for i := 0; i < 4; i++ {
			defer fmt.Println(i)
		}
	}()
	fmt.Println("-----------------")
	f := func() (i int) {
		defer func() { i++ }()
		return 1
	}
	fmt.Println(f(), "------------------")
	//return --defer ended befor return
	defer goodbye()
	defer goodnight()
	fmt.Println("Hello world.")

	//f1 := func() {
	defer func() {
		r := recover()
		fmt.Println("recovered:", r)
	}()
	panic("eeeeeeee")
	//	}
	//	f1()
}
