package main

import (
	"bufio"
	"fmt"
	"os"
	"pipeline"
)

/*
func main() {
	p:=pipeline.Merge(
		pipeline.InMemSort(
		pipeline.ArraySource(
			3,2,6,7,4)),
	pipeline.InMemSort(
		pipeline.ArraySource(
			7,4,0,3,2,8)))
	for v:= range p{
		fmt.Println(v)
	}
}
*/

func main() {
	const filename="small.in"
	const n=64
	file,err :=os.Create(filename)
	if err != nil{
		panic(err)
	}
	defer file.Close()
	p:=pipeline.RandomSource(n)
	writer :=bufio.NewWriter(file)
	pipeline.WriteSink(writer,p)
	writer.Flush()

	file,err = os.Open(filename)
	if err!=nil{
		panic(err)
	}
	defer file.Close()
	p=pipeline.ReadSource(bufio.NewReader(file),-1)
	count:=0
	for v:= range p{
		fmt.Println(v)
		count++
		if count>=50{
			break
		}
	}
}