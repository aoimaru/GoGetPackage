[app/sources/345360890.Dockerfile]
digraph {
  "sha256:ee80c86361c94c861456ad896f8a772aeae28ea21ea5bf2708b8eaf1747bdff5" [label="docker-image://docker.io/balenalib/ts4900-alpine:3.9-build" shape="ellipse"];
  "sha256:6296297866efe8698c6763dac278d2eeb3bd0c228c57bf021825bf01e2212e8f" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:61ff6469ca01910a5fb31b94e313a1729d4c210791f4f30bba867de842e02e4e" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:bda0b3a16f098e417f8810510ee243942383e7276325a057dfb20feff42548c4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:10b367cd39d0d6dcfdcb192e79e01aee2d3dc76e98a6f43afcecbee69d4f38b5" [label="mkdir{path=/go}" shape="note"];
  "sha256:9c59993dfe87418c2f52ace67dbe8e5dae17fccd8a569dcc27e3828825320423" [label="sha256:9c59993dfe87418c2f52ace67dbe8e5dae17fccd8a569dcc27e3828825320423" shape="plaintext"];
  "sha256:ee80c86361c94c861456ad896f8a772aeae28ea21ea5bf2708b8eaf1747bdff5" -> "sha256:6296297866efe8698c6763dac278d2eeb3bd0c228c57bf021825bf01e2212e8f" [label=""];
  "sha256:6296297866efe8698c6763dac278d2eeb3bd0c228c57bf021825bf01e2212e8f" -> "sha256:61ff6469ca01910a5fb31b94e313a1729d4c210791f4f30bba867de842e02e4e" [label=""];
  "sha256:61ff6469ca01910a5fb31b94e313a1729d4c210791f4f30bba867de842e02e4e" -> "sha256:bda0b3a16f098e417f8810510ee243942383e7276325a057dfb20feff42548c4" [label=""];
  "sha256:bda0b3a16f098e417f8810510ee243942383e7276325a057dfb20feff42548c4" -> "sha256:10b367cd39d0d6dcfdcb192e79e01aee2d3dc76e98a6f43afcecbee69d4f38b5" [label=""];
  "sha256:10b367cd39d0d6dcfdcb192e79e01aee2d3dc76e98a6f43afcecbee69d4f38b5" -> "sha256:9c59993dfe87418c2f52ace67dbe8e5dae17fccd8a569dcc27e3828825320423" [label=""];
}

