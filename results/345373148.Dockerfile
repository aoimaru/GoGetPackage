[app/sources/345373148.Dockerfile]
digraph {
  "sha256:7e83e83004d1fcefedc8427373a87e8cc4d0063b1e46c6ff53566d18cf388a2b" [label="docker-image://docker.io/balenalib/jetson-nano-debian:sid-run" shape="ellipse"];
  "sha256:0ceeea37e5f8ced330d1676690f76b951ace550e417a3864c847834970ab55e6" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:55b8c9c30edfc922252a3526a13fb717e9c4e1eee2b58b6cd5e6db00c14693fd" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:211919753c23860d4ad48682fd7c287922a656308eb648ca920c2547a12f5268" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:67b111e26bcc2758fd1ea012b5e80adc21cb95ad9f4fbca88ed5a17332e37a54" [label="mkdir{path=/go}" shape="note"];
  "sha256:1959fbc1cdf4a8dc8af4b8553ba0565ee996132a8c0cc51e161e78013af0b076" [label="sha256:1959fbc1cdf4a8dc8af4b8553ba0565ee996132a8c0cc51e161e78013af0b076" shape="plaintext"];
  "sha256:7e83e83004d1fcefedc8427373a87e8cc4d0063b1e46c6ff53566d18cf388a2b" -> "sha256:0ceeea37e5f8ced330d1676690f76b951ace550e417a3864c847834970ab55e6" [label=""];
  "sha256:0ceeea37e5f8ced330d1676690f76b951ace550e417a3864c847834970ab55e6" -> "sha256:55b8c9c30edfc922252a3526a13fb717e9c4e1eee2b58b6cd5e6db00c14693fd" [label=""];
  "sha256:55b8c9c30edfc922252a3526a13fb717e9c4e1eee2b58b6cd5e6db00c14693fd" -> "sha256:211919753c23860d4ad48682fd7c287922a656308eb648ca920c2547a12f5268" [label=""];
  "sha256:211919753c23860d4ad48682fd7c287922a656308eb648ca920c2547a12f5268" -> "sha256:67b111e26bcc2758fd1ea012b5e80adc21cb95ad9f4fbca88ed5a17332e37a54" [label=""];
  "sha256:67b111e26bcc2758fd1ea012b5e80adc21cb95ad9f4fbca88ed5a17332e37a54" -> "sha256:1959fbc1cdf4a8dc8af4b8553ba0565ee996132a8c0cc51e161e78013af0b076" [label=""];
}

