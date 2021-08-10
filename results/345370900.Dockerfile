[app/sources/345370900.Dockerfile]
digraph {
  "sha256:5268e182aa7abb451ff474470de868d2d009e243575a1e4a6a7b1cafb7d26ebc" [label="docker-image://docker.io/balenalib/beaglebone-green-wifi-debian:sid-build" shape="ellipse"];
  "sha256:9bb00547426dbd6ec9cdced8e53b579bd1feeedb25fc66ccc6c0fb6be18e9775" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:3f349e446424d7ff7d0a4bf4a792771c0c96dbf49d4cd759d56e4c188def1131" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:413979dfd5b60c0e4b86177857924f58ffcf010c84240002444fe212d86c29cf" [label="mkdir{path=/go}" shape="note"];
  "sha256:71f5b7a2d5fc0a7fe74438aac6e739f4c39bce3e00d3bd41e729bad8a9015bd3" [label="sha256:71f5b7a2d5fc0a7fe74438aac6e739f4c39bce3e00d3bd41e729bad8a9015bd3" shape="plaintext"];
  "sha256:5268e182aa7abb451ff474470de868d2d009e243575a1e4a6a7b1cafb7d26ebc" -> "sha256:9bb00547426dbd6ec9cdced8e53b579bd1feeedb25fc66ccc6c0fb6be18e9775" [label=""];
  "sha256:9bb00547426dbd6ec9cdced8e53b579bd1feeedb25fc66ccc6c0fb6be18e9775" -> "sha256:3f349e446424d7ff7d0a4bf4a792771c0c96dbf49d4cd759d56e4c188def1131" [label=""];
  "sha256:3f349e446424d7ff7d0a4bf4a792771c0c96dbf49d4cd759d56e4c188def1131" -> "sha256:413979dfd5b60c0e4b86177857924f58ffcf010c84240002444fe212d86c29cf" [label=""];
  "sha256:413979dfd5b60c0e4b86177857924f58ffcf010c84240002444fe212d86c29cf" -> "sha256:71f5b7a2d5fc0a7fe74438aac6e739f4c39bce3e00d3bd41e729bad8a9015bd3" [label=""];
}

