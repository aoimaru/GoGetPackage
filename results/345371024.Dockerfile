[app/sources/345371024.Dockerfile]
digraph {
  "sha256:69bc61df231c9ea37cccfc1fc6bbd82d236785d923ecb049bd6c6234009a562d" [label="docker-image://docker.io/balenalib/beaglebone-green-fedora:26-build" shape="ellipse"];
  "sha256:2956a12ee5e6efec72ebb1415ba79782eee4262cf3d0d4dd8d9b80912de0517a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:8e667800e746e2b349260a455c1b4591951ea87c2c206f2e38fff92a9e56bb52" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:02b63fb05c5b4c2d0df031c91d7a2e14037887a5dcd3ada6f0fadffba5581b52" [label="mkdir{path=/go}" shape="note"];
  "sha256:4be482a92910e688725690be26e736bf1870bc171de3278235469b7c2b947ead" [label="sha256:4be482a92910e688725690be26e736bf1870bc171de3278235469b7c2b947ead" shape="plaintext"];
  "sha256:69bc61df231c9ea37cccfc1fc6bbd82d236785d923ecb049bd6c6234009a562d" -> "sha256:2956a12ee5e6efec72ebb1415ba79782eee4262cf3d0d4dd8d9b80912de0517a" [label=""];
  "sha256:2956a12ee5e6efec72ebb1415ba79782eee4262cf3d0d4dd8d9b80912de0517a" -> "sha256:8e667800e746e2b349260a455c1b4591951ea87c2c206f2e38fff92a9e56bb52" [label=""];
  "sha256:8e667800e746e2b349260a455c1b4591951ea87c2c206f2e38fff92a9e56bb52" -> "sha256:02b63fb05c5b4c2d0df031c91d7a2e14037887a5dcd3ada6f0fadffba5581b52" [label=""];
  "sha256:02b63fb05c5b4c2d0df031c91d7a2e14037887a5dcd3ada6f0fadffba5581b52" -> "sha256:4be482a92910e688725690be26e736bf1870bc171de3278235469b7c2b947ead" [label=""];
}

