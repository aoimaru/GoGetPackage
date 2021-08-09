package main

import (
	"flag"
	"fmt"
	"io/ioutil"
	"os"

	"github.com/po3rin/dockerdot/docker2dot"
	// "rsc.io/quote"
)

func main() {
	// fmt.Println("Hello World")
	// fmt.Println(quote.Hello())
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
	// 出力
	// fmt.Println(string(b))

	// text := `
	// FROM golang:1.12.6
	// LABEL maintainer "NAKAMURA AOI"
	// WORKDIR /go/src

	// ENV GO111MODULE=on
	// RUN go mod download
	// `
	text := string(b)

	dockerfile := []byte(text)

	// https://github.com/golang/go/issues/26382
	// should wrap func with gorutine.
	// go func() {
	// 	dot, err := docker2dot.Docker2Dot(dockerfile)
	// 	if err != nil {
	// 		fmt.Println(err)
	// 	}
	// 	showGraph := js.Global().Get("showGraph")
	// 	showGraph.Invoke(string(dot))
	// }()
	dot, err := docker2dot.Docker2Dot(dockerfile)
	if err != nil {
		fmt.Println(err)
	}
	fmt.Println(string(dot))

}
