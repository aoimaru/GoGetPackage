[app/sources/345367823.Dockerfile]
digraph {
  "sha256:17dce9d67d7029e2315a438bb359009273e9fcce4aef9a3333424265c6e346e7" [label="docker-image://docker.io/balenalib/artik5-debian:stretch-run" shape="ellipse"];
  "sha256:1f576179e584a6315f5749e0232da69dbce0b710ed16123f87bc82903be76cf7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:14dd4a4c3ed65a45095b0ec5267d9f0ac43d29c6cb72f33d2e515f150ae05d5d" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:6a6ec19f28bbc4e08cfa0e13df93e3e5b9e027b453e95df7f404bb2bca6bd2d5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a43bbfa0bbfef7e9a02d6270304ea8bcfaaa9a26d361b2c9bc3934c84d31f016" [label="mkdir{path=/go}" shape="note"];
  "sha256:f012f960f0a57c459faa0f689c366946361553452254ea796ae1c3be38c269d3" [label="sha256:f012f960f0a57c459faa0f689c366946361553452254ea796ae1c3be38c269d3" shape="plaintext"];
  "sha256:17dce9d67d7029e2315a438bb359009273e9fcce4aef9a3333424265c6e346e7" -> "sha256:1f576179e584a6315f5749e0232da69dbce0b710ed16123f87bc82903be76cf7" [label=""];
  "sha256:1f576179e584a6315f5749e0232da69dbce0b710ed16123f87bc82903be76cf7" -> "sha256:14dd4a4c3ed65a45095b0ec5267d9f0ac43d29c6cb72f33d2e515f150ae05d5d" [label=""];
  "sha256:14dd4a4c3ed65a45095b0ec5267d9f0ac43d29c6cb72f33d2e515f150ae05d5d" -> "sha256:6a6ec19f28bbc4e08cfa0e13df93e3e5b9e027b453e95df7f404bb2bca6bd2d5" [label=""];
  "sha256:6a6ec19f28bbc4e08cfa0e13df93e3e5b9e027b453e95df7f404bb2bca6bd2d5" -> "sha256:a43bbfa0bbfef7e9a02d6270304ea8bcfaaa9a26d361b2c9bc3934c84d31f016" [label=""];
  "sha256:a43bbfa0bbfef7e9a02d6270304ea8bcfaaa9a26d361b2c9bc3934c84d31f016" -> "sha256:f012f960f0a57c459faa0f689c366946361553452254ea796ae1c3be38c269d3" [label=""];
}

