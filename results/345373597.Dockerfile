[app/sources/345373597.Dockerfile]
digraph {
  "sha256:055d63574f6c6900d56f8916af377146a87910ca8d94bd9a17954b9070f61a4f" [label="docker-image://docker.io/balenalib/kitra710-debian:sid-build" shape="ellipse"];
  "sha256:aa2c6ac8dfc99d692059276cdab703fb8f21b1892ef26038f5a34a37ba6dae6f" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:cc5e8318d45561ce08aa5f685e7f4f9e0e739b8dc25e5ef184e2a5ed72e9e176" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8007abb23ff856369456b2f78074bad1f4960a15f97251913795104eb4d91baa" [label="mkdir{path=/go}" shape="note"];
  "sha256:592400e7aa79979aa69aab89305d43e1a738c9de92c2f05cb3907aa035619e77" [label="sha256:592400e7aa79979aa69aab89305d43e1a738c9de92c2f05cb3907aa035619e77" shape="plaintext"];
  "sha256:055d63574f6c6900d56f8916af377146a87910ca8d94bd9a17954b9070f61a4f" -> "sha256:aa2c6ac8dfc99d692059276cdab703fb8f21b1892ef26038f5a34a37ba6dae6f" [label=""];
  "sha256:aa2c6ac8dfc99d692059276cdab703fb8f21b1892ef26038f5a34a37ba6dae6f" -> "sha256:cc5e8318d45561ce08aa5f685e7f4f9e0e739b8dc25e5ef184e2a5ed72e9e176" [label=""];
  "sha256:cc5e8318d45561ce08aa5f685e7f4f9e0e739b8dc25e5ef184e2a5ed72e9e176" -> "sha256:8007abb23ff856369456b2f78074bad1f4960a15f97251913795104eb4d91baa" [label=""];
  "sha256:8007abb23ff856369456b2f78074bad1f4960a15f97251913795104eb4d91baa" -> "sha256:592400e7aa79979aa69aab89305d43e1a738c9de92c2f05cb3907aa035619e77" [label=""];
}

