package main

import "fmt"

func main() {
	//----slice
	nums := []int{1, 2, 3}
	sum := 0
	for _, num := range nums {
		sum += num
	}
	fmt.Println("sum is: ", sum)

	//---arr
	for i, num := range nums {
		if num == 3 {
			fmt.Println("index of 3 is :", i)
		}
	}

	// --map

	kvs := map[string]string{"a": "apple", "b": "banana"}
	for k, v := range kvs {
		fmt.Printf("%s -> %s\n", k, v)
	}

	//--string
	for i, c := range "string" {
		fmt.Printf("index is %d, char is %c\n", i, c)
	}

}
