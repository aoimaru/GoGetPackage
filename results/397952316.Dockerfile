[app/sources/397952316.Dockerfile]
digraph {
  "sha256:1ef70a5cd83d1320a44062bb6a6cb1030fe585e8321b0dc6d34dda9eaabcc741" [label="docker-image://docker.io/stackbrew/ubuntu:trusty" shape="ellipse"];
  "sha256:e7efd6820ef5ba2cc04ed2432e2cce8b49a0e3c7c43b5c2de923e60258f288c6" [label="/bin/sh -c apt-get install -y gnupg" shape="box"];
  "sha256:f212be9cfe4df9759a5c5ab2f5b4829387702fdfaafe77748c04ee17845e8a29" [label="/bin/sh -c gpg --keyserver keys.gnupg.net --recv-keys 803709B6" shape="box"];
  "sha256:44c02010d419290a037774963ddc7822550e893d2cda8b2c26d61022ebaa12ed" [label="/bin/sh -c gpg -a --export 803709B6 | apt-key add -" shape="box"];
  "sha256:4f5591485ac745cae3e252631d7498d10628efc57c917d5e18da20088c407cc5" [label="/bin/sh -c echo \"deb http://packages.flapjack.io/deb/v1 trusty main\" | tee /etc/apt/sources.list.d/flapjack.list" shape="box"];
  "sha256:acbd37967c82c58cdc5dc6aa437504af27123e2c318253bec691c4404ee6a297" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:064772f5daffa9b15cdfe98f21dbaddf84070b6867978370d6b35f01321c0fdc" [label="/bin/sh -c apt-cache policy flapjack" shape="box"];
  "sha256:406cba82d527183e02b928357a1c2db1615c26ffe7dba32d5fec4ad358f74066" [label="/bin/sh -c apt-get install -y flapjack" shape="box"];
  "sha256:30dc8e4e7e332ad306492f96156d50492173f91278653307ab741f021eb7ce44" [label="sha256:30dc8e4e7e332ad306492f96156d50492173f91278653307ab741f021eb7ce44" shape="plaintext"];
  "sha256:1ef70a5cd83d1320a44062bb6a6cb1030fe585e8321b0dc6d34dda9eaabcc741" -> "sha256:e7efd6820ef5ba2cc04ed2432e2cce8b49a0e3c7c43b5c2de923e60258f288c6" [label=""];
  "sha256:e7efd6820ef5ba2cc04ed2432e2cce8b49a0e3c7c43b5c2de923e60258f288c6" -> "sha256:f212be9cfe4df9759a5c5ab2f5b4829387702fdfaafe77748c04ee17845e8a29" [label=""];
  "sha256:f212be9cfe4df9759a5c5ab2f5b4829387702fdfaafe77748c04ee17845e8a29" -> "sha256:44c02010d419290a037774963ddc7822550e893d2cda8b2c26d61022ebaa12ed" [label=""];
  "sha256:44c02010d419290a037774963ddc7822550e893d2cda8b2c26d61022ebaa12ed" -> "sha256:4f5591485ac745cae3e252631d7498d10628efc57c917d5e18da20088c407cc5" [label=""];
  "sha256:4f5591485ac745cae3e252631d7498d10628efc57c917d5e18da20088c407cc5" -> "sha256:acbd37967c82c58cdc5dc6aa437504af27123e2c318253bec691c4404ee6a297" [label=""];
  "sha256:acbd37967c82c58cdc5dc6aa437504af27123e2c318253bec691c4404ee6a297" -> "sha256:064772f5daffa9b15cdfe98f21dbaddf84070b6867978370d6b35f01321c0fdc" [label=""];
  "sha256:064772f5daffa9b15cdfe98f21dbaddf84070b6867978370d6b35f01321c0fdc" -> "sha256:406cba82d527183e02b928357a1c2db1615c26ffe7dba32d5fec4ad358f74066" [label=""];
  "sha256:406cba82d527183e02b928357a1c2db1615c26ffe7dba32d5fec4ad358f74066" -> "sha256:30dc8e4e7e332ad306492f96156d50492173f91278653307ab741f021eb7ce44" [label=""];
}

