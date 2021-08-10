[app/sources/345368014.Dockerfile]
digraph {
  "sha256:c0a080849434399b532403ee1fcf162d6c43eb8c7ca940efab1d0907c9fda1b5" [label="docker-image://docker.io/balenalib/artik533s-alpine:edge-build" shape="ellipse"];
  "sha256:6294c2c092fa44b0e3a82910e88b2b864e2057414df32464a599e886221fa10a" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:6107d0122d37f2ba06b781d7a79147a22d3329d0c5922a20bee88646e6e93207" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:a8f560df00c0e32ac932642f1082957501c75ba7969ae239f0cc5fa62878df07" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:bd7e62d5af2e9f3e78fc69819b85532caeee02484ece5459481a9aacd0f81dfc" [label="mkdir{path=/go}" shape="note"];
  "sha256:983c6d7ef1e2d578bc73e8e958618a5fc39b7eeef61cabb4196f3d2185786c78" [label="sha256:983c6d7ef1e2d578bc73e8e958618a5fc39b7eeef61cabb4196f3d2185786c78" shape="plaintext"];
  "sha256:c0a080849434399b532403ee1fcf162d6c43eb8c7ca940efab1d0907c9fda1b5" -> "sha256:6294c2c092fa44b0e3a82910e88b2b864e2057414df32464a599e886221fa10a" [label=""];
  "sha256:6294c2c092fa44b0e3a82910e88b2b864e2057414df32464a599e886221fa10a" -> "sha256:6107d0122d37f2ba06b781d7a79147a22d3329d0c5922a20bee88646e6e93207" [label=""];
  "sha256:6107d0122d37f2ba06b781d7a79147a22d3329d0c5922a20bee88646e6e93207" -> "sha256:a8f560df00c0e32ac932642f1082957501c75ba7969ae239f0cc5fa62878df07" [label=""];
  "sha256:a8f560df00c0e32ac932642f1082957501c75ba7969ae239f0cc5fa62878df07" -> "sha256:bd7e62d5af2e9f3e78fc69819b85532caeee02484ece5459481a9aacd0f81dfc" [label=""];
  "sha256:bd7e62d5af2e9f3e78fc69819b85532caeee02484ece5459481a9aacd0f81dfc" -> "sha256:983c6d7ef1e2d578bc73e8e958618a5fc39b7eeef61cabb4196f3d2185786c78" [label=""];
}

