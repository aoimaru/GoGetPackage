[app/sources/405932861.Dockerfile]
digraph {
  "sha256:8ae41b4354124f9f61d4d98808544f977880a9f7b35b48129b40ba63008b074a" [label="local://context" shape="ellipse"];
  "sha256:debf370ecb258588c1aee900370631b57c63a80313b3318ebc3011f89d81f776" [label="docker-image://docker.io/onosproject/golang-build:stable@sha256:c64d35f98e07754d7356555de12d6a0c67846f7f6557cc97a56b51371ea9e15e" shape="ellipse"];
  "sha256:f299166ee6b113410e5a8c83be363ecc6cc4187ff5a9278d74298ba2f948e527" [label="copy{src=/, dest=/go/src/github.com/onosproject/onos-config}" shape="note"];
  "sha256:f3bce6f679c037ef1b0b4279c31cffb0bdb302fc0e36d3b736372aa03747c729" [label="/bin/sh -c cd /go/src/github.com/onosproject/onos-config && GOFLAGS=-mod=vendor make build" shape="box"];
  "sha256:6be3bc070a4e33142d9e72dcd29854a43f68738b3f48c00d42b76a4a66624234" [label="sha256:6be3bc070a4e33142d9e72dcd29854a43f68738b3f48c00d42b76a4a66624234" shape="plaintext"];
  "sha256:debf370ecb258588c1aee900370631b57c63a80313b3318ebc3011f89d81f776" -> "sha256:f299166ee6b113410e5a8c83be363ecc6cc4187ff5a9278d74298ba2f948e527" [label=""];
  "sha256:8ae41b4354124f9f61d4d98808544f977880a9f7b35b48129b40ba63008b074a" -> "sha256:f299166ee6b113410e5a8c83be363ecc6cc4187ff5a9278d74298ba2f948e527" [label=""];
  "sha256:f299166ee6b113410e5a8c83be363ecc6cc4187ff5a9278d74298ba2f948e527" -> "sha256:f3bce6f679c037ef1b0b4279c31cffb0bdb302fc0e36d3b736372aa03747c729" [label=""];
  "sha256:f3bce6f679c037ef1b0b4279c31cffb0bdb302fc0e36d3b736372aa03747c729" -> "sha256:6be3bc070a4e33142d9e72dcd29854a43f68738b3f48c00d42b76a4a66624234" [label=""];
}

