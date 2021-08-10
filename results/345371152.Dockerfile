[app/sources/345371152.Dockerfile]
digraph {
  "sha256:c1f206a7ef8945a2d53c0e6624f67de1975075d1731d3a4ad35da3f2a96956fd" [label="docker-image://docker.io/balenalib/beaglebone-pocket-ubuntu:bionic-build" shape="ellipse"];
  "sha256:da37654887fcdecd32dc3c8edb39fcce81ada045491f58ff06becc9e8280618f" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:0f76b1405adf3d72a44a2924fc61e608c5bc625b83530282b1bd1386f6a4df7d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1be05668439bfc4cba9bf2792e3b80e553d8a65d8bebac8724bf1f7eb2ffb951" [label="mkdir{path=/go}" shape="note"];
  "sha256:abd769b9ce8d9a537e1b6d146733df6558f0fcc4e9a8e9fa806171ef51b4a0a6" [label="sha256:abd769b9ce8d9a537e1b6d146733df6558f0fcc4e9a8e9fa806171ef51b4a0a6" shape="plaintext"];
  "sha256:c1f206a7ef8945a2d53c0e6624f67de1975075d1731d3a4ad35da3f2a96956fd" -> "sha256:da37654887fcdecd32dc3c8edb39fcce81ada045491f58ff06becc9e8280618f" [label=""];
  "sha256:da37654887fcdecd32dc3c8edb39fcce81ada045491f58ff06becc9e8280618f" -> "sha256:0f76b1405adf3d72a44a2924fc61e608c5bc625b83530282b1bd1386f6a4df7d" [label=""];
  "sha256:0f76b1405adf3d72a44a2924fc61e608c5bc625b83530282b1bd1386f6a4df7d" -> "sha256:1be05668439bfc4cba9bf2792e3b80e553d8a65d8bebac8724bf1f7eb2ffb951" [label=""];
  "sha256:1be05668439bfc4cba9bf2792e3b80e553d8a65d8bebac8724bf1f7eb2ffb951" -> "sha256:abd769b9ce8d9a537e1b6d146733df6558f0fcc4e9a8e9fa806171ef51b4a0a6" [label=""];
}

