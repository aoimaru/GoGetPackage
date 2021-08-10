[app/sources/345373360.Dockerfile]
digraph {
  "sha256:03e877d19ca83cfa176e64e375493c295aec9cd3adac6dd3770746fa82be5c60" [label="docker-image://docker.io/balenalib/jetson-tx2-alpine:edge-run" shape="ellipse"];
  "sha256:7fe89888a635d083b8570aae63b1fc2424396bb80781f26ed39d930121f58122" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:cd4197355ae1751b4cb39aa593c69adfc15965b683ceb483c699ca811a8f118d" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:1758ba1db650caa4aab65ae95f10ae970cb18bf3f2f159536d3c1a5f78b21093" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:02ed82862ca4e97f6391e6465a14499a52b09ee39ef2bd89c31ffc620fa6f924" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:813401a96b8770cac90ce156dbab3d827f04772b6b8148a8df43b8b66d2736e3" [label="mkdir{path=/go}" shape="note"];
  "sha256:88edc75d6e2be707db01dba6f3e5807776ce81079ea59f58b7abf9daaa64b0a2" [label="sha256:88edc75d6e2be707db01dba6f3e5807776ce81079ea59f58b7abf9daaa64b0a2" shape="plaintext"];
  "sha256:03e877d19ca83cfa176e64e375493c295aec9cd3adac6dd3770746fa82be5c60" -> "sha256:7fe89888a635d083b8570aae63b1fc2424396bb80781f26ed39d930121f58122" [label=""];
  "sha256:7fe89888a635d083b8570aae63b1fc2424396bb80781f26ed39d930121f58122" -> "sha256:cd4197355ae1751b4cb39aa593c69adfc15965b683ceb483c699ca811a8f118d" [label=""];
  "sha256:cd4197355ae1751b4cb39aa593c69adfc15965b683ceb483c699ca811a8f118d" -> "sha256:1758ba1db650caa4aab65ae95f10ae970cb18bf3f2f159536d3c1a5f78b21093" [label=""];
  "sha256:1758ba1db650caa4aab65ae95f10ae970cb18bf3f2f159536d3c1a5f78b21093" -> "sha256:02ed82862ca4e97f6391e6465a14499a52b09ee39ef2bd89c31ffc620fa6f924" [label=""];
  "sha256:02ed82862ca4e97f6391e6465a14499a52b09ee39ef2bd89c31ffc620fa6f924" -> "sha256:813401a96b8770cac90ce156dbab3d827f04772b6b8148a8df43b8b66d2736e3" [label=""];
  "sha256:813401a96b8770cac90ce156dbab3d827f04772b6b8148a8df43b8b66d2736e3" -> "sha256:88edc75d6e2be707db01dba6f3e5807776ce81079ea59f58b7abf9daaa64b0a2" [label=""];
}

