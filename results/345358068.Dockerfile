[app/sources/345358068.Dockerfile]
digraph {
  "sha256:323d3952e39deed15b44f8627b31836cb2b2df476dc7d0724fdd6ac8adb13046" [label="docker-image://docker.io/balenalib/raspberry-pi2-ubuntu:trusty-run" shape="ellipse"];
  "sha256:f0e829e049fa7aba067e0e4539bc1e1179e3452eed9324f17b7801ed1afd6f72" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1ace4e4360c1b7f281122f1946a1cca9d8e70454c71fb0c682c900d7c124cd9d" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:713bdb7574fe39565baf321720b670b6f0db57a024a875cafcfd25ad3d531192" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9d2115388982f282cf031f4a1b5689877921974928e1b38f2f6e5e2c4bf07a8f" [label="mkdir{path=/go}" shape="note"];
  "sha256:a3cc1d216ca1e757b64f57c75abc48d83fa869feac2a4caedeb6cadfb494fc2e" [label="sha256:a3cc1d216ca1e757b64f57c75abc48d83fa869feac2a4caedeb6cadfb494fc2e" shape="plaintext"];
  "sha256:323d3952e39deed15b44f8627b31836cb2b2df476dc7d0724fdd6ac8adb13046" -> "sha256:f0e829e049fa7aba067e0e4539bc1e1179e3452eed9324f17b7801ed1afd6f72" [label=""];
  "sha256:f0e829e049fa7aba067e0e4539bc1e1179e3452eed9324f17b7801ed1afd6f72" -> "sha256:1ace4e4360c1b7f281122f1946a1cca9d8e70454c71fb0c682c900d7c124cd9d" [label=""];
  "sha256:1ace4e4360c1b7f281122f1946a1cca9d8e70454c71fb0c682c900d7c124cd9d" -> "sha256:713bdb7574fe39565baf321720b670b6f0db57a024a875cafcfd25ad3d531192" [label=""];
  "sha256:713bdb7574fe39565baf321720b670b6f0db57a024a875cafcfd25ad3d531192" -> "sha256:9d2115388982f282cf031f4a1b5689877921974928e1b38f2f6e5e2c4bf07a8f" [label=""];
  "sha256:9d2115388982f282cf031f4a1b5689877921974928e1b38f2f6e5e2c4bf07a8f" -> "sha256:a3cc1d216ca1e757b64f57c75abc48d83fa869feac2a4caedeb6cadfb494fc2e" [label=""];
}

