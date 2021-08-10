[app/sources/345373715.Dockerfile]
digraph {
  "sha256:9f554084b73ab8c4f1e0188beb11fbd462fee41d4407d0de7365e77a47a5a050" [label="docker-image://docker.io/balenalib/n510-tx2-debian:stretch-build" shape="ellipse"];
  "sha256:43881cd3d7e1b3b6a9f7383cd0e859a37f989e259b3f374b907e6af8cdcecc0a" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:7e107348a6c4662713ae1f88686fc0bfb69dec3221c3053620081a6386169dd7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:659ddc5c1c9139d66232f0e99b69594b87e3727781eeeac260d4c4a66875c0a1" [label="mkdir{path=/go}" shape="note"];
  "sha256:07669dbf9fe1458a11658663c9b67d54bd326468fe02cc2df6caedc5460b7e32" [label="sha256:07669dbf9fe1458a11658663c9b67d54bd326468fe02cc2df6caedc5460b7e32" shape="plaintext"];
  "sha256:9f554084b73ab8c4f1e0188beb11fbd462fee41d4407d0de7365e77a47a5a050" -> "sha256:43881cd3d7e1b3b6a9f7383cd0e859a37f989e259b3f374b907e6af8cdcecc0a" [label=""];
  "sha256:43881cd3d7e1b3b6a9f7383cd0e859a37f989e259b3f374b907e6af8cdcecc0a" -> "sha256:7e107348a6c4662713ae1f88686fc0bfb69dec3221c3053620081a6386169dd7" [label=""];
  "sha256:7e107348a6c4662713ae1f88686fc0bfb69dec3221c3053620081a6386169dd7" -> "sha256:659ddc5c1c9139d66232f0e99b69594b87e3727781eeeac260d4c4a66875c0a1" [label=""];
  "sha256:659ddc5c1c9139d66232f0e99b69594b87e3727781eeeac260d4c4a66875c0a1" -> "sha256:07669dbf9fe1458a11658663c9b67d54bd326468fe02cc2df6caedc5460b7e32" [label=""];
}

