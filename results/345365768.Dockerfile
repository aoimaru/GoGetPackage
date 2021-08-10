[app/sources/345365768.Dockerfile]
digraph {
  "sha256:4e3d79332cc85a6e8287bb4845963b131aea752f8dec4bc09106c93cd5361dd8" [label="docker-image://docker.io/balenalib/dl-pm6x-ubuntu:cosmic-build" shape="ellipse"];
  "sha256:ab245cfddc6cc0678b5d85e06fcbd20ecb3b659ec0ecf3805ae45d3b315cf9a3" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:d984aa86c1b17bb347df3d137351cdd115fa83f4b69e7f7e0f0d30bb62af4ba6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0ded66d1757256e5794fbfcacf0876f614bc3740cb2638c2c32df00b58823467" [label="mkdir{path=/go}" shape="note"];
  "sha256:0a11c05cc03c43d31461a045c0b62fcf137252f1f477fbe53a728c6ab71fdb5b" [label="sha256:0a11c05cc03c43d31461a045c0b62fcf137252f1f477fbe53a728c6ab71fdb5b" shape="plaintext"];
  "sha256:4e3d79332cc85a6e8287bb4845963b131aea752f8dec4bc09106c93cd5361dd8" -> "sha256:ab245cfddc6cc0678b5d85e06fcbd20ecb3b659ec0ecf3805ae45d3b315cf9a3" [label=""];
  "sha256:ab245cfddc6cc0678b5d85e06fcbd20ecb3b659ec0ecf3805ae45d3b315cf9a3" -> "sha256:d984aa86c1b17bb347df3d137351cdd115fa83f4b69e7f7e0f0d30bb62af4ba6" [label=""];
  "sha256:d984aa86c1b17bb347df3d137351cdd115fa83f4b69e7f7e0f0d30bb62af4ba6" -> "sha256:0ded66d1757256e5794fbfcacf0876f614bc3740cb2638c2c32df00b58823467" [label=""];
  "sha256:0ded66d1757256e5794fbfcacf0876f614bc3740cb2638c2c32df00b58823467" -> "sha256:0a11c05cc03c43d31461a045c0b62fcf137252f1f477fbe53a728c6ab71fdb5b" [label=""];
}

