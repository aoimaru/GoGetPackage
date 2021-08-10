[app/sources/345366527.Dockerfile]
digraph {
  "sha256:13829bcc7f1858122aaa466189d0ea8a347d335a0d7b671c76e0950e079bb3ac" [label="docker-image://docker.io/balenalib/imx7-var-som-debian:stretch-run" shape="ellipse"];
  "sha256:2f959bc4451775b326f620a2f3d71b85e1f8fe1c606fe8899fe8a1ca7f0e1fad" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b41323e4f7f309ef08243e700b77fa313045d7fe86d61524499811aa082b4abc" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:bf7a43a4211dc2ebba9f77da211116099be33fde18ef0f71251532f9a797b25d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:96cc458cf7c9ea71451b382825add5432cda525bf48e230bf4a61fe81a803653" [label="mkdir{path=/go}" shape="note"];
  "sha256:25a4a87d3478fcf565f8195dbfde5277ea384d4441b41ac33a48c519b04b2acc" [label="sha256:25a4a87d3478fcf565f8195dbfde5277ea384d4441b41ac33a48c519b04b2acc" shape="plaintext"];
  "sha256:13829bcc7f1858122aaa466189d0ea8a347d335a0d7b671c76e0950e079bb3ac" -> "sha256:2f959bc4451775b326f620a2f3d71b85e1f8fe1c606fe8899fe8a1ca7f0e1fad" [label=""];
  "sha256:2f959bc4451775b326f620a2f3d71b85e1f8fe1c606fe8899fe8a1ca7f0e1fad" -> "sha256:b41323e4f7f309ef08243e700b77fa313045d7fe86d61524499811aa082b4abc" [label=""];
  "sha256:b41323e4f7f309ef08243e700b77fa313045d7fe86d61524499811aa082b4abc" -> "sha256:bf7a43a4211dc2ebba9f77da211116099be33fde18ef0f71251532f9a797b25d" [label=""];
  "sha256:bf7a43a4211dc2ebba9f77da211116099be33fde18ef0f71251532f9a797b25d" -> "sha256:96cc458cf7c9ea71451b382825add5432cda525bf48e230bf4a61fe81a803653" [label=""];
  "sha256:96cc458cf7c9ea71451b382825add5432cda525bf48e230bf4a61fe81a803653" -> "sha256:25a4a87d3478fcf565f8195dbfde5277ea384d4441b41ac33a48c519b04b2acc" [label=""];
}

