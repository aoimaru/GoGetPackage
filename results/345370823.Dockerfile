[app/sources/345370823.Dockerfile]
digraph {
  "sha256:1a416ec650ed61c4ba00e0a377b0490c0424623c486ec7f9993218e6e328925b" [label="docker-image://docker.io/balenalib/beaglebone-fastenal-ubuntu:artful-run" shape="ellipse"];
  "sha256:74fff59d17875f1e3228ee9e366ffb8c9664ba63dafc49eaccd6ac9af3603973" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3215638d847edba96b7b33397e2ac65c7222b0c6db0a773874f5bb5b43e18685" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:f9d4434220edd17e5a96399c76619aa31d33fa44f8f142bd64252cd86cdbb2a3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:94e9a745457dbd75371b0bfdd245c855b7c9fed3c44ac9fc128f3de655873a36" [label="mkdir{path=/go}" shape="note"];
  "sha256:4977926e629aa52174d463e5f11235997c4bef39b2283511305a606f9931507c" [label="sha256:4977926e629aa52174d463e5f11235997c4bef39b2283511305a606f9931507c" shape="plaintext"];
  "sha256:1a416ec650ed61c4ba00e0a377b0490c0424623c486ec7f9993218e6e328925b" -> "sha256:74fff59d17875f1e3228ee9e366ffb8c9664ba63dafc49eaccd6ac9af3603973" [label=""];
  "sha256:74fff59d17875f1e3228ee9e366ffb8c9664ba63dafc49eaccd6ac9af3603973" -> "sha256:3215638d847edba96b7b33397e2ac65c7222b0c6db0a773874f5bb5b43e18685" [label=""];
  "sha256:3215638d847edba96b7b33397e2ac65c7222b0c6db0a773874f5bb5b43e18685" -> "sha256:f9d4434220edd17e5a96399c76619aa31d33fa44f8f142bd64252cd86cdbb2a3" [label=""];
  "sha256:f9d4434220edd17e5a96399c76619aa31d33fa44f8f142bd64252cd86cdbb2a3" -> "sha256:94e9a745457dbd75371b0bfdd245c855b7c9fed3c44ac9fc128f3de655873a36" [label=""];
  "sha256:94e9a745457dbd75371b0bfdd245c855b7c9fed3c44ac9fc128f3de655873a36" -> "sha256:4977926e629aa52174d463e5f11235997c4bef39b2283511305a606f9931507c" [label=""];
}

