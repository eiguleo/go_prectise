package main

func main() {
	test()
	//43210
	func() {
		for i := 0; i < 5; i++ {
			defer func(i int) {
				println(i)
			}(i)
		}
	}()
	//5555555
	func() {
		for i := 0; i < 5; i++ {
			defer func() {
				println(i)
			}()
		}
	}()

}
func test() {
	println("test1")
	defer func() {
		println("defer test2")
	}()
	println("test3")

}
