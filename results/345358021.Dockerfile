[app/sources/345358021.Dockerfile]
digraph {
  "sha256:02d85f8b35a37859d05d4ca7d3b6b3002c5b20e547abc32768ddb40929544924" [label="docker-image://docker.io/balenalib/raspberry-pi2-debian:sid-build" shape="ellipse"];
  "sha256:57ec0db0f33cbcc8babefea97f19aa07825657005afae3c37fa80473ec2595e6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:be71359baecbcd09a39fee607e961864b37b3ca8eeed57e8830eee7b644a5cf1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:bad7b2d7717630acd6d6051b28e3415df0dec90cb51b08d22cdd52ab284ba7f8" [label="mkdir{path=/go}" shape="note"];
  "sha256:2efd037d9dc7c14fb24616d463953daf8b8686c9adbe8844595f92da1c652c41" [label="sha256:2efd037d9dc7c14fb24616d463953daf8b8686c9adbe8844595f92da1c652c41" shape="plaintext"];
  "sha256:02d85f8b35a37859d05d4ca7d3b6b3002c5b20e547abc32768ddb40929544924" -> "sha256:57ec0db0f33cbcc8babefea97f19aa07825657005afae3c37fa80473ec2595e6" [label=""];
  "sha256:57ec0db0f33cbcc8babefea97f19aa07825657005afae3c37fa80473ec2595e6" -> "sha256:be71359baecbcd09a39fee607e961864b37b3ca8eeed57e8830eee7b644a5cf1" [label=""];
  "sha256:be71359baecbcd09a39fee607e961864b37b3ca8eeed57e8830eee7b644a5cf1" -> "sha256:bad7b2d7717630acd6d6051b28e3415df0dec90cb51b08d22cdd52ab284ba7f8" [label=""];
  "sha256:bad7b2d7717630acd6d6051b28e3415df0dec90cb51b08d22cdd52ab284ba7f8" -> "sha256:2efd037d9dc7c14fb24616d463953daf8b8686c9adbe8844595f92da1c652c41" [label=""];
}

