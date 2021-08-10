[app/sources/245255688.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:ae22445d52868b20f941d14fa4b6b9ba47ffa51694c68aa0311eabd6919196fa" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         gcc libc6-dev qemu-user ca-certificates qemu-system-mips curl         bzip2" shape="box"];
  "sha256:fb25e20d50adaf291c82f646e23f65ec7e4ec166362d59a15a01f010b5acdcd4" [label="/bin/sh -c mkdir /toolchain" shape="box"];
  "sha256:eacc61170094642bbbc6d59e5bd18f967db39500b96e657ff2031c3015298dcb" [label="/bin/sh -c curl -L https://s3-us-west-1.amazonaws.com/rust-lang-ci2/libc/OpenWrt-Toolchain-malta-le_gcc-5.3.0_musl-1.1.15.Linux-x86_64.tar.bz2 |       tar xjf - -C /toolchain --strip-components=2" shape="box"];
  "sha256:8321ba6227a18bad5293b321d9351091cc210855c388faee366ddd074dbd6ca5" [label="sha256:8321ba6227a18bad5293b321d9351091cc210855c388faee366ddd074dbd6ca5" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:ae22445d52868b20f941d14fa4b6b9ba47ffa51694c68aa0311eabd6919196fa" [label=""];
  "sha256:ae22445d52868b20f941d14fa4b6b9ba47ffa51694c68aa0311eabd6919196fa" -> "sha256:fb25e20d50adaf291c82f646e23f65ec7e4ec166362d59a15a01f010b5acdcd4" [label=""];
  "sha256:fb25e20d50adaf291c82f646e23f65ec7e4ec166362d59a15a01f010b5acdcd4" -> "sha256:eacc61170094642bbbc6d59e5bd18f967db39500b96e657ff2031c3015298dcb" [label=""];
  "sha256:eacc61170094642bbbc6d59e5bd18f967db39500b96e657ff2031c3015298dcb" -> "sha256:8321ba6227a18bad5293b321d9351091cc210855c388faee366ddd074dbd6ca5" [label=""];
}

