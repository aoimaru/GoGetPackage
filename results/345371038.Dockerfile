[app/sources/345371038.Dockerfile]
digraph {
  "sha256:eb6e7bc2cfcf4e37b3e5995be2189127ac9957143526c6f8d82df069981c0982" [label="docker-image://docker.io/balenalib/beaglebone-green-ubuntu:artful-build" shape="ellipse"];
  "sha256:8e093d330efb631793d58478c21c27fa1d67c2375c1322203af7b686a8dbcbde" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:bd4e201d0fa4d3b583cfc2995d7fdaab868cc3316c1162eaceb12e3b29aaa545" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e6f7621032609265a9c9ac8e6dd16a671bbee1232f81d41d71397e6e112cf973" [label="mkdir{path=/go}" shape="note"];
  "sha256:b19201bdff7d408d7525c9dfad4761054538fa892b8babb4ae692c341c418cc9" [label="sha256:b19201bdff7d408d7525c9dfad4761054538fa892b8babb4ae692c341c418cc9" shape="plaintext"];
  "sha256:eb6e7bc2cfcf4e37b3e5995be2189127ac9957143526c6f8d82df069981c0982" -> "sha256:8e093d330efb631793d58478c21c27fa1d67c2375c1322203af7b686a8dbcbde" [label=""];
  "sha256:8e093d330efb631793d58478c21c27fa1d67c2375c1322203af7b686a8dbcbde" -> "sha256:bd4e201d0fa4d3b583cfc2995d7fdaab868cc3316c1162eaceb12e3b29aaa545" [label=""];
  "sha256:bd4e201d0fa4d3b583cfc2995d7fdaab868cc3316c1162eaceb12e3b29aaa545" -> "sha256:e6f7621032609265a9c9ac8e6dd16a671bbee1232f81d41d71397e6e112cf973" [label=""];
  "sha256:e6f7621032609265a9c9ac8e6dd16a671bbee1232f81d41d71397e6e112cf973" -> "sha256:b19201bdff7d408d7525c9dfad4761054538fa892b8babb4ae692c341c418cc9" [label=""];
}

