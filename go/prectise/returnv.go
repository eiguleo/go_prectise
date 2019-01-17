package main

import (
	"fmt"
)

func GetMoney() (_amount int) {
	_amount = 88
	fmt.Println("money: ", _amount)
	return
}

func main() {
	var amount = GetMoney()
	fmt.Println("money: ", amount)
}
