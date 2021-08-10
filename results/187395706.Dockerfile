[app/sources/187395706.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:1228a7ed0950ef929f18a42fe2de01bf945e41670c92fb700e36ca1a3cfef7ee" [label="docker-image://docker.io/library/golang:1.11.2-alpine" shape="ellipse"];
  "sha256:a4d15608b95ef8a6331d3c5636bf87337f6dac33945f4c6b8ac2091832351a53" [label="local://context" shape="ellipse"];
  "sha256:2d0ac02097e9cfdcfd257d7df1c36cbaf3f805840e75461925143eb00b45be7a" [label="copy{src=/, dest=/go/src/github.com/square/certstrap}" shape="note"];
  "sha256:aabbf73352fec095953471d73a19ebccdee65bec357222d28e7de6c15c6d61b7" [label="/bin/sh -c go build -o /usr/bin/certstrap github.com/square/certstrap" shape="box"];
  "sha256:b46e571bfae91cb5ac8d4c109dbba8d8714ba5e3077ba098f17c26fc420914f5" [label="copy{src=/usr/bin/certstrap, dest=/usr/bin/certstrap}" shape="note"];
  "sha256:e22b569cac964f18d7948cd0b142293e93496c103c6f99f55186a95358d268db" [label="sha256:e22b569cac964f18d7948cd0b142293e93496c103c6f99f55186a95358d268db" shape="plaintext"];
  "sha256:1228a7ed0950ef929f18a42fe2de01bf945e41670c92fb700e36ca1a3cfef7ee" -> "sha256:2d0ac02097e9cfdcfd257d7df1c36cbaf3f805840e75461925143eb00b45be7a" [label=""];
  "sha256:a4d15608b95ef8a6331d3c5636bf87337f6dac33945f4c6b8ac2091832351a53" -> "sha256:2d0ac02097e9cfdcfd257d7df1c36cbaf3f805840e75461925143eb00b45be7a" [label=""];
  "sha256:2d0ac02097e9cfdcfd257d7df1c36cbaf3f805840e75461925143eb00b45be7a" -> "sha256:aabbf73352fec095953471d73a19ebccdee65bec357222d28e7de6c15c6d61b7" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:b46e571bfae91cb5ac8d4c109dbba8d8714ba5e3077ba098f17c26fc420914f5" [label=""];
  "sha256:aabbf73352fec095953471d73a19ebccdee65bec357222d28e7de6c15c6d61b7" -> "sha256:b46e571bfae91cb5ac8d4c109dbba8d8714ba5e3077ba098f17c26fc420914f5" [label=""];
  "sha256:b46e571bfae91cb5ac8d4c109dbba8d8714ba5e3077ba098f17c26fc420914f5" -> "sha256:e22b569cac964f18d7948cd0b142293e93496c103c6f99f55186a95358d268db" [label=""];
}

