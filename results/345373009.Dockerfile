[app/sources/345373009.Dockerfile]
digraph {
  "sha256:f520ce5b797a770e5814b6fedd8ecd693630e6ac8e8634ace6c67b86098a085f" [label="docker-image://docker.io/balenalib/intel-nuc-fedora:30-build" shape="ellipse"];
  "sha256:2c4f853e4f25ba8a3b18010a1eda453a3f80acb0b3e3248d1a5a4419d0dee168" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-amd64.tar.gz\" \t&& echo \"aefaa228b68641e266d1f23f1d95dba33f17552ba132878b65bb798ffa37e6d0  go$GO_VERSION.linux-amd64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-amd64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-amd64.tar.gz" shape="box"];
  "sha256:3385e80ac331ffbb1c4cc8c952894ddbfe8f4c00adcf1f4eee18853602799c66" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a3e58f276999892931d6d8d3c0f1435193454c3ccafca20c3a0fd570266e27a6" [label="mkdir{path=/go}" shape="note"];
  "sha256:470b375914e32ac968e8e506797859c0bbd54056db06599a656bacd4dc5827d9" [label="sha256:470b375914e32ac968e8e506797859c0bbd54056db06599a656bacd4dc5827d9" shape="plaintext"];
  "sha256:f520ce5b797a770e5814b6fedd8ecd693630e6ac8e8634ace6c67b86098a085f" -> "sha256:2c4f853e4f25ba8a3b18010a1eda453a3f80acb0b3e3248d1a5a4419d0dee168" [label=""];
  "sha256:2c4f853e4f25ba8a3b18010a1eda453a3f80acb0b3e3248d1a5a4419d0dee168" -> "sha256:3385e80ac331ffbb1c4cc8c952894ddbfe8f4c00adcf1f4eee18853602799c66" [label=""];
  "sha256:3385e80ac331ffbb1c4cc8c952894ddbfe8f4c00adcf1f4eee18853602799c66" -> "sha256:a3e58f276999892931d6d8d3c0f1435193454c3ccafca20c3a0fd570266e27a6" [label=""];
  "sha256:a3e58f276999892931d6d8d3c0f1435193454c3ccafca20c3a0fd570266e27a6" -> "sha256:470b375914e32ac968e8e506797859c0bbd54056db06599a656bacd4dc5827d9" [label=""];
}

