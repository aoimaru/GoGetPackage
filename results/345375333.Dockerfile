[app/sources/345375333.Dockerfile]
digraph {
  "sha256:dd8a609256b74717ad3cd0f4e9f7c68a8f8ed58151dbfe127d47c831723696dd" [label="docker-image://docker.io/balenalib/odroid-c1-alpine:3.7-build" shape="ellipse"];
  "sha256:4abb1ed7d55d24434ecebe0818a7dd89ce304a47b6eeee7b6d3aea0265a53f90" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:77e1caacf9ba7f9c531f9894679a0778bc37ae302f0b78668da9250274e210e8" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:a45a0c1ab0c88742d897a75065f2d9765b5db6bacd87420b6d641fa3c86b38a5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7d71c8b7d049cb24b474895a3ccec8fd8dd56e4a924e4fb029b7ce58a8e565ac" [label="mkdir{path=/go}" shape="note"];
  "sha256:d4c9dd929cf74f765d7723fd0415db4bd53d7192a0ec8b7db2c45c499a8a60e0" [label="sha256:d4c9dd929cf74f765d7723fd0415db4bd53d7192a0ec8b7db2c45c499a8a60e0" shape="plaintext"];
  "sha256:dd8a609256b74717ad3cd0f4e9f7c68a8f8ed58151dbfe127d47c831723696dd" -> "sha256:4abb1ed7d55d24434ecebe0818a7dd89ce304a47b6eeee7b6d3aea0265a53f90" [label=""];
  "sha256:4abb1ed7d55d24434ecebe0818a7dd89ce304a47b6eeee7b6d3aea0265a53f90" -> "sha256:77e1caacf9ba7f9c531f9894679a0778bc37ae302f0b78668da9250274e210e8" [label=""];
  "sha256:77e1caacf9ba7f9c531f9894679a0778bc37ae302f0b78668da9250274e210e8" -> "sha256:a45a0c1ab0c88742d897a75065f2d9765b5db6bacd87420b6d641fa3c86b38a5" [label=""];
  "sha256:a45a0c1ab0c88742d897a75065f2d9765b5db6bacd87420b6d641fa3c86b38a5" -> "sha256:7d71c8b7d049cb24b474895a3ccec8fd8dd56e4a924e4fb029b7ce58a8e565ac" [label=""];
  "sha256:7d71c8b7d049cb24b474895a3ccec8fd8dd56e4a924e4fb029b7ce58a8e565ac" -> "sha256:d4c9dd929cf74f765d7723fd0415db4bd53d7192a0ec8b7db2c45c499a8a60e0" [label=""];
}

