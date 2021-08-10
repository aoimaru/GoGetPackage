[app/sources/345366559.Dockerfile]
digraph {
  "sha256:60bceb2bfb6ff39178e0b5e5b81c15f5dc66d898e95b396cf3a50a32dddf8f4f" [label="docker-image://docker.io/balenalib/imx7-var-som-ubuntu:bionic-run@sha256:2d8f5a1356185d6c55563a60fc145e429e31a34412ce7172f851dea5095b5b2f" shape="ellipse"];
  "sha256:a82fd96787f14a4cacc227dcd8277470aea22f045df51aedf216aba42b56a951" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e5c27fa5d30e32bdfdcf57e3a5a94ba13f41523399a7f447b927445ce53fb37c" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:5efe88a398dbbf2bd02b1ba2f46a0ec9b07004b6531058ad42a384854534d91c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c5cb44f624de5315f30f300080d1dc62942d51b6a97ec050c90baa3f9a88a5e5" [label="mkdir{path=/go}" shape="note"];
  "sha256:af5f720df054a33080a80038cfd93862af4b59b36ea3acfe1f5659c9943042cf" [label="sha256:af5f720df054a33080a80038cfd93862af4b59b36ea3acfe1f5659c9943042cf" shape="plaintext"];
  "sha256:60bceb2bfb6ff39178e0b5e5b81c15f5dc66d898e95b396cf3a50a32dddf8f4f" -> "sha256:a82fd96787f14a4cacc227dcd8277470aea22f045df51aedf216aba42b56a951" [label=""];
  "sha256:a82fd96787f14a4cacc227dcd8277470aea22f045df51aedf216aba42b56a951" -> "sha256:e5c27fa5d30e32bdfdcf57e3a5a94ba13f41523399a7f447b927445ce53fb37c" [label=""];
  "sha256:e5c27fa5d30e32bdfdcf57e3a5a94ba13f41523399a7f447b927445ce53fb37c" -> "sha256:5efe88a398dbbf2bd02b1ba2f46a0ec9b07004b6531058ad42a384854534d91c" [label=""];
  "sha256:5efe88a398dbbf2bd02b1ba2f46a0ec9b07004b6531058ad42a384854534d91c" -> "sha256:c5cb44f624de5315f30f300080d1dc62942d51b6a97ec050c90baa3f9a88a5e5" [label=""];
  "sha256:c5cb44f624de5315f30f300080d1dc62942d51b6a97ec050c90baa3f9a88a5e5" -> "sha256:af5f720df054a33080a80038cfd93862af4b59b36ea3acfe1f5659c9943042cf" [label=""];
}

