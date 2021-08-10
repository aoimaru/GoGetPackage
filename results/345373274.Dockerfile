[app/sources/345373274.Dockerfile]
digraph {
  "sha256:60829c12383dbf6a7e076c81cb94cd81eea08659c3de111af41b85020e48a915" [label="docker-image://docker.io/balenalib/jetson-tx1-fedora:26-run" shape="ellipse"];
  "sha256:8bb9d66a37f1e4b4169809ebd004997a8a5d3a1dbdb5bffe0672b4bd54432d23" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:320b1a0c9f60c3632077f0b62f1cbe3a1b9adc80aea314c320f9345d90b0ff6d" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:df0b698f02fc0d65a1f848a50393170994d6d5b65c4f355282c2a0e135e99d11" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:30cc733b0030abd6912094295be2659ee20343115c4206f2dc4ea117e71e10f0" [label="mkdir{path=/go}" shape="note"];
  "sha256:257b8cdefb9a8e07c65ce19b239fcc7c82b11c3667c43e1fa72644d606e4a3ef" [label="sha256:257b8cdefb9a8e07c65ce19b239fcc7c82b11c3667c43e1fa72644d606e4a3ef" shape="plaintext"];
  "sha256:60829c12383dbf6a7e076c81cb94cd81eea08659c3de111af41b85020e48a915" -> "sha256:8bb9d66a37f1e4b4169809ebd004997a8a5d3a1dbdb5bffe0672b4bd54432d23" [label=""];
  "sha256:8bb9d66a37f1e4b4169809ebd004997a8a5d3a1dbdb5bffe0672b4bd54432d23" -> "sha256:320b1a0c9f60c3632077f0b62f1cbe3a1b9adc80aea314c320f9345d90b0ff6d" [label=""];
  "sha256:320b1a0c9f60c3632077f0b62f1cbe3a1b9adc80aea314c320f9345d90b0ff6d" -> "sha256:df0b698f02fc0d65a1f848a50393170994d6d5b65c4f355282c2a0e135e99d11" [label=""];
  "sha256:df0b698f02fc0d65a1f848a50393170994d6d5b65c4f355282c2a0e135e99d11" -> "sha256:30cc733b0030abd6912094295be2659ee20343115c4206f2dc4ea117e71e10f0" [label=""];
  "sha256:30cc733b0030abd6912094295be2659ee20343115c4206f2dc4ea117e71e10f0" -> "sha256:257b8cdefb9a8e07c65ce19b239fcc7c82b11c3667c43e1fa72644d606e4a3ef" [label=""];
}

