[app/sources/245255677.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:ee3678cf00b8ff560aaf2c549c2a858ff27129867224236948c11411d476997e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   gcc libc6-dev ca-certificates   gcc-aarch64-linux-gnu libc6-dev-arm64-cross qemu-user" shape="box"];
  "sha256:e66cf5ec154b3a95f562eac4ac63c9fa3ea99898c00d77bee29e8f4081674768" [label="sha256:e66cf5ec154b3a95f562eac4ac63c9fa3ea99898c00d77bee29e8f4081674768" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:ee3678cf00b8ff560aaf2c549c2a858ff27129867224236948c11411d476997e" [label=""];
  "sha256:ee3678cf00b8ff560aaf2c549c2a858ff27129867224236948c11411d476997e" -> "sha256:e66cf5ec154b3a95f562eac4ac63c9fa3ea99898c00d77bee29e8f4081674768" [label=""];
}

