package main

import "fmt"

type IFile interface {
	Read()
	Write()
}

type IReader interface {
	Read()
}

type File struct {
}

func (f *File) Read() {

}

func (f *File) Write() {

}

func main() {
	f := new(File)

	var f1 IFile = f    // ok 因为FIle实现了IFile中的所有方法
	var f2 IReader = f1 // ok 因为IFile中包含IReader中所有方法
	// var f3 IFile = f2    		// error 因为IReader并不能满足IFile（少一个方法）
	//
	var f3 IReader = new(File) // ok 因为File实现了IReader中所有方法
	// var f4 IFile = f3          	// error 因为IReader并不能满足IFile 同上..如何解决呢？ 要用接口查询

	// 接口查询
	// 这个if语句检查file1接口指向的对象实例是否实现了IFile接口
	// 如果实现了
	// 则执行特定的代码。
	// 注意：这里强调的是对象实例，也就是new(File)
	// File包含IFile里所有的方法
	// 所以ok = true
	if f5, ok := f3.(IFile); ok {
		fmt.Println(f5)
	}

	// 询问接口它指向的对象是否是某个类型
	// 这个if语句判断file1接口指向的对象实例是否是*File类型
	// 依然ok
	if f6, ok := f3.(*File); ok {
		fmt.Println(f6)
	}

	fmt.Println(f1, f2, f3)
}
