[app/sources/345375186.Dockerfile]
digraph {
  "sha256:92ac6147ddbcfa1d2d140ddfac8936a4d117f9a03651f2afbd1cf48876f44c7f" [label="docker-image://docker.io/balenalib/nitrogen6xq2g-ubuntu:artful-run" shape="ellipse"];
  "sha256:b83f24c987210ea4cd8bcfbfab2064691fd462ed2ef13fa17ec8434cf9e26feb" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1d604d04d23f75abf1d2a63578de3d70545671f6fa3cc6c5ecf3f47c51a36dcc" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:cefd1f02f69bf327ff62e2c12521f970526f823c11598ef936c11d6ec98c3e83" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:65c87420c29284637bafc76979bd1d596672f088b774b6eff414cacbfa932096" [label="mkdir{path=/go}" shape="note"];
  "sha256:2ed772dcccd9b8a14fd30507ee6c50f98662820eb031e494b962bd8d87c687e5" [label="sha256:2ed772dcccd9b8a14fd30507ee6c50f98662820eb031e494b962bd8d87c687e5" shape="plaintext"];
  "sha256:92ac6147ddbcfa1d2d140ddfac8936a4d117f9a03651f2afbd1cf48876f44c7f" -> "sha256:b83f24c987210ea4cd8bcfbfab2064691fd462ed2ef13fa17ec8434cf9e26feb" [label=""];
  "sha256:b83f24c987210ea4cd8bcfbfab2064691fd462ed2ef13fa17ec8434cf9e26feb" -> "sha256:1d604d04d23f75abf1d2a63578de3d70545671f6fa3cc6c5ecf3f47c51a36dcc" [label=""];
  "sha256:1d604d04d23f75abf1d2a63578de3d70545671f6fa3cc6c5ecf3f47c51a36dcc" -> "sha256:cefd1f02f69bf327ff62e2c12521f970526f823c11598ef936c11d6ec98c3e83" [label=""];
  "sha256:cefd1f02f69bf327ff62e2c12521f970526f823c11598ef936c11d6ec98c3e83" -> "sha256:65c87420c29284637bafc76979bd1d596672f088b774b6eff414cacbfa932096" [label=""];
  "sha256:65c87420c29284637bafc76979bd1d596672f088b774b6eff414cacbfa932096" -> "sha256:2ed772dcccd9b8a14fd30507ee6c50f98662820eb031e494b962bd8d87c687e5" [label=""];
}

