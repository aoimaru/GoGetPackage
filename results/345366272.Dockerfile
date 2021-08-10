[app/sources/345366272.Dockerfile]
digraph {
  "sha256:9be231d0c18d69fb6e06df11d1b5fc26b1286c63b637ade2988169afb7d0265b" [label="docker-image://docker.io/balenalib/i386-nlp-ubuntu:xenial-build" shape="ellipse"];
  "sha256:e338d23650d449b5481b552ff15a45e65790c807d73eb8711d1faabfea5d02c1" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-i386-nlp.tar.gz\" \t&& echo \"4311bd415762c95664dfee41ddc1e2c19bd3ffa85e20fb5f90951a69e2c33f0d  go$GO_VERSION.linux-i386-nlp.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-i386-nlp.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-i386-nlp.tar.gz" shape="box"];
  "sha256:dd4a4886f5135f73b7d2dd75fe5155f8eb0eea62c8ec506d8e22c18f819a009d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f7424d624eb316591ee764333b19d408918ecfcd41d1d3081b1607b0c8d630a4" [label="mkdir{path=/go}" shape="note"];
  "sha256:0e7b06ee8346ce6f65d99bf0279381a5850a624dd4b91d8472c845bd2866eb26" [label="sha256:0e7b06ee8346ce6f65d99bf0279381a5850a624dd4b91d8472c845bd2866eb26" shape="plaintext"];
  "sha256:9be231d0c18d69fb6e06df11d1b5fc26b1286c63b637ade2988169afb7d0265b" -> "sha256:e338d23650d449b5481b552ff15a45e65790c807d73eb8711d1faabfea5d02c1" [label=""];
  "sha256:e338d23650d449b5481b552ff15a45e65790c807d73eb8711d1faabfea5d02c1" -> "sha256:dd4a4886f5135f73b7d2dd75fe5155f8eb0eea62c8ec506d8e22c18f819a009d" [label=""];
  "sha256:dd4a4886f5135f73b7d2dd75fe5155f8eb0eea62c8ec506d8e22c18f819a009d" -> "sha256:f7424d624eb316591ee764333b19d408918ecfcd41d1d3081b1607b0c8d630a4" [label=""];
  "sha256:f7424d624eb316591ee764333b19d408918ecfcd41d1d3081b1607b0c8d630a4" -> "sha256:0e7b06ee8346ce6f65d99bf0279381a5850a624dd4b91d8472c845bd2866eb26" [label=""];
}

