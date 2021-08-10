[app/sources/345368600.Dockerfile]
digraph {
  "sha256:850532dbf3511bc56b24e08d8e9d390edf1ee786d630e65f274574d6d2add4b0" [label="docker-image://docker.io/balenalib/beagleboard-xm-fedora:29-build" shape="ellipse"];
  "sha256:85f8947429bcc9e20fddab0e83c0b22dabea69b03c0fa55e49f92434292c6895" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:d0fbc5d7ad7a4e701fd301697395c61b2b87ef5d895a283021029fcc0c9c11e9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:14c4529c8dbf1fc3f174f649a5715b66902cd4d158d4728ecc211a1a9d06616f" [label="mkdir{path=/go}" shape="note"];
  "sha256:93fc807824c7f9d618089f9fa6c6aa382ee3fcbc4c10fe9ca28dfef054a76526" [label="sha256:93fc807824c7f9d618089f9fa6c6aa382ee3fcbc4c10fe9ca28dfef054a76526" shape="plaintext"];
  "sha256:850532dbf3511bc56b24e08d8e9d390edf1ee786d630e65f274574d6d2add4b0" -> "sha256:85f8947429bcc9e20fddab0e83c0b22dabea69b03c0fa55e49f92434292c6895" [label=""];
  "sha256:85f8947429bcc9e20fddab0e83c0b22dabea69b03c0fa55e49f92434292c6895" -> "sha256:d0fbc5d7ad7a4e701fd301697395c61b2b87ef5d895a283021029fcc0c9c11e9" [label=""];
  "sha256:d0fbc5d7ad7a4e701fd301697395c61b2b87ef5d895a283021029fcc0c9c11e9" -> "sha256:14c4529c8dbf1fc3f174f649a5715b66902cd4d158d4728ecc211a1a9d06616f" [label=""];
  "sha256:14c4529c8dbf1fc3f174f649a5715b66902cd4d158d4728ecc211a1a9d06616f" -> "sha256:93fc807824c7f9d618089f9fa6c6aa382ee3fcbc4c10fe9ca28dfef054a76526" [label=""];
}

