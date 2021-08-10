[app/sources/319119868.Dockerfile]
digraph {
  "sha256:af4543f66fdf160297263c6edfe8d4f1027c3a74b366b2f0bb18e85200dee347" [label="docker-image://docker.io/library/ubuntu:xenial@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:a2f2038140d87e7ba420debc409e8022afb9552f7ee06ab62bf35b9ea5406d1d" [label="/bin/sh -c apt-get update && apt-get upgrade -q -y &&   apt-get install -y --no-install-recommends golang-1.9 git make gcc libc-dev ca-certificates &&   git clone --depth 1 https://github.com/ethereum/go-ethereum &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apt-get remove -y golang-1.9 git make gcc libc-dev && apt autoremove -y && apt-get clean &&   rm -rf /go-ethereum" shape="box"];
  "sha256:db53342b68ae85dc525aedc8e7776664125f981b53407baf98bb50e0606b6b64" [label="sha256:db53342b68ae85dc525aedc8e7776664125f981b53407baf98bb50e0606b6b64" shape="plaintext"];
  "sha256:af4543f66fdf160297263c6edfe8d4f1027c3a74b366b2f0bb18e85200dee347" -> "sha256:a2f2038140d87e7ba420debc409e8022afb9552f7ee06ab62bf35b9ea5406d1d" [label=""];
  "sha256:a2f2038140d87e7ba420debc409e8022afb9552f7ee06ab62bf35b9ea5406d1d" -> "sha256:db53342b68ae85dc525aedc8e7776664125f981b53407baf98bb50e0606b6b64" [label=""];
}

