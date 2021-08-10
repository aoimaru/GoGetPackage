[app/sources/345375607.Dockerfile]
digraph {
  "sha256:da85bcb2bf562ab70a0bc65589ade35a85bf9777a8aa2846c0339ad28af010fd" [label="docker-image://docker.io/balenalib/orange-pi-lite-fedora:28-build" shape="ellipse"];
  "sha256:1e6f2154360b0d988aa476f43b85c373c94985f744d9c5fb40f6c21d1bc8ba28" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:8f4e21485687471c50e4315b96ae5faf0de49bf745d5d56acabc890cc7dba0e8" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:dec2aa0d1964f03344c75160564e135b4279ad3b98e309a7511a5034774f8810" [label="mkdir{path=/go}" shape="note"];
  "sha256:c544e7d2ab49b271fbabb38d0ea232e850bc568b131ea1afe479faab004774a3" [label="sha256:c544e7d2ab49b271fbabb38d0ea232e850bc568b131ea1afe479faab004774a3" shape="plaintext"];
  "sha256:da85bcb2bf562ab70a0bc65589ade35a85bf9777a8aa2846c0339ad28af010fd" -> "sha256:1e6f2154360b0d988aa476f43b85c373c94985f744d9c5fb40f6c21d1bc8ba28" [label=""];
  "sha256:1e6f2154360b0d988aa476f43b85c373c94985f744d9c5fb40f6c21d1bc8ba28" -> "sha256:8f4e21485687471c50e4315b96ae5faf0de49bf745d5d56acabc890cc7dba0e8" [label=""];
  "sha256:8f4e21485687471c50e4315b96ae5faf0de49bf745d5d56acabc890cc7dba0e8" -> "sha256:dec2aa0d1964f03344c75160564e135b4279ad3b98e309a7511a5034774f8810" [label=""];
  "sha256:dec2aa0d1964f03344c75160564e135b4279ad3b98e309a7511a5034774f8810" -> "sha256:c544e7d2ab49b271fbabb38d0ea232e850bc568b131ea1afe479faab004774a3" [label=""];
}

