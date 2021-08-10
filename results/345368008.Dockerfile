[app/sources/345368008.Dockerfile]
digraph {
  "sha256:0ada01a2075e23bf44da2f6ea535385a861b60b3864a474ff5bb019e2aaa1497" [label="docker-image://docker.io/balenalib/artik533s-alpine:3.9-build@sha256:ebc3bd8eb216d16757c5a13b56f5eb141532bcdb51a97dc8a1a0cde93b387354" shape="ellipse"];
  "sha256:c2fd30d289290b78b2d34edaea29f48bb1d1498588c1f3c6c969dbe578f17707" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:ea8652aa6ecea321e80ebc9f5550c74f618c7a38b34abd6d2533b5d9a27fc002" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:52d35fd5d99afd2a600671195c72b85c636fdc544e83d14f6846b03b1366f9e4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:cc5c1ae344faca5aeb00b56ad45338d5b11c119b541c1011d13f23b989f62992" [label="mkdir{path=/go}" shape="note"];
  "sha256:9f3d89fbc735af10e0ec7a4a069792c621335e130e19592f9739867ad4cfdf15" [label="sha256:9f3d89fbc735af10e0ec7a4a069792c621335e130e19592f9739867ad4cfdf15" shape="plaintext"];
  "sha256:0ada01a2075e23bf44da2f6ea535385a861b60b3864a474ff5bb019e2aaa1497" -> "sha256:c2fd30d289290b78b2d34edaea29f48bb1d1498588c1f3c6c969dbe578f17707" [label=""];
  "sha256:c2fd30d289290b78b2d34edaea29f48bb1d1498588c1f3c6c969dbe578f17707" -> "sha256:ea8652aa6ecea321e80ebc9f5550c74f618c7a38b34abd6d2533b5d9a27fc002" [label=""];
  "sha256:ea8652aa6ecea321e80ebc9f5550c74f618c7a38b34abd6d2533b5d9a27fc002" -> "sha256:52d35fd5d99afd2a600671195c72b85c636fdc544e83d14f6846b03b1366f9e4" [label=""];
  "sha256:52d35fd5d99afd2a600671195c72b85c636fdc544e83d14f6846b03b1366f9e4" -> "sha256:cc5c1ae344faca5aeb00b56ad45338d5b11c119b541c1011d13f23b989f62992" [label=""];
  "sha256:cc5c1ae344faca5aeb00b56ad45338d5b11c119b541c1011d13f23b989f62992" -> "sha256:9f3d89fbc735af10e0ec7a4a069792c621335e130e19592f9739867ad4cfdf15" [label=""];
}

