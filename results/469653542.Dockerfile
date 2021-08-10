[app/sources/469653542.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:597b25c9e7e5d90b1aaa58bd0f722196150b274d720fc28379a42fd6d0a68fd9" [label="docker-image://docker.io/library/golang:1.10.1-alpine3.7" shape="ellipse"];
  "sha256:2669ff6727935d8b938081322625b805d9c4f20cd492efa2c05672c6d032dd95" [label="local://context" shape="ellipse"];
  "sha256:12bee9c5b5deb81c1de66221b2ae3f28cc131e3a3b23bfe54489ca139a08c567" [label="copy{src=/main.go, dest=/}" shape="note"];
  "sha256:1b1b1d90cd4a3ee4f7a33afd806f4a957e409f9560eb443a80521c2b628d50d3" [label="/bin/sh -c go build -o /go-app ./main.go" shape="box"];
  "sha256:f597576d1364a253afd3605a2725fd1623f9003a8e42f470824f3be1eb0fe482" [label="copy{src=/go-app, dest=/}" shape="note"];
  "sha256:6c2cd423039f7ecf4fc10edd93eecd632f193f9c6c10745642fd5d9e06864811" [label="sha256:6c2cd423039f7ecf4fc10edd93eecd632f193f9c6c10745642fd5d9e06864811" shape="plaintext"];
  "sha256:597b25c9e7e5d90b1aaa58bd0f722196150b274d720fc28379a42fd6d0a68fd9" -> "sha256:12bee9c5b5deb81c1de66221b2ae3f28cc131e3a3b23bfe54489ca139a08c567" [label=""];
  "sha256:2669ff6727935d8b938081322625b805d9c4f20cd492efa2c05672c6d032dd95" -> "sha256:12bee9c5b5deb81c1de66221b2ae3f28cc131e3a3b23bfe54489ca139a08c567" [label=""];
  "sha256:12bee9c5b5deb81c1de66221b2ae3f28cc131e3a3b23bfe54489ca139a08c567" -> "sha256:1b1b1d90cd4a3ee4f7a33afd806f4a957e409f9560eb443a80521c2b628d50d3" [label=""];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:f597576d1364a253afd3605a2725fd1623f9003a8e42f470824f3be1eb0fe482" [label=""];
  "sha256:1b1b1d90cd4a3ee4f7a33afd806f4a957e409f9560eb443a80521c2b628d50d3" -> "sha256:f597576d1364a253afd3605a2725fd1623f9003a8e42f470824f3be1eb0fe482" [label=""];
  "sha256:f597576d1364a253afd3605a2725fd1623f9003a8e42f470824f3be1eb0fe482" -> "sha256:6c2cd423039f7ecf4fc10edd93eecd632f193f9c6c10745642fd5d9e06864811" [label=""];
}

