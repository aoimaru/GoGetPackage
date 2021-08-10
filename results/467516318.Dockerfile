[app/sources/467516318.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:7600ebe48a1350288429d12f90332056c1c4e5e0ca399114bd499ff562b49b9c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         gcc libc6-dev qemu-user ca-certificates         gcc-mips-linux-gnu libc6-dev-mips-cross         qemu-system-mips" shape="box"];
  "sha256:85aecf51adcc5671e942a638929453ea1342278ae95b1148680376b9de23d98e" [label="sha256:85aecf51adcc5671e942a638929453ea1342278ae95b1148680376b9de23d98e" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:7600ebe48a1350288429d12f90332056c1c4e5e0ca399114bd499ff562b49b9c" [label=""];
  "sha256:7600ebe48a1350288429d12f90332056c1c4e5e0ca399114bd499ff562b49b9c" -> "sha256:85aecf51adcc5671e942a638929453ea1342278ae95b1148680376b9de23d98e" [label=""];
}

