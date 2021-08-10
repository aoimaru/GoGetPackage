[app/sources/345359873.Dockerfile]
digraph {
  "sha256:3c12fb34f9ddaff143a4b2ba746ce7479018669fcd9e6675ca2a95adb02ab78b" [label="docker-image://docker.io/balenalib/revpi-core-3-ubuntu:xenial-run" shape="ellipse"];
  "sha256:4f2dce6380c98dc9460e86d3dc75d735af238f8a89384597c921d012f23e1082" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b553621e376ed608a01d560a2db048acc6a6623ce25e4166d0273e76eb8db994" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:8d1e436e62879a3f51a5892f077b1e18da3bd00f5b0e704b1878d528244ad9e8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e5820f27563e5b60015753712ec28034a86eac13b51b324fd135ee1f4993ecdc" [label="mkdir{path=/go}" shape="note"];
  "sha256:09794e09046c3a4c3bd4720500817620b2fb4b72938010638237719f9cc888b3" [label="sha256:09794e09046c3a4c3bd4720500817620b2fb4b72938010638237719f9cc888b3" shape="plaintext"];
  "sha256:3c12fb34f9ddaff143a4b2ba746ce7479018669fcd9e6675ca2a95adb02ab78b" -> "sha256:4f2dce6380c98dc9460e86d3dc75d735af238f8a89384597c921d012f23e1082" [label=""];
  "sha256:4f2dce6380c98dc9460e86d3dc75d735af238f8a89384597c921d012f23e1082" -> "sha256:b553621e376ed608a01d560a2db048acc6a6623ce25e4166d0273e76eb8db994" [label=""];
  "sha256:b553621e376ed608a01d560a2db048acc6a6623ce25e4166d0273e76eb8db994" -> "sha256:8d1e436e62879a3f51a5892f077b1e18da3bd00f5b0e704b1878d528244ad9e8" [label=""];
  "sha256:8d1e436e62879a3f51a5892f077b1e18da3bd00f5b0e704b1878d528244ad9e8" -> "sha256:e5820f27563e5b60015753712ec28034a86eac13b51b324fd135ee1f4993ecdc" [label=""];
  "sha256:e5820f27563e5b60015753712ec28034a86eac13b51b324fd135ee1f4993ecdc" -> "sha256:09794e09046c3a4c3bd4720500817620b2fb4b72938010638237719f9cc888b3" [label=""];
}

