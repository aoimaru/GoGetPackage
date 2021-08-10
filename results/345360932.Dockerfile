[app/sources/345360932.Dockerfile]
digraph {
  "sha256:149461bbc348abc3712e8c44221f345b078c402d3cc2526abb6e189dbf44f5c6" [label="docker-image://docker.io/balenalib/ts4900-debian:sid-build" shape="ellipse"];
  "sha256:7803990876924b8be6a93c410c7e1d46d51ce07a369e41abf940b191d01b381d" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:a370722d7a81da9563a241623eb1120c232712127ed845d88e53219e740a7559" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:318d19410a2e5c5757544571bc5aac405d0a0240b05749abcc630499734cec2e" [label="mkdir{path=/go}" shape="note"];
  "sha256:4431ed3889195edea75de8777941794fcd8229415b8b894041d79104a9eb3232" [label="sha256:4431ed3889195edea75de8777941794fcd8229415b8b894041d79104a9eb3232" shape="plaintext"];
  "sha256:149461bbc348abc3712e8c44221f345b078c402d3cc2526abb6e189dbf44f5c6" -> "sha256:7803990876924b8be6a93c410c7e1d46d51ce07a369e41abf940b191d01b381d" [label=""];
  "sha256:7803990876924b8be6a93c410c7e1d46d51ce07a369e41abf940b191d01b381d" -> "sha256:a370722d7a81da9563a241623eb1120c232712127ed845d88e53219e740a7559" [label=""];
  "sha256:a370722d7a81da9563a241623eb1120c232712127ed845d88e53219e740a7559" -> "sha256:318d19410a2e5c5757544571bc5aac405d0a0240b05749abcc630499734cec2e" [label=""];
  "sha256:318d19410a2e5c5757544571bc5aac405d0a0240b05749abcc630499734cec2e" -> "sha256:4431ed3889195edea75de8777941794fcd8229415b8b894041d79104a9eb3232" [label=""];
}

