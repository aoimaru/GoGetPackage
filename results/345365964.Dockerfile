[app/sources/345365964.Dockerfile]
digraph {
  "sha256:fdd467262675bd109fd5efd7341056a8cdf8052dc1a9db9aeac65e01626be3b7" [label="docker-image://docker.io/balenalib/generic-aarch64-fedora:29-build" shape="ellipse"];
  "sha256:f23f0dabdf7b366a0af2e48ad902609818ad81c8b950fcf70d46c3758a94c4d3" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:a4a854531176de89960f10524d56bb701cfa50a32284e229237da43d7e24ee83" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0c94122df53b49995dc0d5411f821529d918b7c012e09302a8816a1517a85e11" [label="mkdir{path=/go}" shape="note"];
  "sha256:bfc18a8a096fd76351e300cb40ee1fc474aa9daa7d6ea51b9f5d121e05e86abb" [label="sha256:bfc18a8a096fd76351e300cb40ee1fc474aa9daa7d6ea51b9f5d121e05e86abb" shape="plaintext"];
  "sha256:fdd467262675bd109fd5efd7341056a8cdf8052dc1a9db9aeac65e01626be3b7" -> "sha256:f23f0dabdf7b366a0af2e48ad902609818ad81c8b950fcf70d46c3758a94c4d3" [label=""];
  "sha256:f23f0dabdf7b366a0af2e48ad902609818ad81c8b950fcf70d46c3758a94c4d3" -> "sha256:a4a854531176de89960f10524d56bb701cfa50a32284e229237da43d7e24ee83" [label=""];
  "sha256:a4a854531176de89960f10524d56bb701cfa50a32284e229237da43d7e24ee83" -> "sha256:0c94122df53b49995dc0d5411f821529d918b7c012e09302a8816a1517a85e11" [label=""];
  "sha256:0c94122df53b49995dc0d5411f821529d918b7c012e09302a8816a1517a85e11" -> "sha256:bfc18a8a096fd76351e300cb40ee1fc474aa9daa7d6ea51b9f5d121e05e86abb" [label=""];
}

