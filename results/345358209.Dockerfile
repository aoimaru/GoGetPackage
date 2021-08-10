[app/sources/345358209.Dockerfile]
digraph {
  "sha256:6b1986aab6c8fc9291b1aaff2803bd4109e45ccadd0810c48e51b7096dce5527" [label="docker-image://docker.io/balenalib/raspberrypi3-alpine:3.7-build" shape="ellipse"];
  "sha256:51d5326b31498313e39f4b562b7c5eb0f809f04b01dc17fc8dd79ad15319922d" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:3cd9b9c378ae42a6c6d0f4684b34ddac501e8bb36ddea919358346da293c42ea" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:4063377ce5ef0b33a520d60bd910012924cbf2be3a32245a380ec76558b75620" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9196444ab8bc30df89b1b133e0bb1a62b45d8025108e262331e4706a00d0ae12" [label="mkdir{path=/go}" shape="note"];
  "sha256:a881804f8fc08b8f9c9d76f620d554716448263f4f77ae9072288147f82f3513" [label="sha256:a881804f8fc08b8f9c9d76f620d554716448263f4f77ae9072288147f82f3513" shape="plaintext"];
  "sha256:6b1986aab6c8fc9291b1aaff2803bd4109e45ccadd0810c48e51b7096dce5527" -> "sha256:51d5326b31498313e39f4b562b7c5eb0f809f04b01dc17fc8dd79ad15319922d" [label=""];
  "sha256:51d5326b31498313e39f4b562b7c5eb0f809f04b01dc17fc8dd79ad15319922d" -> "sha256:3cd9b9c378ae42a6c6d0f4684b34ddac501e8bb36ddea919358346da293c42ea" [label=""];
  "sha256:3cd9b9c378ae42a6c6d0f4684b34ddac501e8bb36ddea919358346da293c42ea" -> "sha256:4063377ce5ef0b33a520d60bd910012924cbf2be3a32245a380ec76558b75620" [label=""];
  "sha256:4063377ce5ef0b33a520d60bd910012924cbf2be3a32245a380ec76558b75620" -> "sha256:9196444ab8bc30df89b1b133e0bb1a62b45d8025108e262331e4706a00d0ae12" [label=""];
  "sha256:9196444ab8bc30df89b1b133e0bb1a62b45d8025108e262331e4706a00d0ae12" -> "sha256:a881804f8fc08b8f9c9d76f620d554716448263f4f77ae9072288147f82f3513" [label=""];
}

