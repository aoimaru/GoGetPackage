[app/sources/134719429.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:c70025157de4508a5e495d6f8351383da2531965720f1c64fe2f48aa22aa5544" [label="/bin/sh -c apk add --update go git make gcc musl-dev linux-headers ca-certificates &&   git clone --depth 1 https://github.com/ethereum/go-ethereum &&   (cd go-ethereum && make geth) &&   cp go-ethereum/build/bin/geth /geth &&   apk del go git make gcc musl-dev linux-headers &&   rm -rf /go-ethereum && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:09c8b6cf5df6f7c064ab1e87c710bbb6955c659f76dc3454e9b2a3b3a155b208" [label="sha256:09c8b6cf5df6f7c064ab1e87c710bbb6955c659f76dc3454e9b2a3b3a155b208" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:c70025157de4508a5e495d6f8351383da2531965720f1c64fe2f48aa22aa5544" [label=""];
  "sha256:c70025157de4508a5e495d6f8351383da2531965720f1c64fe2f48aa22aa5544" -> "sha256:09c8b6cf5df6f7c064ab1e87c710bbb6955c659f76dc3454e9b2a3b3a155b208" [label=""];
}

