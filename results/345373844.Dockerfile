[app/sources/345373844.Dockerfile]
digraph {
  "sha256:5d81fa06d18f7c526ec23c147a490d760414c5b609134f3078ab593b801eb3b4" [label="docker-image://docker.io/balenalib/nanopc-t4-fedora:28-run" shape="ellipse"];
  "sha256:d20d1642f7dded0576e2c9e62713cb272d216121f003044ced22ca10894a630f" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:b65cc75a4a2467a8947a9b42aa9103a3c86942aedae0e8d0dc03abb323cf1c92" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:1d5200723a1b065ebd62f9c789ba29651178baafd94cedeb02d7cc3aa3e73e9a" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:df1643d395a8b244bf9e7f858f1fc7718ea5f274ff52e7df595ee05708d7955d" [label="mkdir{path=/go}" shape="note"];
  "sha256:000907b4248b4620c721052968210d6903bf8fea766b617a6b503dfe6f94ea62" [label="sha256:000907b4248b4620c721052968210d6903bf8fea766b617a6b503dfe6f94ea62" shape="plaintext"];
  "sha256:5d81fa06d18f7c526ec23c147a490d760414c5b609134f3078ab593b801eb3b4" -> "sha256:d20d1642f7dded0576e2c9e62713cb272d216121f003044ced22ca10894a630f" [label=""];
  "sha256:d20d1642f7dded0576e2c9e62713cb272d216121f003044ced22ca10894a630f" -> "sha256:b65cc75a4a2467a8947a9b42aa9103a3c86942aedae0e8d0dc03abb323cf1c92" [label=""];
  "sha256:b65cc75a4a2467a8947a9b42aa9103a3c86942aedae0e8d0dc03abb323cf1c92" -> "sha256:1d5200723a1b065ebd62f9c789ba29651178baafd94cedeb02d7cc3aa3e73e9a" [label=""];
  "sha256:1d5200723a1b065ebd62f9c789ba29651178baafd94cedeb02d7cc3aa3e73e9a" -> "sha256:df1643d395a8b244bf9e7f858f1fc7718ea5f274ff52e7df595ee05708d7955d" [label=""];
  "sha256:df1643d395a8b244bf9e7f858f1fc7718ea5f274ff52e7df595ee05708d7955d" -> "sha256:000907b4248b4620c721052968210d6903bf8fea766b617a6b503dfe6f94ea62" [label=""];
}

