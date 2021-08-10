[app/sources/345367791.Dockerfile]
digraph {
  "sha256:9809ede17f8d6f9d3851de305472e2b90a191d729fd402f9746e14b0e796c16e" [label="docker-image://docker.io/balenalib/artik5-alpine:3.9-run" shape="ellipse"];
  "sha256:d5b87d7e0471f49011cff47780fbc7bf88a6be21fad2a426361883508a617419" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:2007ec1fb355963ed39945af6725502f9177e51b29384531c50b4449a100612f" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:4e39bcde751de4735ea8dbb145f742a3b9576bb8f725d22132e88b3687042756" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:0e956ba8a3bef401475968c678396ad9238e53a146b80bf22e4ad185538e9620" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:79b66be1bdbe88ec9517bc3feea1e55777ba086b684010be89bf27798cfd3eee" [label="mkdir{path=/go}" shape="note"];
  "sha256:d6997d0479b991da4d52ba49648dffbca7936526ba9f8fafb296a1f79ed5cc53" [label="sha256:d6997d0479b991da4d52ba49648dffbca7936526ba9f8fafb296a1f79ed5cc53" shape="plaintext"];
  "sha256:9809ede17f8d6f9d3851de305472e2b90a191d729fd402f9746e14b0e796c16e" -> "sha256:d5b87d7e0471f49011cff47780fbc7bf88a6be21fad2a426361883508a617419" [label=""];
  "sha256:d5b87d7e0471f49011cff47780fbc7bf88a6be21fad2a426361883508a617419" -> "sha256:2007ec1fb355963ed39945af6725502f9177e51b29384531c50b4449a100612f" [label=""];
  "sha256:2007ec1fb355963ed39945af6725502f9177e51b29384531c50b4449a100612f" -> "sha256:4e39bcde751de4735ea8dbb145f742a3b9576bb8f725d22132e88b3687042756" [label=""];
  "sha256:4e39bcde751de4735ea8dbb145f742a3b9576bb8f725d22132e88b3687042756" -> "sha256:0e956ba8a3bef401475968c678396ad9238e53a146b80bf22e4ad185538e9620" [label=""];
  "sha256:0e956ba8a3bef401475968c678396ad9238e53a146b80bf22e4ad185538e9620" -> "sha256:79b66be1bdbe88ec9517bc3feea1e55777ba086b684010be89bf27798cfd3eee" [label=""];
  "sha256:79b66be1bdbe88ec9517bc3feea1e55777ba086b684010be89bf27798cfd3eee" -> "sha256:d6997d0479b991da4d52ba49648dffbca7936526ba9f8fafb296a1f79ed5cc53" [label=""];
}

