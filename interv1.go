package main

import "fmt"

type IAnimal interface {
	Run()
}
type Animal struct{}

func (a *Animal) Escape(ianimal IAnimal) {

	ianimal.Run()

}

func (a *Animal) Run() {

	fmt.Printf("Animal Run.\n")
}

type Dog struct {
	s Animal
}

func (d *Dog) Run() {

	fmt.Printf("Dog Run.\n")
}

func main() {

	dog := &Dog{}
	dog.s.Escape(dog) //触发 Dog Run
	ad := &Animal{}
	ad.Escape(ad) //触发 Animal Run

}
