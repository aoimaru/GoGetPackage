[app/sources/345366152.Dockerfile]
digraph {
  "sha256:edd2b81d2d55c6e5531040ed274200b01c71abad26daccf7072a97dec937d7cd" [label="docker-image://docker.io/balenalib/hummingboard-debian:buster-build" shape="ellipse"];
  "sha256:c0dfd21592d9fabb54b05fe985c7cdee214b248072e39211607adb89926bae42" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:f701c95f06dd8bc108aeb71a8340a01d9c408947253ae9b30f73d3ff4e540bc6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:ddc9d1777a64226e1040ee77f2f57e8669a6af8d559b04f3ee1343a902bb2bf9" [label="mkdir{path=/go}" shape="note"];
  "sha256:cb17f6239672a964ae5ca180e55940c17106b478cf68bf320335e925de5315ed" [label="sha256:cb17f6239672a964ae5ca180e55940c17106b478cf68bf320335e925de5315ed" shape="plaintext"];
  "sha256:edd2b81d2d55c6e5531040ed274200b01c71abad26daccf7072a97dec937d7cd" -> "sha256:c0dfd21592d9fabb54b05fe985c7cdee214b248072e39211607adb89926bae42" [label=""];
  "sha256:c0dfd21592d9fabb54b05fe985c7cdee214b248072e39211607adb89926bae42" -> "sha256:f701c95f06dd8bc108aeb71a8340a01d9c408947253ae9b30f73d3ff4e540bc6" [label=""];
  "sha256:f701c95f06dd8bc108aeb71a8340a01d9c408947253ae9b30f73d3ff4e540bc6" -> "sha256:ddc9d1777a64226e1040ee77f2f57e8669a6af8d559b04f3ee1343a902bb2bf9" [label=""];
  "sha256:ddc9d1777a64226e1040ee77f2f57e8669a6af8d559b04f3ee1343a902bb2bf9" -> "sha256:cb17f6239672a964ae5ca180e55940c17106b478cf68bf320335e925de5315ed" [label=""];
}

