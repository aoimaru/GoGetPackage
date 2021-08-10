[app/sources/345368296.Dockerfile]
digraph {
  "sha256:cd58f6708e0605581ab3d9cb29aabe076a04c3e75c1c02478b63016096553297" [label="docker-image://docker.io/balenalib/asus-tinker-board-s-ubuntu:cosmic-build" shape="ellipse"];
  "sha256:c8d71937d9810ce496f38f127c64b2dcb0a6af2597f247ce8715f66c1b6e0300" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:bd0d2c09e47c0f8eb94654994a2be9ce3b5f95477e5d3cb43b473f4d82367f3e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:50679d03580d24166b412b4963c45738eb4cb70991171ff2072d9193b6b4811e" [label="mkdir{path=/go}" shape="note"];
  "sha256:1251056af8cff6f33531379d1bf5f6db8b6361d71383784f6637eb95fe92f18c" [label="sha256:1251056af8cff6f33531379d1bf5f6db8b6361d71383784f6637eb95fe92f18c" shape="plaintext"];
  "sha256:cd58f6708e0605581ab3d9cb29aabe076a04c3e75c1c02478b63016096553297" -> "sha256:c8d71937d9810ce496f38f127c64b2dcb0a6af2597f247ce8715f66c1b6e0300" [label=""];
  "sha256:c8d71937d9810ce496f38f127c64b2dcb0a6af2597f247ce8715f66c1b6e0300" -> "sha256:bd0d2c09e47c0f8eb94654994a2be9ce3b5f95477e5d3cb43b473f4d82367f3e" [label=""];
  "sha256:bd0d2c09e47c0f8eb94654994a2be9ce3b5f95477e5d3cb43b473f4d82367f3e" -> "sha256:50679d03580d24166b412b4963c45738eb4cb70991171ff2072d9193b6b4811e" [label=""];
  "sha256:50679d03580d24166b412b4963c45738eb4cb70991171ff2072d9193b6b4811e" -> "sha256:1251056af8cff6f33531379d1bf5f6db8b6361d71383784f6637eb95fe92f18c" [label=""];
}

