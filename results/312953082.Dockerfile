[app/sources/312953082.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:ecd9a4e3b2ac405ebe416477d9bc80285c265c745bc3cfb6db5bb91468e106af" [label="/bin/sh -c mkdir -p /go/bin" shape="box"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:766bed824775ced2b7b54204b1224e7eafc4e1248560b2c946bfdc92d160a53c" [label="mkdir{path=/go/src}" shape="note"];
  "sha256:1ea1e8310e0395357820a41dfd6cf61994f639a23c04b9b756deba303372c5bb" [label="local://context" shape="ellipse"];
  "sha256:80926d55990cd68c8ea2330fad8f907a7e5c35c688dd378bdfce924c648310ab" [label="copy{src=/*.go, dest=/go/src/}" shape="note"];
  "sha256:668fe4f8136ccaab78b03ab22e783a39825b67708c4f2783b0839138f6cc9c1b" [label="/bin/sh -c go get" shape="box"];
  "sha256:046406e1ae2c789707806c0decb3a9b46c87a24d5ef36012e1d997d6c48c1f95" [label="/bin/sh -c CGO_ENABLED=0 go build -o ../bin/les" shape="box"];
  "sha256:a205a9b5d8884ca15fada93f1d2fb96e39ad9f6c158407c2206c49d5315c91cc" [label="copy{src=/go/bin/les, dest=/go/bin/}" shape="note"];
  "sha256:0fecf0e3b23bc41bc438c61226b9a91ce2cdb4864b3944a48d2c486444b7059e" [label="mkdir{path=/les}" shape="note"];
  "sha256:bcf3f487617613b59798b50a2e7bf9c283383b9b1e07d86bcfb4d22cc8969753" [label="/bin/sh -c addgroup -g 1000 les  && adduser -u 1000 -G les -s /bin/sh -D les" shape="box"];
  "sha256:746befc13e3857c40617d3ab27cc94a239dc2c0ef4ce8dbf55d958cc36a1d503" [label="sha256:746befc13e3857c40617d3ab27cc94a239dc2c0ef4ce8dbf55d958cc36a1d503" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:ecd9a4e3b2ac405ebe416477d9bc80285c265c745bc3cfb6db5bb91468e106af" [label=""];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:766bed824775ced2b7b54204b1224e7eafc4e1248560b2c946bfdc92d160a53c" [label=""];
  "sha256:766bed824775ced2b7b54204b1224e7eafc4e1248560b2c946bfdc92d160a53c" -> "sha256:80926d55990cd68c8ea2330fad8f907a7e5c35c688dd378bdfce924c648310ab" [label=""];
  "sha256:1ea1e8310e0395357820a41dfd6cf61994f639a23c04b9b756deba303372c5bb" -> "sha256:80926d55990cd68c8ea2330fad8f907a7e5c35c688dd378bdfce924c648310ab" [label=""];
  "sha256:80926d55990cd68c8ea2330fad8f907a7e5c35c688dd378bdfce924c648310ab" -> "sha256:668fe4f8136ccaab78b03ab22e783a39825b67708c4f2783b0839138f6cc9c1b" [label=""];
  "sha256:668fe4f8136ccaab78b03ab22e783a39825b67708c4f2783b0839138f6cc9c1b" -> "sha256:046406e1ae2c789707806c0decb3a9b46c87a24d5ef36012e1d997d6c48c1f95" [label=""];
  "sha256:ecd9a4e3b2ac405ebe416477d9bc80285c265c745bc3cfb6db5bb91468e106af" -> "sha256:a205a9b5d8884ca15fada93f1d2fb96e39ad9f6c158407c2206c49d5315c91cc" [label=""];
  "sha256:046406e1ae2c789707806c0decb3a9b46c87a24d5ef36012e1d997d6c48c1f95" -> "sha256:a205a9b5d8884ca15fada93f1d2fb96e39ad9f6c158407c2206c49d5315c91cc" [label=""];
  "sha256:a205a9b5d8884ca15fada93f1d2fb96e39ad9f6c158407c2206c49d5315c91cc" -> "sha256:0fecf0e3b23bc41bc438c61226b9a91ce2cdb4864b3944a48d2c486444b7059e" [label=""];
  "sha256:0fecf0e3b23bc41bc438c61226b9a91ce2cdb4864b3944a48d2c486444b7059e" -> "sha256:bcf3f487617613b59798b50a2e7bf9c283383b9b1e07d86bcfb4d22cc8969753" [label=""];
  "sha256:bcf3f487617613b59798b50a2e7bf9c283383b9b1e07d86bcfb4d22cc8969753" -> "sha256:746befc13e3857c40617d3ab27cc94a239dc2c0ef4ce8dbf55d958cc36a1d503" [label=""];
}

