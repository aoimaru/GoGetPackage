[app/sources/345374955.Dockerfile]
digraph {
  "sha256:5fcdd6e75ec8b4b0b9bb287bd7d54869089bfc6bce4ccf6728194e6ec2c5464d" [label="docker-image://docker.io/balenalib/nanopi-neo-air-fedora:28-build" shape="ellipse"];
  "sha256:549dfcb340f05f8a2ba95a1bb8938be3a77b1b14f11a8624195ff9f6fe1b0039" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:a6a19234708c5727703e2d028551bfcd103ae7e6551495e1eecc1a7dfb6df9b8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ae76c119645f5c3ca03b341c4513c3a5939a0418a2b5230e312d2d4ea8053190" [label="mkdir{path=/go}" shape="note"];
  "sha256:ee052a3543550cf1f6583558df36c5d4a0b63e4512ecbbda165cafcad2fe9127" [label="sha256:ee052a3543550cf1f6583558df36c5d4a0b63e4512ecbbda165cafcad2fe9127" shape="plaintext"];
  "sha256:5fcdd6e75ec8b4b0b9bb287bd7d54869089bfc6bce4ccf6728194e6ec2c5464d" -> "sha256:549dfcb340f05f8a2ba95a1bb8938be3a77b1b14f11a8624195ff9f6fe1b0039" [label=""];
  "sha256:549dfcb340f05f8a2ba95a1bb8938be3a77b1b14f11a8624195ff9f6fe1b0039" -> "sha256:a6a19234708c5727703e2d028551bfcd103ae7e6551495e1eecc1a7dfb6df9b8" [label=""];
  "sha256:a6a19234708c5727703e2d028551bfcd103ae7e6551495e1eecc1a7dfb6df9b8" -> "sha256:ae76c119645f5c3ca03b341c4513c3a5939a0418a2b5230e312d2d4ea8053190" [label=""];
  "sha256:ae76c119645f5c3ca03b341c4513c3a5939a0418a2b5230e312d2d4ea8053190" -> "sha256:ee052a3543550cf1f6583558df36c5d4a0b63e4512ecbbda165cafcad2fe9127" [label=""];
}

