[app/sources/345366046.Dockerfile]
digraph {
  "sha256:489c791e690991b3a76ba9e429a45c82657987e5c868f6b45391e13b1dedd24d" [label="docker-image://docker.io/balenalib/generic-armv7ahf-debian:jessie-build" shape="ellipse"];
  "sha256:b8e383b8df916aea2a40ab460dfdd4d24aacda998ca4c1d5c2825a0b8c1dc920" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:bf6dc97312df2dbd1900ec181905c64491ccb31c4271a34500d63ccf4dc4a658" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8e9ec9f74a3a45386cd90a3ab75e0eeff96399a3bd12167e680d1c675dce41b2" [label="mkdir{path=/go}" shape="note"];
  "sha256:16df130ac411e0139496084f4346ffde12aa3a17251466e011bfa900138e5fd4" [label="sha256:16df130ac411e0139496084f4346ffde12aa3a17251466e011bfa900138e5fd4" shape="plaintext"];
  "sha256:489c791e690991b3a76ba9e429a45c82657987e5c868f6b45391e13b1dedd24d" -> "sha256:b8e383b8df916aea2a40ab460dfdd4d24aacda998ca4c1d5c2825a0b8c1dc920" [label=""];
  "sha256:b8e383b8df916aea2a40ab460dfdd4d24aacda998ca4c1d5c2825a0b8c1dc920" -> "sha256:bf6dc97312df2dbd1900ec181905c64491ccb31c4271a34500d63ccf4dc4a658" [label=""];
  "sha256:bf6dc97312df2dbd1900ec181905c64491ccb31c4271a34500d63ccf4dc4a658" -> "sha256:8e9ec9f74a3a45386cd90a3ab75e0eeff96399a3bd12167e680d1c675dce41b2" [label=""];
  "sha256:8e9ec9f74a3a45386cd90a3ab75e0eeff96399a3bd12167e680d1c675dce41b2" -> "sha256:16df130ac411e0139496084f4346ffde12aa3a17251466e011bfa900138e5fd4" [label=""];
}

