[app/sources/345368708.Dockerfile]
digraph {
  "sha256:09ec81fa23ac5ff9bfb139d5015253bf1dfbab3e4d03b5b4e02ff01cd3a6ef6c" [label="docker-image://docker.io/balenalib/beaglebone-black-fedora:29-build" shape="ellipse"];
  "sha256:3f065446e33d225fb97b306d97a4a91776b4a7bfd5911da06e9fe3f707b35a72" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:e803f47112eed7e45f85b628587a8806f6fd44b27e9bc181c5ca5b48150daa1d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7ee729f0684c73c0a69258ba29b63cc3ac6110a531a43e402b2a548eddd7e30c" [label="mkdir{path=/go}" shape="note"];
  "sha256:8a61fe7100c01ea2757e748e2fb2a57471333f34ce72abfe970ee90b366dca61" [label="sha256:8a61fe7100c01ea2757e748e2fb2a57471333f34ce72abfe970ee90b366dca61" shape="plaintext"];
  "sha256:09ec81fa23ac5ff9bfb139d5015253bf1dfbab3e4d03b5b4e02ff01cd3a6ef6c" -> "sha256:3f065446e33d225fb97b306d97a4a91776b4a7bfd5911da06e9fe3f707b35a72" [label=""];
  "sha256:3f065446e33d225fb97b306d97a4a91776b4a7bfd5911da06e9fe3f707b35a72" -> "sha256:e803f47112eed7e45f85b628587a8806f6fd44b27e9bc181c5ca5b48150daa1d" [label=""];
  "sha256:e803f47112eed7e45f85b628587a8806f6fd44b27e9bc181c5ca5b48150daa1d" -> "sha256:7ee729f0684c73c0a69258ba29b63cc3ac6110a531a43e402b2a548eddd7e30c" [label=""];
  "sha256:7ee729f0684c73c0a69258ba29b63cc3ac6110a531a43e402b2a548eddd7e30c" -> "sha256:8a61fe7100c01ea2757e748e2fb2a57471333f34ce72abfe970ee90b366dca61" [label=""];
}

