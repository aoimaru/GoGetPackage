[app/sources/197414296.Dockerfile]
digraph {
  "sha256:3cb9dfca7ad1b24c47f3f967548fc8b1e17476690e0f576dda52a217216115fa" [label="docker-image://docker.io/gliderlabs/alpine:3.3" shape="ellipse"];
  "sha256:688c1fcc19fc67f14293502efb827b5d3479c86986447871232f3fe1c16aea95" [label="/bin/sh -c apk add --no-cache bash make go git gcc musl-dev python" shape="box"];
  "sha256:386be8f9fdc10e4e3435d09df3194152daf47a9b7b83c881d43d33a0f2d0bca7" [label="/bin/sh -c mkdir -p /go/src/github.com/robinmonjo/dock" shape="box"];
  "sha256:977aa8a5282435f40ea50eebf1859da2c1c2006910baf748a670ce0a1bcff467" [label="local://context" shape="ellipse"];
  "sha256:3e55989956e4ebfe4ff90f2cd9483bef7a3b05c841135eaa649f195ad83be5ae" [label="copy{src=/, dest=/go/src/github.com/robinmonjo/dock}" shape="note"];
  "sha256:d59378e8538e4fa20f85bc71a44aab50610c19889cdb3ccf6157d65ba1e11002" [label="mkdir{path=/go/src/github.com/robinmonjo/dock}" shape="note"];
  "sha256:1a46ffee16afc936b7d093ab83d78b6cdc0744cb3a41bef5ac0bfdf942555a8c" [label="/bin/sh -c IN_CONTAINER=true make && mv dock /usr/local/bin" shape="box"];
  "sha256:8a322e65579a418abf8f4e8b9b3294250e3eb5c6cc180deb8da0d9cd42b9c2eb" [label="sha256:8a322e65579a418abf8f4e8b9b3294250e3eb5c6cc180deb8da0d9cd42b9c2eb" shape="plaintext"];
  "sha256:3cb9dfca7ad1b24c47f3f967548fc8b1e17476690e0f576dda52a217216115fa" -> "sha256:688c1fcc19fc67f14293502efb827b5d3479c86986447871232f3fe1c16aea95" [label=""];
  "sha256:688c1fcc19fc67f14293502efb827b5d3479c86986447871232f3fe1c16aea95" -> "sha256:386be8f9fdc10e4e3435d09df3194152daf47a9b7b83c881d43d33a0f2d0bca7" [label=""];
  "sha256:386be8f9fdc10e4e3435d09df3194152daf47a9b7b83c881d43d33a0f2d0bca7" -> "sha256:3e55989956e4ebfe4ff90f2cd9483bef7a3b05c841135eaa649f195ad83be5ae" [label=""];
  "sha256:977aa8a5282435f40ea50eebf1859da2c1c2006910baf748a670ce0a1bcff467" -> "sha256:3e55989956e4ebfe4ff90f2cd9483bef7a3b05c841135eaa649f195ad83be5ae" [label=""];
  "sha256:3e55989956e4ebfe4ff90f2cd9483bef7a3b05c841135eaa649f195ad83be5ae" -> "sha256:d59378e8538e4fa20f85bc71a44aab50610c19889cdb3ccf6157d65ba1e11002" [label=""];
  "sha256:d59378e8538e4fa20f85bc71a44aab50610c19889cdb3ccf6157d65ba1e11002" -> "sha256:1a46ffee16afc936b7d093ab83d78b6cdc0744cb3a41bef5ac0bfdf942555a8c" [label=""];
  "sha256:1a46ffee16afc936b7d093ab83d78b6cdc0744cb3a41bef5ac0bfdf942555a8c" -> "sha256:8a322e65579a418abf8f4e8b9b3294250e3eb5c6cc180deb8da0d9cd42b9c2eb" [label=""];
}

