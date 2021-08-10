[app/sources/345375165.Dockerfile]
digraph {
  "sha256:d31724beb59a473baf173997916070e147d70703ed934dc404e91f81eba9b0f3" [label="docker-image://docker.io/balenalib/nitrogen6xq2g-fedora:26-build" shape="ellipse"];
  "sha256:62c07cc580474ffced4625346fc3b6f2307a05f6f1ea5e2e2ca0cbfeaf065bfb" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:6b86511a9280cfcfeb61a276850c63f137adc413b39199cc06aa4f3d3dfe0687" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b96d25c4183f49b22353e4f9e04ad30a0b0604470594f64036313eab7acadb2c" [label="mkdir{path=/go}" shape="note"];
  "sha256:23955e94a28ef5296b48116af27e5c2a5a276b72e5069ab34e089882abd0d480" [label="sha256:23955e94a28ef5296b48116af27e5c2a5a276b72e5069ab34e089882abd0d480" shape="plaintext"];
  "sha256:d31724beb59a473baf173997916070e147d70703ed934dc404e91f81eba9b0f3" -> "sha256:62c07cc580474ffced4625346fc3b6f2307a05f6f1ea5e2e2ca0cbfeaf065bfb" [label=""];
  "sha256:62c07cc580474ffced4625346fc3b6f2307a05f6f1ea5e2e2ca0cbfeaf065bfb" -> "sha256:6b86511a9280cfcfeb61a276850c63f137adc413b39199cc06aa4f3d3dfe0687" [label=""];
  "sha256:6b86511a9280cfcfeb61a276850c63f137adc413b39199cc06aa4f3d3dfe0687" -> "sha256:b96d25c4183f49b22353e4f9e04ad30a0b0604470594f64036313eab7acadb2c" [label=""];
  "sha256:b96d25c4183f49b22353e4f9e04ad30a0b0604470594f64036313eab7acadb2c" -> "sha256:23955e94a28ef5296b48116af27e5c2a5a276b72e5069ab34e089882abd0d480" [label=""];
}

