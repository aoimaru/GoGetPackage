[app/sources/345368242.Dockerfile]
digraph {
  "sha256:ef37b78cd1209ee7c7aaf8bbfb7e7979f5ed9f7877aea12d4ffaeaf748c5f60c" [label="docker-image://docker.io/balenalib/asus-tinker-board-s-debian:buster-build" shape="ellipse"];
  "sha256:56ab6769fbbca86ec5e995d91ef9d2b2f3148546a8ce3138ee141784f251aa4b" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:3e8aa353fdcb8e4a4c5474c524716f5f77e037631dc6a708dbc3ce66c2261675" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1c94ee732538ec7058084874df8f8812c1b5cb670fa1875e35e918c726a2d67a" [label="mkdir{path=/go}" shape="note"];
  "sha256:df2220c049a28a68e9f7e1367ed2870a278319131ff7f9b70eae8139862191cb" [label="sha256:df2220c049a28a68e9f7e1367ed2870a278319131ff7f9b70eae8139862191cb" shape="plaintext"];
  "sha256:ef37b78cd1209ee7c7aaf8bbfb7e7979f5ed9f7877aea12d4ffaeaf748c5f60c" -> "sha256:56ab6769fbbca86ec5e995d91ef9d2b2f3148546a8ce3138ee141784f251aa4b" [label=""];
  "sha256:56ab6769fbbca86ec5e995d91ef9d2b2f3148546a8ce3138ee141784f251aa4b" -> "sha256:3e8aa353fdcb8e4a4c5474c524716f5f77e037631dc6a708dbc3ce66c2261675" [label=""];
  "sha256:3e8aa353fdcb8e4a4c5474c524716f5f77e037631dc6a708dbc3ce66c2261675" -> "sha256:1c94ee732538ec7058084874df8f8812c1b5cb670fa1875e35e918c726a2d67a" [label=""];
  "sha256:1c94ee732538ec7058084874df8f8812c1b5cb670fa1875e35e918c726a2d67a" -> "sha256:df2220c049a28a68e9f7e1367ed2870a278319131ff7f9b70eae8139862191cb" [label=""];
}

