[app/sources/345361222.Dockerfile]
digraph {
  "sha256:322bc06ef28067b3257d668a337eefe606c5fe8b0c1a057868fdcead64f6c4fd" [label="docker-image://docker.io/balenalib/up-board-debian:stretch-run" shape="ellipse"];
  "sha256:3f419d57b0a3eb21d41452f8dde015daa35a828ebc561ee37de169c8573e6198" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2fd598a17e2b8992a8780d1a7fd5b511763823045e8bd959a2fc538779b6b895" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aea86e3c73495f205929cfebba0d63f1382c8ac59be081b6351681415f4063cf  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:7041c52c3041d2e12ac2060c59a61ce537872bf10e093408b3e57413d8b3333b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ab68920590e3a8248f8e073731a12c85664854ad57f390d87f4e4b4209496962" [label="mkdir{path=/go}" shape="note"];
  "sha256:07382011a5e2d85d0300fa01942fa4474256289d6c1ae3ecdc7c9324fd0efc8f" [label="sha256:07382011a5e2d85d0300fa01942fa4474256289d6c1ae3ecdc7c9324fd0efc8f" shape="plaintext"];
  "sha256:322bc06ef28067b3257d668a337eefe606c5fe8b0c1a057868fdcead64f6c4fd" -> "sha256:3f419d57b0a3eb21d41452f8dde015daa35a828ebc561ee37de169c8573e6198" [label=""];
  "sha256:3f419d57b0a3eb21d41452f8dde015daa35a828ebc561ee37de169c8573e6198" -> "sha256:2fd598a17e2b8992a8780d1a7fd5b511763823045e8bd959a2fc538779b6b895" [label=""];
  "sha256:2fd598a17e2b8992a8780d1a7fd5b511763823045e8bd959a2fc538779b6b895" -> "sha256:7041c52c3041d2e12ac2060c59a61ce537872bf10e093408b3e57413d8b3333b" [label=""];
  "sha256:7041c52c3041d2e12ac2060c59a61ce537872bf10e093408b3e57413d8b3333b" -> "sha256:ab68920590e3a8248f8e073731a12c85664854ad57f390d87f4e4b4209496962" [label=""];
  "sha256:ab68920590e3a8248f8e073731a12c85664854ad57f390d87f4e4b4209496962" -> "sha256:07382011a5e2d85d0300fa01942fa4474256289d6c1ae3ecdc7c9324fd0efc8f" [label=""];
}

