[app/sources/212044912.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:c994f581e1aadb1405f9f718e1a2e6ce436a969c38ba1e617873a9495b5399c2" [label="local://context" shape="ellipse"];
  "sha256:3efa574e371729fef71923b413d85376e0db2b323d82e0fe12301d33ca860330" [label="copy{src=/, dest=/go/src/github.com/cloudflare/complainer}" shape="note"];
  "sha256:2e4f90bf4fc7b452b5d79b123a6777c41b1592a521b0d6128e93e6c92432e15c" [label="/bin/sh -c apk --update add go ca-certificates &&     export GOPATH=/go GO15VENDOREXPERIMENT=1 &&     go get github.com/cloudflare/complainer/... &&     apk del go" shape="box"];
  "sha256:24b45593f77dc03f45afc0ff7835fa9720cb8fb159e00622a8f726009a1c2093" [label="sha256:24b45593f77dc03f45afc0ff7835fa9720cb8fb159e00622a8f726009a1c2093" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:3efa574e371729fef71923b413d85376e0db2b323d82e0fe12301d33ca860330" [label=""];
  "sha256:c994f581e1aadb1405f9f718e1a2e6ce436a969c38ba1e617873a9495b5399c2" -> "sha256:3efa574e371729fef71923b413d85376e0db2b323d82e0fe12301d33ca860330" [label=""];
  "sha256:3efa574e371729fef71923b413d85376e0db2b323d82e0fe12301d33ca860330" -> "sha256:2e4f90bf4fc7b452b5d79b123a6777c41b1592a521b0d6128e93e6c92432e15c" [label=""];
  "sha256:2e4f90bf4fc7b452b5d79b123a6777c41b1592a521b0d6128e93e6c92432e15c" -> "sha256:24b45593f77dc03f45afc0ff7835fa9720cb8fb159e00622a8f726009a1c2093" [label=""];
}

