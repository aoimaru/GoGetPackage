[app/sources/324277193.Dockerfile]
digraph {
  "sha256:a36bf372879cecd87738b3ad90f9991263601d7cec0080115491a011fd9464ae" [label="docker-image://docker.io/library/gradle:4.9.0-jdk8" shape="ellipse"];
  "sha256:e36fb5fe386bcf230d0288e525e808577a850450743b320e5d23bfaa4ae95e7a" [label="mkdir{path=/root/src}" shape="note"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:069e1db16714b15e92969b6899db54bf4177e933ee469c3512323c576fca687c" [label="mkdir{path=/go/src/component-testng}" shape="note"];
  "sha256:5e092d52ec9ff568e8a5bcd50593a06c9741d6ee9f217617e47613805f1235fa" [label="local://context" shape="ellipse"];
  "sha256:913b5ebd13a024b21102b697dba0e3e19481f42a3b00e277b3ea18ee5b454da8" [label="copy{src=/, dest=/go/src/component-testng}" shape="note"];
  "sha256:56ce09e3c76014691e3dcc2e15a9dd4cb75f609e19afce7b0fa540dd92035fdb" [label="/bin/sh -c set -ex && go build -v -o /go/bin/component-testng -gcflags '-N -l' ./*.go" shape="box"];
  "sha256:8afd9f5b05c528e7fa9a72dcde4f408f551fd0f37f51b4d761372eb66588104d" [label="copy{src=/go/bin/component-testng, dest=/usr/bin/}" shape="note"];
  "sha256:a1f4dcb54f93c75c9e3b07e1844d951ab8af06069385233da7a00b5b24ddeb1b" [label="sha256:a1f4dcb54f93c75c9e3b07e1844d951ab8af06069385233da7a00b5b24ddeb1b" shape="plaintext"];
  "sha256:a36bf372879cecd87738b3ad90f9991263601d7cec0080115491a011fd9464ae" -> "sha256:e36fb5fe386bcf230d0288e525e808577a850450743b320e5d23bfaa4ae95e7a" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:069e1db16714b15e92969b6899db54bf4177e933ee469c3512323c576fca687c" [label=""];
  "sha256:069e1db16714b15e92969b6899db54bf4177e933ee469c3512323c576fca687c" -> "sha256:913b5ebd13a024b21102b697dba0e3e19481f42a3b00e277b3ea18ee5b454da8" [label=""];
  "sha256:5e092d52ec9ff568e8a5bcd50593a06c9741d6ee9f217617e47613805f1235fa" -> "sha256:913b5ebd13a024b21102b697dba0e3e19481f42a3b00e277b3ea18ee5b454da8" [label=""];
  "sha256:913b5ebd13a024b21102b697dba0e3e19481f42a3b00e277b3ea18ee5b454da8" -> "sha256:56ce09e3c76014691e3dcc2e15a9dd4cb75f609e19afce7b0fa540dd92035fdb" [label=""];
  "sha256:e36fb5fe386bcf230d0288e525e808577a850450743b320e5d23bfaa4ae95e7a" -> "sha256:8afd9f5b05c528e7fa9a72dcde4f408f551fd0f37f51b4d761372eb66588104d" [label=""];
  "sha256:56ce09e3c76014691e3dcc2e15a9dd4cb75f609e19afce7b0fa540dd92035fdb" -> "sha256:8afd9f5b05c528e7fa9a72dcde4f408f551fd0f37f51b4d761372eb66588104d" [label=""];
  "sha256:8afd9f5b05c528e7fa9a72dcde4f408f551fd0f37f51b4d761372eb66588104d" -> "sha256:a1f4dcb54f93c75c9e3b07e1844d951ab8af06069385233da7a00b5b24ddeb1b" [label=""];
}

