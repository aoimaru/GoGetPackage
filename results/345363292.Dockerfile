[app/sources/345363292.Dockerfile]
digraph {
  "sha256:76814394841ec67c58a41195866f3eb53c8abd50c960ed689e5e638ad024cb15" [label="docker-image://docker.io/balenalib/am571x-evm-ubuntu:trusty-build@sha256:506575110484b878bc5ccfd25ae55b1556cf02d0d62fec4fa1582621f9272ebe" shape="ellipse"];
  "sha256:bcce97117eeb939cdcf241137f2d08be891168d50e4d99da57124d6ba3902221" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:cf48bc9e5c40a58e24d72aa3499dc7607f01691eee4c799a9516be120aded410" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:09b174b1b873418b901dcbee3bcdc57d1e44da100afbbbd4a6a0e66488df9845" [label="mkdir{path=/go}" shape="note"];
  "sha256:f799daea339732a5fd1547d776be14e16e628fcd0f411a8e629b275c8ea14c2d" [label="sha256:f799daea339732a5fd1547d776be14e16e628fcd0f411a8e629b275c8ea14c2d" shape="plaintext"];
  "sha256:76814394841ec67c58a41195866f3eb53c8abd50c960ed689e5e638ad024cb15" -> "sha256:bcce97117eeb939cdcf241137f2d08be891168d50e4d99da57124d6ba3902221" [label=""];
  "sha256:bcce97117eeb939cdcf241137f2d08be891168d50e4d99da57124d6ba3902221" -> "sha256:cf48bc9e5c40a58e24d72aa3499dc7607f01691eee4c799a9516be120aded410" [label=""];
  "sha256:cf48bc9e5c40a58e24d72aa3499dc7607f01691eee4c799a9516be120aded410" -> "sha256:09b174b1b873418b901dcbee3bcdc57d1e44da100afbbbd4a6a0e66488df9845" [label=""];
  "sha256:09b174b1b873418b901dcbee3bcdc57d1e44da100afbbbd4a6a0e66488df9845" -> "sha256:f799daea339732a5fd1547d776be14e16e628fcd0f411a8e629b275c8ea14c2d" [label=""];
}

