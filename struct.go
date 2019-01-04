package main

import "fmt"

type Books struct {
	title string
}

func main() {
	//----init 1
	var Book1 Books
	Book1.title = "go language"
	//-----init 2
	bk2 := &Books{"c language"}
	fmt.Println(bk2.title)
	//-------
	printBook1(Book1)
	printBook2(&Book1)
}

func printBook1(book Books) {
	fmt.Printf("Book title : %s\n", book.title)

}

func printBook2(book *Books) {
	fmt.Printf("2Book title : %s\n", book.title)
}
