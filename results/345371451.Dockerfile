[app/sources/345371451.Dockerfile]
digraph {
  "sha256:0bae854561ab534079762c28ed051b418335d9b788172298e9fa46b2cbad56fd" [label="docker-image://docker.io/balenalib/cl-som-imx8-debian:sid-run" shape="ellipse"];
  "sha256:7e8f004a01b4eefa97393120be2395850be00c6bdb72655a52a4554083f9b786" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a289a31ae791b381b7d95f1c3a7c2b822993f69b9bc5616c386a35b2ee0c3d84" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:830cb3302589abbd6583316de620ca3735083a5b69efc046bb5b5b4307ea79b4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:84fc255e46e5f8774a870f7e0f514986fe1c62a863bf490e8a0c1c4ced103fef" [label="mkdir{path=/go}" shape="note"];
  "sha256:83c99bd6c69064463773c7590c17886f26cab14ab0ef6c5e910b9e43db5393d4" [label="sha256:83c99bd6c69064463773c7590c17886f26cab14ab0ef6c5e910b9e43db5393d4" shape="plaintext"];
  "sha256:0bae854561ab534079762c28ed051b418335d9b788172298e9fa46b2cbad56fd" -> "sha256:7e8f004a01b4eefa97393120be2395850be00c6bdb72655a52a4554083f9b786" [label=""];
  "sha256:7e8f004a01b4eefa97393120be2395850be00c6bdb72655a52a4554083f9b786" -> "sha256:a289a31ae791b381b7d95f1c3a7c2b822993f69b9bc5616c386a35b2ee0c3d84" [label=""];
  "sha256:a289a31ae791b381b7d95f1c3a7c2b822993f69b9bc5616c386a35b2ee0c3d84" -> "sha256:830cb3302589abbd6583316de620ca3735083a5b69efc046bb5b5b4307ea79b4" [label=""];
  "sha256:830cb3302589abbd6583316de620ca3735083a5b69efc046bb5b5b4307ea79b4" -> "sha256:84fc255e46e5f8774a870f7e0f514986fe1c62a863bf490e8a0c1c4ced103fef" [label=""];
  "sha256:84fc255e46e5f8774a870f7e0f514986fe1c62a863bf490e8a0c1c4ced103fef" -> "sha256:83c99bd6c69064463773c7590c17886f26cab14ab0ef6c5e910b9e43db5393d4" [label=""];
}

