[app/sources/345365953.Dockerfile]
digraph {
  "sha256:f01f8ee4c630315c55c1eee1d4925957f51cf2b9573ec500d1064718e72e96bf" [label="docker-image://docker.io/balenalib/generic-aarch64-fedora:26-run" shape="ellipse"];
  "sha256:80136d475dd290a03d7eb84dd125db56aa9158d04c3c8eb2f946ecd990ea3481" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:f0733ecc7bb68a2abec3c2102a9034e5e3e894efd229119c7a9c5aa923e8e553" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:3899dde110ff11982495b86e4da0809d64a566c1778e56eca9dd6cb122aba1db" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7798a2bd1dc5bc1038d64f7af544a51832cfbb6a963139fa2486fbd5da3894f2" [label="mkdir{path=/go}" shape="note"];
  "sha256:87eafdc90a9d6ccdbe2f5d2298d303a7670fd4afd6a1771a76ec2371d9035e09" [label="sha256:87eafdc90a9d6ccdbe2f5d2298d303a7670fd4afd6a1771a76ec2371d9035e09" shape="plaintext"];
  "sha256:f01f8ee4c630315c55c1eee1d4925957f51cf2b9573ec500d1064718e72e96bf" -> "sha256:80136d475dd290a03d7eb84dd125db56aa9158d04c3c8eb2f946ecd990ea3481" [label=""];
  "sha256:80136d475dd290a03d7eb84dd125db56aa9158d04c3c8eb2f946ecd990ea3481" -> "sha256:f0733ecc7bb68a2abec3c2102a9034e5e3e894efd229119c7a9c5aa923e8e553" [label=""];
  "sha256:f0733ecc7bb68a2abec3c2102a9034e5e3e894efd229119c7a9c5aa923e8e553" -> "sha256:3899dde110ff11982495b86e4da0809d64a566c1778e56eca9dd6cb122aba1db" [label=""];
  "sha256:3899dde110ff11982495b86e4da0809d64a566c1778e56eca9dd6cb122aba1db" -> "sha256:7798a2bd1dc5bc1038d64f7af544a51832cfbb6a963139fa2486fbd5da3894f2" [label=""];
  "sha256:7798a2bd1dc5bc1038d64f7af544a51832cfbb6a963139fa2486fbd5da3894f2" -> "sha256:87eafdc90a9d6ccdbe2f5d2298d303a7670fd4afd6a1771a76ec2371d9035e09" [label=""];
}

