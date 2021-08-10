[app/sources/345361074.Dockerfile]
digraph {
  "sha256:78c2d9f6529509ba94d452d747cbd25bc12cb25624593a4508770d6ab16cb337" [label="docker-image://docker.io/balenalib/ts7700-debian:jessie-build" shape="ellipse"];
  "sha256:2355f3264783977b7b95df1c0259440d85ccbcfed6a5f3d06af558825d4a60b3" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armel.tar.gz\" \t&& echo \"20d25cbbd3e8b775a8cbd96a6ffba9f017737a162c6f8404ca41402bee17df4c  go$GO_VERSION.linux-armel.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armel.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armel.tar.gz" shape="box"];
  "sha256:55e5f875fb02e8f8c1a6ddfc3bfdf4e9cbd245d61ed6dfa7ad30da00a15280a6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f5f515b0b39399dcbbea5c07078375f510232a81bf5818fc696a727fa85ac331" [label="mkdir{path=/go}" shape="note"];
  "sha256:744b392e5966fbe7a26b048acfd504df1b820b77525ccecc573ec1c3767017a4" [label="sha256:744b392e5966fbe7a26b048acfd504df1b820b77525ccecc573ec1c3767017a4" shape="plaintext"];
  "sha256:78c2d9f6529509ba94d452d747cbd25bc12cb25624593a4508770d6ab16cb337" -> "sha256:2355f3264783977b7b95df1c0259440d85ccbcfed6a5f3d06af558825d4a60b3" [label=""];
  "sha256:2355f3264783977b7b95df1c0259440d85ccbcfed6a5f3d06af558825d4a60b3" -> "sha256:55e5f875fb02e8f8c1a6ddfc3bfdf4e9cbd245d61ed6dfa7ad30da00a15280a6" [label=""];
  "sha256:55e5f875fb02e8f8c1a6ddfc3bfdf4e9cbd245d61ed6dfa7ad30da00a15280a6" -> "sha256:f5f515b0b39399dcbbea5c07078375f510232a81bf5818fc696a727fa85ac331" [label=""];
  "sha256:f5f515b0b39399dcbbea5c07078375f510232a81bf5818fc696a727fa85ac331" -> "sha256:744b392e5966fbe7a26b048acfd504df1b820b77525ccecc573ec1c3767017a4" [label=""];
}

