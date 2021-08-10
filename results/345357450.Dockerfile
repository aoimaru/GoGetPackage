[app/sources/345357450.Dockerfile]
digraph {
  "sha256:76f889ea917b6fcccdc7b5f0d26fbba5b38ec34b78fcfba0bb02dc52532565a5" [label="docker-image://docker.io/balenalib/orbitty-tx2-ubuntu:bionic-build" shape="ellipse"];
  "sha256:480e4aadd7f8fcde5712c0da4b3117aba38978ea1bede1ad845ed33282ac5b37" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-arm64.tar.gz\" \t&& echo \"6743c54f0e33873c113cbd66df7749e81785f378567734831c2e5d3b6b6aa2b8  go$GO_VERSION.linux-arm64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-arm64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-arm64.tar.gz" shape="box"];
  "sha256:c7adb5d6ec9699b5547ac800ddb93f2000027dda404868227375887358fe31c3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:13f452549ec24679b887bc6c48672708d31008b039efa190e0c10b7ff90fe2a4" [label="mkdir{path=/go}" shape="note"];
  "sha256:41f8b25bf0e978545cf41280729cd6d16b04fc82adbd947d60e456b77d04f86f" [label="sha256:41f8b25bf0e978545cf41280729cd6d16b04fc82adbd947d60e456b77d04f86f" shape="plaintext"];
  "sha256:76f889ea917b6fcccdc7b5f0d26fbba5b38ec34b78fcfba0bb02dc52532565a5" -> "sha256:480e4aadd7f8fcde5712c0da4b3117aba38978ea1bede1ad845ed33282ac5b37" [label=""];
  "sha256:480e4aadd7f8fcde5712c0da4b3117aba38978ea1bede1ad845ed33282ac5b37" -> "sha256:c7adb5d6ec9699b5547ac800ddb93f2000027dda404868227375887358fe31c3" [label=""];
  "sha256:c7adb5d6ec9699b5547ac800ddb93f2000027dda404868227375887358fe31c3" -> "sha256:13f452549ec24679b887bc6c48672708d31008b039efa190e0c10b7ff90fe2a4" [label=""];
  "sha256:13f452549ec24679b887bc6c48672708d31008b039efa190e0c10b7ff90fe2a4" -> "sha256:41f8b25bf0e978545cf41280729cd6d16b04fc82adbd947d60e456b77d04f86f" [label=""];
}

