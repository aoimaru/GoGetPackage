[app/sources/345370808.Dockerfile]
digraph {
  "sha256:43b385c9090b49b70c03ae11e2937d07fbb61c5c07f141644a8e42ce07a08dd8" [label="docker-image://docker.io/balenalib/beaglebone-fastenal-fedora:26-build" shape="ellipse"];
  "sha256:9d213179500f174b51c40bc63cfe11aecc2d6eefa4205ad143ba3a4fd9c900bd" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:0e3ddac739e7b65db0a2e45fa34cd56431e7752aae63e91761fca939a5e77413" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b0fd52d62b54047db9b25d486f5e7945574f41c4da474842a6c8451d20894046" [label="mkdir{path=/go}" shape="note"];
  "sha256:2d2cecc6e25580258e0b54e9cd9c81964b6c49b54cbce774e06d4252d5d26fcf" [label="sha256:2d2cecc6e25580258e0b54e9cd9c81964b6c49b54cbce774e06d4252d5d26fcf" shape="plaintext"];
  "sha256:43b385c9090b49b70c03ae11e2937d07fbb61c5c07f141644a8e42ce07a08dd8" -> "sha256:9d213179500f174b51c40bc63cfe11aecc2d6eefa4205ad143ba3a4fd9c900bd" [label=""];
  "sha256:9d213179500f174b51c40bc63cfe11aecc2d6eefa4205ad143ba3a4fd9c900bd" -> "sha256:0e3ddac739e7b65db0a2e45fa34cd56431e7752aae63e91761fca939a5e77413" [label=""];
  "sha256:0e3ddac739e7b65db0a2e45fa34cd56431e7752aae63e91761fca939a5e77413" -> "sha256:b0fd52d62b54047db9b25d486f5e7945574f41c4da474842a6c8451d20894046" [label=""];
  "sha256:b0fd52d62b54047db9b25d486f5e7945574f41c4da474842a6c8451d20894046" -> "sha256:2d2cecc6e25580258e0b54e9cd9c81964b6c49b54cbce774e06d4252d5d26fcf" [label=""];
}

