[app/sources/231287803.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:c9c8882c469444d33e1fec863a400ae418685034faaedb88ea01e327830999a0" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         curl         gccgo         git         vim         wget" shape="box"];
  "sha256:dac3cc916805f989c99f51521b472ee45d244572050f7c81a9639fbc21201c69" [label="mkdir{path=/go/src/github.com/rancher/strato}" shape="note"];
  "sha256:cf325b13acaa575762ba9838275b2bc30d61410d97c407fd84e522b72b71ef61" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:f5089fc0d43b129a8931a6a2d3a9bf601aadadbf126d2d4ea44191ddadd643d2" [label="/bin/sh -c mkdir -p ${DOWNLOADS}" shape="box"];
  "sha256:78abb010c09aadf763c74961a16f280a41bb5824afd7836d331a8ec9ff0b019d" [label="/bin/sh -c ln -sf go-6 /usr/bin/go &&     curl -sfL https://storage.googleapis.com/golang/go${GO_VERSION}.src.tar.gz | tar -xzf - -C /usr/local &&     cd /usr/local/go/src &&     GOROOT_BOOTSTRAP=/usr GOARCH=${HOST_ARCH} GOHOSTARCH=${HOST_ARCH} ./make.bash &&     rm /usr/bin/go" shape="box"];
  "sha256:4d7ec87e2b09d631c6e72b9790473e911649d292d551bc697f0997f9c9607bc9" [label="/bin/sh -c curl -fL ${!BUILD_DOCKER_URL} > /usr/bin/docker &&     chmod +x /usr/bin/docker" shape="box"];
  "sha256:eabd993b50245bffc6ce7cda05c420f6c2570d124de3a3d6e5d7478594f968f6" [label="/bin/sh -c go get github.com/rancher/trash" shape="box"];
  "sha256:d18cf68064fc361be8c46df762d87eabc018806e84dacfb2d9ce51b0993e5758" [label="/bin/sh -c go get github.com/golang/lint/golint" shape="box"];
  "sha256:34b16d550206f7b43b345ad47c3547ed64284d129464c28274c22aab54cb8724" [label="/bin/sh -c go get gopkg.in/check.v1" shape="box"];
  "sha256:cce448a0952800e70120dbcfa3ae4f61e7459cfae8ee9a1b21d63e39fe2d0424" [label="/bin/sh -c curl -sL https://releases.rancher.com/dapper/latest/dapper-`uname -s`-`uname -m | sed 's/arm.*/arm/'` > /usr/bin/dapper &&     chmod +x /usr/bin/dapper" shape="box"];
  "sha256:56734352971eaee911c5710c33c0b553c8fbe3f5a18830e2b9aaac08437ed3db" [label="sha256:56734352971eaee911c5710c33c0b553c8fbe3f5a18830e2b9aaac08437ed3db" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:c9c8882c469444d33e1fec863a400ae418685034faaedb88ea01e327830999a0" [label=""];
  "sha256:c9c8882c469444d33e1fec863a400ae418685034faaedb88ea01e327830999a0" -> "sha256:dac3cc916805f989c99f51521b472ee45d244572050f7c81a9639fbc21201c69" [label=""];
  "sha256:dac3cc916805f989c99f51521b472ee45d244572050f7c81a9639fbc21201c69" -> "sha256:cf325b13acaa575762ba9838275b2bc30d61410d97c407fd84e522b72b71ef61" [label=""];
  "sha256:cf325b13acaa575762ba9838275b2bc30d61410d97c407fd84e522b72b71ef61" -> "sha256:f5089fc0d43b129a8931a6a2d3a9bf601aadadbf126d2d4ea44191ddadd643d2" [label=""];
  "sha256:f5089fc0d43b129a8931a6a2d3a9bf601aadadbf126d2d4ea44191ddadd643d2" -> "sha256:78abb010c09aadf763c74961a16f280a41bb5824afd7836d331a8ec9ff0b019d" [label=""];
  "sha256:78abb010c09aadf763c74961a16f280a41bb5824afd7836d331a8ec9ff0b019d" -> "sha256:4d7ec87e2b09d631c6e72b9790473e911649d292d551bc697f0997f9c9607bc9" [label=""];
  "sha256:4d7ec87e2b09d631c6e72b9790473e911649d292d551bc697f0997f9c9607bc9" -> "sha256:eabd993b50245bffc6ce7cda05c420f6c2570d124de3a3d6e5d7478594f968f6" [label=""];
  "sha256:eabd993b50245bffc6ce7cda05c420f6c2570d124de3a3d6e5d7478594f968f6" -> "sha256:d18cf68064fc361be8c46df762d87eabc018806e84dacfb2d9ce51b0993e5758" [label=""];
  "sha256:d18cf68064fc361be8c46df762d87eabc018806e84dacfb2d9ce51b0993e5758" -> "sha256:34b16d550206f7b43b345ad47c3547ed64284d129464c28274c22aab54cb8724" [label=""];
  "sha256:34b16d550206f7b43b345ad47c3547ed64284d129464c28274c22aab54cb8724" -> "sha256:cce448a0952800e70120dbcfa3ae4f61e7459cfae8ee9a1b21d63e39fe2d0424" [label=""];
  "sha256:cce448a0952800e70120dbcfa3ae4f61e7459cfae8ee9a1b21d63e39fe2d0424" -> "sha256:56734352971eaee911c5710c33c0b553c8fbe3f5a18830e2b9aaac08437ed3db" [label=""];
}

