package main

import "fmt"

type People struct{}

func (p *People) ShowA() {
	fmt.Println("showA of People")
	p.ShowB()
}
func (p *People) ShowB() {
	fmt.Println("showB of People")
}

type Teacher struct {
	People
}

func (t *Teacher) ShowB() {
	fmt.Println("showB of Teacher")
}

func main() {
	t := Teacher{}
	t.ShowA()
	t.ShowB()
	t.People.ShowB()
}
