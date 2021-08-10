[app/sources/345374876.Dockerfile]
digraph {
  "sha256:969c84804399afebd3b5bd7659c335ac50aa66cac8bdd41154cb89dfb2198cbe" [label="docker-image://docker.io/balenalib/nanopc-t4-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:04a5ceb671f148aa1fd34b3edfa3d691e818c2eba72705973db34958c1400955" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4223a0c04715e3abc6e546588104bb243f937a612cdaa434f6e2ce6b3eee9bbe" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"ff09f34935cd189a4912f3f308ec83e4683c309304144eae9cf60ebc552e7cd8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:f34194da9f1931eab46f5951669e9a3bd76ecefdaaa23dbfdd0ceaccf03caddd" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:604eaf3111c2dd8c84b3c2ce0551e71610975170a966601dec92450a82e0ba8b" [label="mkdir{path=/go}" shape="note"];
  "sha256:5cfb77b3d437ba0e9046976f1cfd5ee622b561c31cbf590657e07eb3e6bf0b11" [label="sha256:5cfb77b3d437ba0e9046976f1cfd5ee622b561c31cbf590657e07eb3e6bf0b11" shape="plaintext"];
  "sha256:969c84804399afebd3b5bd7659c335ac50aa66cac8bdd41154cb89dfb2198cbe" -> "sha256:04a5ceb671f148aa1fd34b3edfa3d691e818c2eba72705973db34958c1400955" [label=""];
  "sha256:04a5ceb671f148aa1fd34b3edfa3d691e818c2eba72705973db34958c1400955" -> "sha256:4223a0c04715e3abc6e546588104bb243f937a612cdaa434f6e2ce6b3eee9bbe" [label=""];
  "sha256:4223a0c04715e3abc6e546588104bb243f937a612cdaa434f6e2ce6b3eee9bbe" -> "sha256:f34194da9f1931eab46f5951669e9a3bd76ecefdaaa23dbfdd0ceaccf03caddd" [label=""];
  "sha256:f34194da9f1931eab46f5951669e9a3bd76ecefdaaa23dbfdd0ceaccf03caddd" -> "sha256:604eaf3111c2dd8c84b3c2ce0551e71610975170a966601dec92450a82e0ba8b" [label=""];
  "sha256:604eaf3111c2dd8c84b3c2ce0551e71610975170a966601dec92450a82e0ba8b" -> "sha256:5cfb77b3d437ba0e9046976f1cfd5ee622b561c31cbf590657e07eb3e6bf0b11" [label=""];
}

