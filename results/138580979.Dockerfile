[app/sources/138580979.Dockerfile]
digraph {
  "sha256:af4543f66fdf160297263c6edfe8d4f1027c3a74b366b2f0bb18e85200dee347" [label="docker-image://docker.io/library/ubuntu:xenial@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:d130f9addadfcd14b23b2de680875245c8c53079d9e719266edcdee2e7b556d4" [label="/bin/sh -c apt-get update && apt-get upgrade -q -y &&   apt-get install -y --no-install-recommends golang-1.9 git make gcc libc-dev ca-certificates &&   git clone --depth 1 --branch release/1.8 https://github.com/GenaroNetwork/GenaroCore &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apt-get remove -y golang-1.9 git make gcc libc-dev && apt autoremove -y && apt-get clean &&   rm -rf /go-ethereum" shape="box"];
  "sha256:f8f30a33e030588d61d84a5160e8ef7a5d0ef46e0228e3f99c4d249cb2cd5c6a" [label="sha256:f8f30a33e030588d61d84a5160e8ef7a5d0ef46e0228e3f99c4d249cb2cd5c6a" shape="plaintext"];
  "sha256:af4543f66fdf160297263c6edfe8d4f1027c3a74b366b2f0bb18e85200dee347" -> "sha256:d130f9addadfcd14b23b2de680875245c8c53079d9e719266edcdee2e7b556d4" [label=""];
  "sha256:d130f9addadfcd14b23b2de680875245c8c53079d9e719266edcdee2e7b556d4" -> "sha256:f8f30a33e030588d61d84a5160e8ef7a5d0ef46e0228e3f99c4d249cb2cd5c6a" [label=""];
}

