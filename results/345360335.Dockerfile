[app/sources/345360335.Dockerfile]
digraph {
  "sha256:f0a7e0863f510b5ce4f86a3a8fba39778f7a5ace069c9eef4152b41119501e3e" [label="docker-image://docker.io/balenalib/srd3-tx2-fedora:26-run" shape="ellipse"];
  "sha256:06e45c735fa44515a7a23323741c10d35abe3469236f18268dfbc10cf441a694" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:094448c3b3ad3b29986080fb4bc4e1f399ded44a85124bb0df698401a895b835" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:42f211d29a54067e1e2bd5fe7c18d3c17f42b961f2ba4e743036ea50aaeed06c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:57f0726e0caba266fdfb27f0ffd604ac773550ceb2e14ffc683101c1ff166897" [label="mkdir{path=/go}" shape="note"];
  "sha256:328b8ba1248bfc8bf25d4bca4e21f255876b19bc2db1ec6c713a257b2d9c5477" [label="sha256:328b8ba1248bfc8bf25d4bca4e21f255876b19bc2db1ec6c713a257b2d9c5477" shape="plaintext"];
  "sha256:f0a7e0863f510b5ce4f86a3a8fba39778f7a5ace069c9eef4152b41119501e3e" -> "sha256:06e45c735fa44515a7a23323741c10d35abe3469236f18268dfbc10cf441a694" [label=""];
  "sha256:06e45c735fa44515a7a23323741c10d35abe3469236f18268dfbc10cf441a694" -> "sha256:094448c3b3ad3b29986080fb4bc4e1f399ded44a85124bb0df698401a895b835" [label=""];
  "sha256:094448c3b3ad3b29986080fb4bc4e1f399ded44a85124bb0df698401a895b835" -> "sha256:42f211d29a54067e1e2bd5fe7c18d3c17f42b961f2ba4e743036ea50aaeed06c" [label=""];
  "sha256:42f211d29a54067e1e2bd5fe7c18d3c17f42b961f2ba4e743036ea50aaeed06c" -> "sha256:57f0726e0caba266fdfb27f0ffd604ac773550ceb2e14ffc683101c1ff166897" [label=""];
  "sha256:57f0726e0caba266fdfb27f0ffd604ac773550ceb2e14ffc683101c1ff166897" -> "sha256:328b8ba1248bfc8bf25d4bca4e21f255876b19bc2db1ec6c713a257b2d9c5477" [label=""];
}

