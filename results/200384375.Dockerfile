[app/sources/200384375.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:540a8bf4a281c38b9d90d7914899ed958b3f6b5fd5fae6132ff547c8c8ea4413" [label="/bin/sh -c apk add --update go git make gcc musl-dev linux-headers ca-certificates &&   git clone --depth 1 https://github.com/ethereum/go-ethereum &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apk del go git make gcc musl-dev linux-headers &&   rm -rf /go-ethereum && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:9c164698341feaba089b42aad3e54f13411a941dbd5aca8ff30694c7570ea145" [label="sha256:9c164698341feaba089b42aad3e54f13411a941dbd5aca8ff30694c7570ea145" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:540a8bf4a281c38b9d90d7914899ed958b3f6b5fd5fae6132ff547c8c8ea4413" [label=""];
  "sha256:540a8bf4a281c38b9d90d7914899ed958b3f6b5fd5fae6132ff547c8c8ea4413" -> "sha256:9c164698341feaba089b42aad3e54f13411a941dbd5aca8ff30694c7570ea145" [label=""];
}

