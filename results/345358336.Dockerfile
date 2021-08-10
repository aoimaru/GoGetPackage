[app/sources/345358336.Dockerfile]
digraph {
  "sha256:cc8472081c5744d13a67ae0fba78dfd15372a28b40bc6cf5d14d86708a8b7314" [label="docker-image://docker.io/balenalib/revpi-core-3-alpine:edge-run" shape="ellipse"];
  "sha256:e76e930a3e465e5415fd470faa2e6076a0b2c702a2ef21417d9072d1f13aed52" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:c32066fd41ccb279f94deabaa5d0ffb48b60773fb718924e5546fd3a9b6cb7c7" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:70b9aec60d57587a821f43baaefc5e7529ffa2903740784598b019f15ca6500a" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:f75d42e72ec14d10db9cd3f304d07d63d37d1a488c8fcfb795f5aef3dce64480" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:dc799a14dd4312a4d6e044eae6ed7299a670f73c619b92d755c30889a9823a51" [label="mkdir{path=/go}" shape="note"];
  "sha256:d07a6ec4ee4d012c78aae1962e5a72205666e1954a78bd9715bf2c5b9a1a43ff" [label="sha256:d07a6ec4ee4d012c78aae1962e5a72205666e1954a78bd9715bf2c5b9a1a43ff" shape="plaintext"];
  "sha256:cc8472081c5744d13a67ae0fba78dfd15372a28b40bc6cf5d14d86708a8b7314" -> "sha256:e76e930a3e465e5415fd470faa2e6076a0b2c702a2ef21417d9072d1f13aed52" [label=""];
  "sha256:e76e930a3e465e5415fd470faa2e6076a0b2c702a2ef21417d9072d1f13aed52" -> "sha256:c32066fd41ccb279f94deabaa5d0ffb48b60773fb718924e5546fd3a9b6cb7c7" [label=""];
  "sha256:c32066fd41ccb279f94deabaa5d0ffb48b60773fb718924e5546fd3a9b6cb7c7" -> "sha256:70b9aec60d57587a821f43baaefc5e7529ffa2903740784598b019f15ca6500a" [label=""];
  "sha256:70b9aec60d57587a821f43baaefc5e7529ffa2903740784598b019f15ca6500a" -> "sha256:f75d42e72ec14d10db9cd3f304d07d63d37d1a488c8fcfb795f5aef3dce64480" [label=""];
  "sha256:f75d42e72ec14d10db9cd3f304d07d63d37d1a488c8fcfb795f5aef3dce64480" -> "sha256:dc799a14dd4312a4d6e044eae6ed7299a670f73c619b92d755c30889a9823a51" [label=""];
  "sha256:dc799a14dd4312a4d6e044eae6ed7299a670f73c619b92d755c30889a9823a51" -> "sha256:d07a6ec4ee4d012c78aae1962e5a72205666e1954a78bd9715bf2c5b9a1a43ff" [label=""];
}

