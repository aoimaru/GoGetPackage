[app/sources/345374937.Dockerfile]
digraph {
  "sha256:3e00a8822b10d62d816b5f6e11cac478962f341bac8e41340936ea2c5e059c26" [label="docker-image://docker.io/balenalib/nanopi-neo-air-debian:sid-build" shape="ellipse"];
  "sha256:21e1ac01bf1b227775c5cbac5ad5211b31bb8cf2c2ed9bc3e3c514e80f6785d4" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:d7767883915bab1274197a3a0ba5dfa39df8fc1dc95080f0ef30290f03de7158" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:aadeef18db8eee129e0f83dc9d53cb0cb37bbd6af2b9900a3b4499558cc4bbca" [label="mkdir{path=/go}" shape="note"];
  "sha256:8e1cb6b74d72730da29e2725d922a0a0de7686f8cb2832bf4c350284d7b4c092" [label="sha256:8e1cb6b74d72730da29e2725d922a0a0de7686f8cb2832bf4c350284d7b4c092" shape="plaintext"];
  "sha256:3e00a8822b10d62d816b5f6e11cac478962f341bac8e41340936ea2c5e059c26" -> "sha256:21e1ac01bf1b227775c5cbac5ad5211b31bb8cf2c2ed9bc3e3c514e80f6785d4" [label=""];
  "sha256:21e1ac01bf1b227775c5cbac5ad5211b31bb8cf2c2ed9bc3e3c514e80f6785d4" -> "sha256:d7767883915bab1274197a3a0ba5dfa39df8fc1dc95080f0ef30290f03de7158" [label=""];
  "sha256:d7767883915bab1274197a3a0ba5dfa39df8fc1dc95080f0ef30290f03de7158" -> "sha256:aadeef18db8eee129e0f83dc9d53cb0cb37bbd6af2b9900a3b4499558cc4bbca" [label=""];
  "sha256:aadeef18db8eee129e0f83dc9d53cb0cb37bbd6af2b9900a3b4499558cc4bbca" -> "sha256:8e1cb6b74d72730da29e2725d922a0a0de7686f8cb2832bf4c350284d7b4c092" [label=""];
}

