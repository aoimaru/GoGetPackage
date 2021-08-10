[app/sources/345363151.Dockerfile]
digraph {
  "sha256:8379c6eafc3642a626635d250d4b6aafcc5a2e08d9c225f375bd6b7bdbc81c0f" [label="docker-image://docker.io/balenalib/aarch64-fedora:28-run" shape="ellipse"];
  "sha256:a191cfa233ee35ff8e465731e0e6ee952c64018186d83ecef434e2efba923348" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:41977fad7f1228a973c67ce359267f3ef9ad7cc30d812a769e71c9320261e801" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:abf79ce83121f6a00a106f78b98f8739683545dec5a74aa1a5b429e7eedadda2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:65030edbbb3618da364c45a99e7124d1dd3293920fd3ae1b0d88e314a3e8094c" [label="mkdir{path=/go}" shape="note"];
  "sha256:daf7020c89eca7e4a9af8bff312267664ae37a17a592eabc4ff8eabd62758f50" [label="sha256:daf7020c89eca7e4a9af8bff312267664ae37a17a592eabc4ff8eabd62758f50" shape="plaintext"];
  "sha256:8379c6eafc3642a626635d250d4b6aafcc5a2e08d9c225f375bd6b7bdbc81c0f" -> "sha256:a191cfa233ee35ff8e465731e0e6ee952c64018186d83ecef434e2efba923348" [label=""];
  "sha256:a191cfa233ee35ff8e465731e0e6ee952c64018186d83ecef434e2efba923348" -> "sha256:41977fad7f1228a973c67ce359267f3ef9ad7cc30d812a769e71c9320261e801" [label=""];
  "sha256:41977fad7f1228a973c67ce359267f3ef9ad7cc30d812a769e71c9320261e801" -> "sha256:abf79ce83121f6a00a106f78b98f8739683545dec5a74aa1a5b429e7eedadda2" [label=""];
  "sha256:abf79ce83121f6a00a106f78b98f8739683545dec5a74aa1a5b429e7eedadda2" -> "sha256:65030edbbb3618da364c45a99e7124d1dd3293920fd3ae1b0d88e314a3e8094c" [label=""];
  "sha256:65030edbbb3618da364c45a99e7124d1dd3293920fd3ae1b0d88e314a3e8094c" -> "sha256:daf7020c89eca7e4a9af8bff312267664ae37a17a592eabc4ff8eabd62758f50" [label=""];
}

