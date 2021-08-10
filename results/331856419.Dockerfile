[app/sources/331856419.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:8464b87c9b7dce8e8244f2403e4e6ee5dc5afc3a482fd261ec0693361cd64147" [label="/bin/sh -c apk add --update go git make gcc musl-dev linux-headers ca-certificates &&   git clone --depth 1 --branch release/1.8 https://github.com/ethereum/go-ethereum &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apk del go git make gcc musl-dev linux-headers &&   rm -rf /go-ethereum && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f7f83069e0ba6ece9ed71d73a6a3771e9ec9b4a373531b502af515a9a294752d" [label="sha256:f7f83069e0ba6ece9ed71d73a6a3771e9ec9b4a373531b502af515a9a294752d" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:8464b87c9b7dce8e8244f2403e4e6ee5dc5afc3a482fd261ec0693361cd64147" [label=""];
  "sha256:8464b87c9b7dce8e8244f2403e4e6ee5dc5afc3a482fd261ec0693361cd64147" -> "sha256:f7f83069e0ba6ece9ed71d73a6a3771e9ec9b4a373531b502af515a9a294752d" [label=""];
}

