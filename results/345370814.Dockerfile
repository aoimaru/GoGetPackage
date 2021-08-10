[app/sources/345370814.Dockerfile]
digraph {
  "sha256:3cfa92809d8440064cbfeba1326e46622fac4ffda2db0bb1fe6bec8a8bda54bc" [label="docker-image://docker.io/balenalib/beaglebone-fastenal-fedora:28-build" shape="ellipse"];
  "sha256:64ad401ea3ad6582fb885bf07f73c1f3ac87fd0bd68fc937801db8daf157c2f7" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:9d38d8fb0c934a6620a9c3a6544b05a400ccb1dfd4244d6894bbb69d3206c9a6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:2c24906bcbad830d56e489a4d9a0422e0ce191ca98126ca58242e0b2d5b12a79" [label="mkdir{path=/go}" shape="note"];
  "sha256:0df9486a34a4f23e2ea66fe6155c6111acdb372977efd2fc7ca9acb8c2007bb3" [label="sha256:0df9486a34a4f23e2ea66fe6155c6111acdb372977efd2fc7ca9acb8c2007bb3" shape="plaintext"];
  "sha256:3cfa92809d8440064cbfeba1326e46622fac4ffda2db0bb1fe6bec8a8bda54bc" -> "sha256:64ad401ea3ad6582fb885bf07f73c1f3ac87fd0bd68fc937801db8daf157c2f7" [label=""];
  "sha256:64ad401ea3ad6582fb885bf07f73c1f3ac87fd0bd68fc937801db8daf157c2f7" -> "sha256:9d38d8fb0c934a6620a9c3a6544b05a400ccb1dfd4244d6894bbb69d3206c9a6" [label=""];
  "sha256:9d38d8fb0c934a6620a9c3a6544b05a400ccb1dfd4244d6894bbb69d3206c9a6" -> "sha256:2c24906bcbad830d56e489a4d9a0422e0ce191ca98126ca58242e0b2d5b12a79" [label=""];
  "sha256:2c24906bcbad830d56e489a4d9a0422e0ce191ca98126ca58242e0b2d5b12a79" -> "sha256:0df9486a34a4f23e2ea66fe6155c6111acdb372977efd2fc7ca9acb8c2007bb3" [label=""];
}

