package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"os"

	"github.com/po3rin/dockerdot/docker2dot"
)

func main() {

	flag.Parse()
	fmt.Println(flag.Args())

	args := flag.Args()
	fileName := args[0]

	f, err := os.Open(fileName)
	if err != nil {
		fmt.Println("error")
	}
	defer f.Close()

	// 一気に全部読み取り
	b, err := ioutil.ReadAll(f)
	text := string(b)

	dockerfile := []byte(text)

	dot, err := docker2dot.Docker2Dot(dockerfile)
	if err != nil {
		fmt.Println(err)
	}
	fmt.Println(string(dot))

}
