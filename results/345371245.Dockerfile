[app/sources/345371245.Dockerfile]
digraph {
  "sha256:0d91cdf43f62fc146fc70711872767f54088de1cf83bb5924352f9307ba99e13" [label="docker-image://docker.io/balenalib/blackboard-tx2-fedora:28-run" shape="ellipse"];
  "sha256:015a4d950dd45103487e74dfad4197252c98d3f0a1736adbc64e730af637d7b4" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:b0b39deb75adc543487b3c9f92e24a0c036cd50249291bbf8f87cb7ad150b6d3" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:50465d1b935ba0e9afed4b80ea6dc037fa9c9271c9d17439daca5809abdce2b2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:fb6427a5726649a898678913b7e8b6ad49fe15776852c2be939cba22d4313579" [label="mkdir{path=/go}" shape="note"];
  "sha256:c12885d1329264bc3c97887749d88ddbdffe3681957782651a6c3e48d04e4fc9" [label="sha256:c12885d1329264bc3c97887749d88ddbdffe3681957782651a6c3e48d04e4fc9" shape="plaintext"];
  "sha256:0d91cdf43f62fc146fc70711872767f54088de1cf83bb5924352f9307ba99e13" -> "sha256:015a4d950dd45103487e74dfad4197252c98d3f0a1736adbc64e730af637d7b4" [label=""];
  "sha256:015a4d950dd45103487e74dfad4197252c98d3f0a1736adbc64e730af637d7b4" -> "sha256:b0b39deb75adc543487b3c9f92e24a0c036cd50249291bbf8f87cb7ad150b6d3" [label=""];
  "sha256:b0b39deb75adc543487b3c9f92e24a0c036cd50249291bbf8f87cb7ad150b6d3" -> "sha256:50465d1b935ba0e9afed4b80ea6dc037fa9c9271c9d17439daca5809abdce2b2" [label=""];
  "sha256:50465d1b935ba0e9afed4b80ea6dc037fa9c9271c9d17439daca5809abdce2b2" -> "sha256:fb6427a5726649a898678913b7e8b6ad49fe15776852c2be939cba22d4313579" [label=""];
  "sha256:fb6427a5726649a898678913b7e8b6ad49fe15776852c2be939cba22d4313579" -> "sha256:c12885d1329264bc3c97887749d88ddbdffe3681957782651a6c3e48d04e4fc9" [label=""];
}

