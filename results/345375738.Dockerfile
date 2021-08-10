[app/sources/345375738.Dockerfile]
digraph {
  "sha256:568bc4df1a6bcfcb34ae96a8dca07429b5b1e3942d9885de8fe9f5e359282c49" [label="docker-image://docker.io/balenalib/orange-pi-one-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:ed77245ec5c85694c85ff3efec2a529e25a6f3b21ca3276a97f0eba968861d6a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8886342e376ff7a32d5746478b9112cce7df7292fa3792c4cade673e0a4e8bbc" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:d5ce356110d540a962b72178dbb03a6452c7a499a398f1f3cfd0f56abb0e25c1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:33b048e44cbbca0d6d49f004643bbdfac840e85f98f037a5fea89346a05d9ec1" [label="mkdir{path=/go}" shape="note"];
  "sha256:c9bff358511861f82d17763fac3bf8a3ab92b42b56b801d29d0c982935e551fb" [label="sha256:c9bff358511861f82d17763fac3bf8a3ab92b42b56b801d29d0c982935e551fb" shape="plaintext"];
  "sha256:568bc4df1a6bcfcb34ae96a8dca07429b5b1e3942d9885de8fe9f5e359282c49" -> "sha256:ed77245ec5c85694c85ff3efec2a529e25a6f3b21ca3276a97f0eba968861d6a" [label=""];
  "sha256:ed77245ec5c85694c85ff3efec2a529e25a6f3b21ca3276a97f0eba968861d6a" -> "sha256:8886342e376ff7a32d5746478b9112cce7df7292fa3792c4cade673e0a4e8bbc" [label=""];
  "sha256:8886342e376ff7a32d5746478b9112cce7df7292fa3792c4cade673e0a4e8bbc" -> "sha256:d5ce356110d540a962b72178dbb03a6452c7a499a398f1f3cfd0f56abb0e25c1" [label=""];
  "sha256:d5ce356110d540a962b72178dbb03a6452c7a499a398f1f3cfd0f56abb0e25c1" -> "sha256:33b048e44cbbca0d6d49f004643bbdfac840e85f98f037a5fea89346a05d9ec1" [label=""];
  "sha256:33b048e44cbbca0d6d49f004643bbdfac840e85f98f037a5fea89346a05d9ec1" -> "sha256:c9bff358511861f82d17763fac3bf8a3ab92b42b56b801d29d0c982935e551fb" [label=""];
}

