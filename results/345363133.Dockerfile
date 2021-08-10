[app/sources/345363133.Dockerfile]
digraph {
  "sha256:530a79217408fdc02d1cab47745858c90ddbb31f796e11596f0bbb7d7d4a4863" [label="docker-image://docker.io/balenalib/aarch64-debian:sid-run" shape="ellipse"];
  "sha256:af5c941f0bb5b6e8f7dc59bb0284acda5f2e38eba2efa71f08cac0e3d132c057" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c24b6265fe9a825589f9e7b8d68b6a6c45b2a407925f73b3524c8d3faf3e4984" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:48cdf3e0a70e1c9a3b5b1043a315728e630482b6b642b4c74c2fa3f154cf964c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:298949644fa381347ef89590df6d473935a0afe30c50657bfb834e30cb98daa5" [label="mkdir{path=/go}" shape="note"];
  "sha256:1c8c0f96b4e1b6893f09a956e7ef30fde1df0de30edd1d6a05f6835bdf6340cc" [label="sha256:1c8c0f96b4e1b6893f09a956e7ef30fde1df0de30edd1d6a05f6835bdf6340cc" shape="plaintext"];
  "sha256:530a79217408fdc02d1cab47745858c90ddbb31f796e11596f0bbb7d7d4a4863" -> "sha256:af5c941f0bb5b6e8f7dc59bb0284acda5f2e38eba2efa71f08cac0e3d132c057" [label=""];
  "sha256:af5c941f0bb5b6e8f7dc59bb0284acda5f2e38eba2efa71f08cac0e3d132c057" -> "sha256:c24b6265fe9a825589f9e7b8d68b6a6c45b2a407925f73b3524c8d3faf3e4984" [label=""];
  "sha256:c24b6265fe9a825589f9e7b8d68b6a6c45b2a407925f73b3524c8d3faf3e4984" -> "sha256:48cdf3e0a70e1c9a3b5b1043a315728e630482b6b642b4c74c2fa3f154cf964c" [label=""];
  "sha256:48cdf3e0a70e1c9a3b5b1043a315728e630482b6b642b4c74c2fa3f154cf964c" -> "sha256:298949644fa381347ef89590df6d473935a0afe30c50657bfb834e30cb98daa5" [label=""];
  "sha256:298949644fa381347ef89590df6d473935a0afe30c50657bfb834e30cb98daa5" -> "sha256:1c8c0f96b4e1b6893f09a956e7ef30fde1df0de30edd1d6a05f6835bdf6340cc" [label=""];
}

