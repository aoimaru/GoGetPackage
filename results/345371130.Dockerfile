[app/sources/345371130.Dockerfile]
digraph {
  "sha256:cd51d41777e2df790dbc1f325855dcd35376d75b3394b344a0545e0af62d277c" [label="docker-image://docker.io/balenalib/beaglebone-pocket-fedora:26-build" shape="ellipse"];
  "sha256:49b2ee756469a6fde9941da2add894606c2b1891dc737aac2a738b9ce21599b2" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:bd12c5f6e2bcca678ef165c621ed161fcdeb3ee4ce696b3f4ed607d9bcfe984d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3fb4f1fd51ef0aa3a7dc4a25de00035971494b0bfb9111de628ee772eee8027d" [label="mkdir{path=/go}" shape="note"];
  "sha256:4834249fb383c75dba0bb700796273d97a8b1b8a8e55d0e812623b285147451f" [label="sha256:4834249fb383c75dba0bb700796273d97a8b1b8a8e55d0e812623b285147451f" shape="plaintext"];
  "sha256:cd51d41777e2df790dbc1f325855dcd35376d75b3394b344a0545e0af62d277c" -> "sha256:49b2ee756469a6fde9941da2add894606c2b1891dc737aac2a738b9ce21599b2" [label=""];
  "sha256:49b2ee756469a6fde9941da2add894606c2b1891dc737aac2a738b9ce21599b2" -> "sha256:bd12c5f6e2bcca678ef165c621ed161fcdeb3ee4ce696b3f4ed607d9bcfe984d" [label=""];
  "sha256:bd12c5f6e2bcca678ef165c621ed161fcdeb3ee4ce696b3f4ed607d9bcfe984d" -> "sha256:3fb4f1fd51ef0aa3a7dc4a25de00035971494b0bfb9111de628ee772eee8027d" [label=""];
  "sha256:3fb4f1fd51ef0aa3a7dc4a25de00035971494b0bfb9111de628ee772eee8027d" -> "sha256:4834249fb383c75dba0bb700796273d97a8b1b8a8e55d0e812623b285147451f" [label=""];
}

