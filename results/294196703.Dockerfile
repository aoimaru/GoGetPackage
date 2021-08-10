[app/sources/294196703.Dockerfile]
digraph {
  "sha256:b97497de9522c8b8dea28fc82cfb25aee6ba5da66569303bd88c0580d28dd9bf" [label="docker-image://docker.io/library/golang:1.7.1-alpine" shape="ellipse"];
  "sha256:9d1f1dffb713d0553bae038ae489fcbfcfbbe314a29e8bbea596e5ef2e79581c" [label="local://context" shape="ellipse"];
  "sha256:8f2bd7ee257ce6223f92c4d4459df922afa6015a3806c64b642e35db59db09be" [label="copy{src=/, dest=/go/src/github.com/alexmavr/swarm-nbt}" shape="note"];
  "sha256:333bbc6639faf0ef9e94ee5b2c88b47e815c3490e2bac25b499ee45aee80264a" [label="mkdir{path=/go/src/github.com/alexmavr/swarm-nbt}" shape="note"];
  "sha256:7c7a80b062b2bd45d7ccd9e2b14764084c9ee5af92019697e54b268b774a8ba6" [label="/bin/sh -c set -ex && apk add --no-cache --virtual .build-deps git && go get github.com/tools/godep && GOARCH=$GOARCH GOOS=$GOOS CGO_ENABLED=0 godep go install -v -a -tags netgo -installsuffix netgo -ldflags \"-w -X github.com/alexmavr/swarm-nbt/version.GITCOMMIT=$(git rev-parse --short HEAD) -X github.com/alexmavr/swarm-nbt/version.BUILDTIME=$(date -u +%FT%T%z)\"  && apk del .build-deps" shape="box"];
  "sha256:920d06adeb0186f5aa665c9805fb5413d511ea8860e6defe98fbe63691ac2013" [label="sha256:920d06adeb0186f5aa665c9805fb5413d511ea8860e6defe98fbe63691ac2013" shape="plaintext"];
  "sha256:b97497de9522c8b8dea28fc82cfb25aee6ba5da66569303bd88c0580d28dd9bf" -> "sha256:8f2bd7ee257ce6223f92c4d4459df922afa6015a3806c64b642e35db59db09be" [label=""];
  "sha256:9d1f1dffb713d0553bae038ae489fcbfcfbbe314a29e8bbea596e5ef2e79581c" -> "sha256:8f2bd7ee257ce6223f92c4d4459df922afa6015a3806c64b642e35db59db09be" [label=""];
  "sha256:8f2bd7ee257ce6223f92c4d4459df922afa6015a3806c64b642e35db59db09be" -> "sha256:333bbc6639faf0ef9e94ee5b2c88b47e815c3490e2bac25b499ee45aee80264a" [label=""];
  "sha256:333bbc6639faf0ef9e94ee5b2c88b47e815c3490e2bac25b499ee45aee80264a" -> "sha256:7c7a80b062b2bd45d7ccd9e2b14764084c9ee5af92019697e54b268b774a8ba6" [label=""];
  "sha256:7c7a80b062b2bd45d7ccd9e2b14764084c9ee5af92019697e54b268b774a8ba6" -> "sha256:920d06adeb0186f5aa665c9805fb5413d511ea8860e6defe98fbe63691ac2013" [label=""];
}

