[app/sources/345357664.Dockerfile]
digraph {
  "sha256:90d3536eb0e9a1027564c2b93d5f849419b87025842a7cb0a87b3ab2a902e4b8" [label="docker-image://docker.io/balenalib/parallella-ubuntu:bionic-build" shape="ellipse"];
  "sha256:69e8106f7b08dfc1dacba78bef41f3209247042711bdf177291ea78091f0ec02" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:f93715b01ed27b128ec43ed1e0b15b753d2bf4b9c6083ea7f8b7a67384f8a585" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9f8cbc053a6dd5561fe5f013d73935e4abdd73ce21f5840f777e36dca3b936ce" [label="mkdir{path=/go}" shape="note"];
  "sha256:bbf75e0df40cf11c0961f63f63aa473b5b164f16ad806134cd715b8dd71f7d42" [label="sha256:bbf75e0df40cf11c0961f63f63aa473b5b164f16ad806134cd715b8dd71f7d42" shape="plaintext"];
  "sha256:90d3536eb0e9a1027564c2b93d5f849419b87025842a7cb0a87b3ab2a902e4b8" -> "sha256:69e8106f7b08dfc1dacba78bef41f3209247042711bdf177291ea78091f0ec02" [label=""];
  "sha256:69e8106f7b08dfc1dacba78bef41f3209247042711bdf177291ea78091f0ec02" -> "sha256:f93715b01ed27b128ec43ed1e0b15b753d2bf4b9c6083ea7f8b7a67384f8a585" [label=""];
  "sha256:f93715b01ed27b128ec43ed1e0b15b753d2bf4b9c6083ea7f8b7a67384f8a585" -> "sha256:9f8cbc053a6dd5561fe5f013d73935e4abdd73ce21f5840f777e36dca3b936ce" [label=""];
  "sha256:9f8cbc053a6dd5561fe5f013d73935e4abdd73ce21f5840f777e36dca3b936ce" -> "sha256:bbf75e0df40cf11c0961f63f63aa473b5b164f16ad806134cd715b8dd71f7d42" [label=""];
}

