[app/sources/345365847.Dockerfile]
digraph {
  "sha256:35aedbf4b751aacc8301913c24feca14a602609157910584c0748d7bdb24cc15" [label="docker-image://docker.io/balenalib/fincm3-fedora:26-run" shape="ellipse"];
  "sha256:5d74f7e946c22d0996a4cd410681533dbbc1136805a0f1a376e939cb44cd9e03" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:7a7f5fb6a1f59d5482fdc950ac29ba04cc750ad5ecebd5ffd04cb9de1997b0f8" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:578a8e3a6278125960dce1edddfe30fc79da444e384f7bff6bc8c0eb95a06474" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3e888e01f16bd2f8af95905754bd1b7eb30ef1c5dcd26a4cfabb77ab6ee1d1c7" [label="mkdir{path=/go}" shape="note"];
  "sha256:6f58445b59aeb53f6f1c107eeb68e60c6d367c367b1f04d13b8bdda26b46082c" [label="sha256:6f58445b59aeb53f6f1c107eeb68e60c6d367c367b1f04d13b8bdda26b46082c" shape="plaintext"];
  "sha256:35aedbf4b751aacc8301913c24feca14a602609157910584c0748d7bdb24cc15" -> "sha256:5d74f7e946c22d0996a4cd410681533dbbc1136805a0f1a376e939cb44cd9e03" [label=""];
  "sha256:5d74f7e946c22d0996a4cd410681533dbbc1136805a0f1a376e939cb44cd9e03" -> "sha256:7a7f5fb6a1f59d5482fdc950ac29ba04cc750ad5ecebd5ffd04cb9de1997b0f8" [label=""];
  "sha256:7a7f5fb6a1f59d5482fdc950ac29ba04cc750ad5ecebd5ffd04cb9de1997b0f8" -> "sha256:578a8e3a6278125960dce1edddfe30fc79da444e384f7bff6bc8c0eb95a06474" [label=""];
  "sha256:578a8e3a6278125960dce1edddfe30fc79da444e384f7bff6bc8c0eb95a06474" -> "sha256:3e888e01f16bd2f8af95905754bd1b7eb30ef1c5dcd26a4cfabb77ab6ee1d1c7" [label=""];
  "sha256:3e888e01f16bd2f8af95905754bd1b7eb30ef1c5dcd26a4cfabb77ab6ee1d1c7" -> "sha256:6f58445b59aeb53f6f1c107eeb68e60c6d367c367b1f04d13b8bdda26b46082c" [label=""];
}

