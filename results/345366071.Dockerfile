[app/sources/345366071.Dockerfile]
digraph {
  "sha256:ee32b1ca9741ed04f6f14d7588ee60c1afc992057ace8a2a1975c7d8a9913d45" [label="docker-image://docker.io/balenalib/generic-armv7ahf-fedora:28-run" shape="ellipse"];
  "sha256:d407076dbd66a718cfd784f546e544ee3d4b34137ee13279daa0ae7923c77edf" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:6a5c0729e0ba03d7494e97760df71173a2456163b48e0c715b6576a1e221e48a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:06b7635f99276b8c7509b2f5a568372126ab578a28a6c01430d6e02cb3905ae5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7f044a152e32f85a9f29bd36657129276517cdb22f61fef402d1f014c68212b6" [label="mkdir{path=/go}" shape="note"];
  "sha256:5393d099f8093544c1c30677c44df4d62b0cafce3e05137ebc9d3cc1948658f8" [label="sha256:5393d099f8093544c1c30677c44df4d62b0cafce3e05137ebc9d3cc1948658f8" shape="plaintext"];
  "sha256:ee32b1ca9741ed04f6f14d7588ee60c1afc992057ace8a2a1975c7d8a9913d45" -> "sha256:d407076dbd66a718cfd784f546e544ee3d4b34137ee13279daa0ae7923c77edf" [label=""];
  "sha256:d407076dbd66a718cfd784f546e544ee3d4b34137ee13279daa0ae7923c77edf" -> "sha256:6a5c0729e0ba03d7494e97760df71173a2456163b48e0c715b6576a1e221e48a" [label=""];
  "sha256:6a5c0729e0ba03d7494e97760df71173a2456163b48e0c715b6576a1e221e48a" -> "sha256:06b7635f99276b8c7509b2f5a568372126ab578a28a6c01430d6e02cb3905ae5" [label=""];
  "sha256:06b7635f99276b8c7509b2f5a568372126ab578a28a6c01430d6e02cb3905ae5" -> "sha256:7f044a152e32f85a9f29bd36657129276517cdb22f61fef402d1f014c68212b6" [label=""];
  "sha256:7f044a152e32f85a9f29bd36657129276517cdb22f61fef402d1f014c68212b6" -> "sha256:5393d099f8093544c1c30677c44df4d62b0cafce3e05137ebc9d3cc1948658f8" [label=""];
}

