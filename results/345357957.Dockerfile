[app/sources/345357957.Dockerfile]
digraph {
  "sha256:bd9729ea0586b99dedda6926e53eb4aeb0e33a8ce0a1173a97dc213d0bd2b41c" [label="docker-image://docker.io/balenalib/raspberry-pi-debian:buster-build" shape="ellipse"];
  "sha256:6190d8ecac7b4f55dfd1a1224ca1e9066b971f89ab632b97c4f2c4732c5cb446" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-armv6l.tar.gz\" \t&& echo \"311f5e76c7cec1ec752474a61d837e474b8e750b8e3eed267911ab57c0e5da9a  go$GO_VERSION.linux-armv6l.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv6l.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv6l.tar.gz" shape="box"];
  "sha256:1f717abe7197171939bbd12e67c306a5da5ff0e7fb8838b766c726e0748c854f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4bc8576093f2e154c941482e28dfe5e634bfdbde25204af7b51efc792d659a04" [label="mkdir{path=/go}" shape="note"];
  "sha256:7fb8c71261cbdd11447bd0ce20a67aa4672a47d2aae8247d90fc4ee348f33dbb" [label="sha256:7fb8c71261cbdd11447bd0ce20a67aa4672a47d2aae8247d90fc4ee348f33dbb" shape="plaintext"];
  "sha256:bd9729ea0586b99dedda6926e53eb4aeb0e33a8ce0a1173a97dc213d0bd2b41c" -> "sha256:6190d8ecac7b4f55dfd1a1224ca1e9066b971f89ab632b97c4f2c4732c5cb446" [label=""];
  "sha256:6190d8ecac7b4f55dfd1a1224ca1e9066b971f89ab632b97c4f2c4732c5cb446" -> "sha256:1f717abe7197171939bbd12e67c306a5da5ff0e7fb8838b766c726e0748c854f" [label=""];
  "sha256:1f717abe7197171939bbd12e67c306a5da5ff0e7fb8838b766c726e0748c854f" -> "sha256:4bc8576093f2e154c941482e28dfe5e634bfdbde25204af7b51efc792d659a04" [label=""];
  "sha256:4bc8576093f2e154c941482e28dfe5e634bfdbde25204af7b51efc792d659a04" -> "sha256:7fb8c71261cbdd11447bd0ce20a67aa4672a47d2aae8247d90fc4ee348f33dbb" [label=""];
}

