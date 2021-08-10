[app/sources/345366485.Dockerfile]
digraph {
  "sha256:425a5c425a0c61327fd4416783d744386c33d50ae948544c4c503e8a80fec98e" [label="docker-image://docker.io/balenalib/imx7-var-som-alpine:3.7-run" shape="ellipse"];
  "sha256:8a6c6f75f5403f271a631b640cd9dd254f5a09f3444cfba34d22bd8db5e3f33d" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:5bdb8e5ac72199ad47fde5ff5c5f6118e0359647b968de96c3ef0dcb53d61520" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:2118d37f75cbd829b57258e8cdfffc8a48e8f9daaa69bf0d96d30bdcb5b199ee" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:44cdc106cda5d45c0b995b7f9a8d67a353619da13bbed4d2d3dd31cb8f99ca87" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:22dc9143de9b6cbb552f799074bf8aac86d58289b4de3e95ee17d18c2887da83" [label="mkdir{path=/go}" shape="note"];
  "sha256:6dafc18626c2116490e0b2cd37491282308f1a6666274054f72eeba3ff96759f" [label="sha256:6dafc18626c2116490e0b2cd37491282308f1a6666274054f72eeba3ff96759f" shape="plaintext"];
  "sha256:425a5c425a0c61327fd4416783d744386c33d50ae948544c4c503e8a80fec98e" -> "sha256:8a6c6f75f5403f271a631b640cd9dd254f5a09f3444cfba34d22bd8db5e3f33d" [label=""];
  "sha256:8a6c6f75f5403f271a631b640cd9dd254f5a09f3444cfba34d22bd8db5e3f33d" -> "sha256:5bdb8e5ac72199ad47fde5ff5c5f6118e0359647b968de96c3ef0dcb53d61520" [label=""];
  "sha256:5bdb8e5ac72199ad47fde5ff5c5f6118e0359647b968de96c3ef0dcb53d61520" -> "sha256:2118d37f75cbd829b57258e8cdfffc8a48e8f9daaa69bf0d96d30bdcb5b199ee" [label=""];
  "sha256:2118d37f75cbd829b57258e8cdfffc8a48e8f9daaa69bf0d96d30bdcb5b199ee" -> "sha256:44cdc106cda5d45c0b995b7f9a8d67a353619da13bbed4d2d3dd31cb8f99ca87" [label=""];
  "sha256:44cdc106cda5d45c0b995b7f9a8d67a353619da13bbed4d2d3dd31cb8f99ca87" -> "sha256:22dc9143de9b6cbb552f799074bf8aac86d58289b4de3e95ee17d18c2887da83" [label=""];
  "sha256:22dc9143de9b6cbb552f799074bf8aac86d58289b4de3e95ee17d18c2887da83" -> "sha256:6dafc18626c2116490e0b2cd37491282308f1a6666274054f72eeba3ff96759f" [label=""];
}

