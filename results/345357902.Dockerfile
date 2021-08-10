[app/sources/345357902.Dockerfile]
digraph {
  "sha256:596a3ffcd124096832a55c7e25bcbf683da457223831f3c7a952718a2146e9cc" [label="docker-image://docker.io/balenalib/qemux86-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:7aee4660c64f1e1999da259b9bc6df5150444d0c5298788759b980c2c8ba7684" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0ab2c32cdde8231d69b213dc9c906f1a42151ef080b040db26dcd0476ee5a9bc" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"619ddab5b56597d72681467810c63238063ab0d221fe0df9b2e85608c10161e5  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:16b7ace8ce57f39a52bf7cea76e5917d6e5ef2038c8a5d14c802272041540b2d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8f69f06c55ee86d84287f6ab32e84755585cacb9fb436576d54b487edb9afa69" [label="mkdir{path=/go}" shape="note"];
  "sha256:b9be9eabe6b6afda347ef00b435e3e5d0468fbee0e93b37e6f8315c6fc92d13b" [label="sha256:b9be9eabe6b6afda347ef00b435e3e5d0468fbee0e93b37e6f8315c6fc92d13b" shape="plaintext"];
  "sha256:596a3ffcd124096832a55c7e25bcbf683da457223831f3c7a952718a2146e9cc" -> "sha256:7aee4660c64f1e1999da259b9bc6df5150444d0c5298788759b980c2c8ba7684" [label=""];
  "sha256:7aee4660c64f1e1999da259b9bc6df5150444d0c5298788759b980c2c8ba7684" -> "sha256:0ab2c32cdde8231d69b213dc9c906f1a42151ef080b040db26dcd0476ee5a9bc" [label=""];
  "sha256:0ab2c32cdde8231d69b213dc9c906f1a42151ef080b040db26dcd0476ee5a9bc" -> "sha256:16b7ace8ce57f39a52bf7cea76e5917d6e5ef2038c8a5d14c802272041540b2d" [label=""];
  "sha256:16b7ace8ce57f39a52bf7cea76e5917d6e5ef2038c8a5d14c802272041540b2d" -> "sha256:8f69f06c55ee86d84287f6ab32e84755585cacb9fb436576d54b487edb9afa69" [label=""];
  "sha256:8f69f06c55ee86d84287f6ab32e84755585cacb9fb436576d54b487edb9afa69" -> "sha256:b9be9eabe6b6afda347ef00b435e3e5d0468fbee0e93b37e6f8315c6fc92d13b" [label=""];
}

