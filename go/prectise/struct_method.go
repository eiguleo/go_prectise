package main

import "fmt"

type user struct {
	name  string
	email string
}

func (u user) notify() {
	fmt.Println("Email is %d", u.email)
}

func (u user) changev(email string) {
	u.email = email

}

func (u *user) changeEmail(email string) {
	u.email = email

}

func main() {
	var u user
	u = user{"uname", "uemail"}
	fmt.Println("-----func changeemail---")
	//u.changeEmail("1012083552@qq.com")
	u.changev("tt@qq.com")
	fmt.Println("-----func notify-----")
	u.notify()

}
