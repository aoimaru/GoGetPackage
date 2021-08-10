[app/sources/262900528.Dockerfile]
digraph {
  "sha256:7dd7e8ccc4a15516e947de56f6ef88a4cfde49cd183ac79587d39dd09e0eef92" [label="docker-image://docker.io/azul/zulu-openjdk-alpine:11-jre@sha256:0f4c375956e3222930388217755632ba28dfa648b19f3fa0a4df100fa0807912" shape="ellipse"];
  "sha256:9c1f4faa98670481609caa9d5d4ff53ce9a9984551f68e5926f5a4b98a3e0e97" [label="/bin/sh -c apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/ --no-cache   nodejs   nodejs-npm   yarn   curl" shape="box"];
  "sha256:69153ee0bc3ac76fbaa40d6a5bb771f766613e447f5eff05f689d2d543535d73" [label="sha256:69153ee0bc3ac76fbaa40d6a5bb771f766613e447f5eff05f689d2d543535d73" shape="plaintext"];
  "sha256:7dd7e8ccc4a15516e947de56f6ef88a4cfde49cd183ac79587d39dd09e0eef92" -> "sha256:9c1f4faa98670481609caa9d5d4ff53ce9a9984551f68e5926f5a4b98a3e0e97" [label=""];
  "sha256:9c1f4faa98670481609caa9d5d4ff53ce9a9984551f68e5926f5a4b98a3e0e97" -> "sha256:69153ee0bc3ac76fbaa40d6a5bb771f766613e447f5eff05f689d2d543535d73" [label=""];
}

