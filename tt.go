package main

import "fmt"

type student struct {
	Name string
	Age  int
}

func pase_student() {
	m := make(map[string]*student)
	stus := []student{
		{Name: "zhou", Age: 24},
		{Name: "li", Age: 23},
		{Name: "wang", Age: 22},
	}
	for i, stu := range stus {
		fmt.Printf("%v\t%p\n", stu, &stu)
		m[stu.Name] = &stus[i]

	}

	for k, v := range m {
		fmt.Println(k, "=>", v.Name)
	}

	fmt.Println(m)
	/*
		m1 := make(map[string]*student)
		stuspt := []*student{
			{Name: "zhou", Age: 24},
			{Name: "li", Age: 23},
			{Name: "wang", Age: 22},
		}
		for _, stu := range stuspt {
			fmt.Printf("%v\t%p\n", stu, &stu)
			m1[stu.Name] = stu
		}
	*/

}

func main() {
	pase_student()

}
