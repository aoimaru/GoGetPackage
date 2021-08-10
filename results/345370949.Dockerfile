[app/sources/345370949.Dockerfile]
digraph {
  "sha256:6eb644821598fa0f354a246f008e44bd91f9f5fc26586f0689636aaa9224c606" [label="docker-image://docker.io/balenalib/beaglebone-green-wifi-ubuntu:trusty-run" shape="ellipse"];
  "sha256:47519304006267b1fe677e76992fe34aedb21b5c347a1396229928a27d1cd339" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:469949b8fd36f5b172b275e11252e2860990cb33844708ebd3cf436557d8931c" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:da3b5ad0d9aa83432a762ef598169b5b114099c41b9ee0589bc1e82436dbb817" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b24d2421a86b05815a8f6f2f6bbcd8e8acbc42a405eeaec239280bd0b2db7860" [label="mkdir{path=/go}" shape="note"];
  "sha256:4452df3e598a2f453033c4f8e4e97a75b9230e75d9f5d009e52bb8feb2842678" [label="sha256:4452df3e598a2f453033c4f8e4e97a75b9230e75d9f5d009e52bb8feb2842678" shape="plaintext"];
  "sha256:6eb644821598fa0f354a246f008e44bd91f9f5fc26586f0689636aaa9224c606" -> "sha256:47519304006267b1fe677e76992fe34aedb21b5c347a1396229928a27d1cd339" [label=""];
  "sha256:47519304006267b1fe677e76992fe34aedb21b5c347a1396229928a27d1cd339" -> "sha256:469949b8fd36f5b172b275e11252e2860990cb33844708ebd3cf436557d8931c" [label=""];
  "sha256:469949b8fd36f5b172b275e11252e2860990cb33844708ebd3cf436557d8931c" -> "sha256:da3b5ad0d9aa83432a762ef598169b5b114099c41b9ee0589bc1e82436dbb817" [label=""];
  "sha256:da3b5ad0d9aa83432a762ef598169b5b114099c41b9ee0589bc1e82436dbb817" -> "sha256:b24d2421a86b05815a8f6f2f6bbcd8e8acbc42a405eeaec239280bd0b2db7860" [label=""];
  "sha256:b24d2421a86b05815a8f6f2f6bbcd8e8acbc42a405eeaec239280bd0b2db7860" -> "sha256:4452df3e598a2f453033c4f8e4e97a75b9230e75d9f5d009e52bb8feb2842678" [label=""];
}

