[app/sources/317858987.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label="/bin/sh -c apk add --no-cache ca-certificates" shape="box"];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" [label="docker-image://docker.io/library/golang:1.10-alpine" shape="ellipse"];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label="/bin/sh -c apk add --no-cache make gcc musl-dev linux-headers" shape="box"];
  "sha256:550f048d4365c374f4c901a386c98a30a0009b826d6b217ba9d59b79c7765216" [label="local://context" shape="ellipse"];
  "sha256:b71eb5b2a139efbd61f8508aef1eda1d6205d7131f357d39f7d7617620ebacc2" [label="copy{src=/, dest=/go-ethereum}" shape="note"];
  "sha256:5f7f75faf82016c10522fd64e72ac13f88e909fad5f36ecf286d1d38215b7780" [label="/bin/sh -c cd /go-ethereum && make geth" shape="box"];
  "sha256:cd0dd302dfb3a52efe728dd6763b97b8a71860afb045714065b68cf09c29e1d8" [label="copy{src=/go-ethereum/build/bin/geth, dest=/usr/local/bin/}" shape="note"];
  "sha256:a26914d0af55806cab1fa2d8697cb48c32e856dbefb8fdc61a6b2b1cdf35a448" [label="sha256:a26914d0af55806cab1fa2d8697cb48c32e856dbefb8fdc61a6b2b1cdf35a448" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" [label=""];
  "sha256:04a0df67bc931892b8e44bf1fbde9fca76a948e73293f543af9987b2b79a9499" -> "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" [label=""];
  "sha256:d746d81335a62c185e03c2a2a811b18787f5e359261d957f3e9cbd5487c07fef" -> "sha256:b71eb5b2a139efbd61f8508aef1eda1d6205d7131f357d39f7d7617620ebacc2" [label=""];
  "sha256:550f048d4365c374f4c901a386c98a30a0009b826d6b217ba9d59b79c7765216" -> "sha256:b71eb5b2a139efbd61f8508aef1eda1d6205d7131f357d39f7d7617620ebacc2" [label=""];
  "sha256:b71eb5b2a139efbd61f8508aef1eda1d6205d7131f357d39f7d7617620ebacc2" -> "sha256:5f7f75faf82016c10522fd64e72ac13f88e909fad5f36ecf286d1d38215b7780" [label=""];
  "sha256:7156115684219992d715d910caa1a89fea8becfe16e4ad29bad6cb66a15151fa" -> "sha256:cd0dd302dfb3a52efe728dd6763b97b8a71860afb045714065b68cf09c29e1d8" [label=""];
  "sha256:5f7f75faf82016c10522fd64e72ac13f88e909fad5f36ecf286d1d38215b7780" -> "sha256:cd0dd302dfb3a52efe728dd6763b97b8a71860afb045714065b68cf09c29e1d8" [label=""];
  "sha256:cd0dd302dfb3a52efe728dd6763b97b8a71860afb045714065b68cf09c29e1d8" -> "sha256:a26914d0af55806cab1fa2d8697cb48c32e856dbefb8fdc61a6b2b1cdf35a448" [label=""];
}

