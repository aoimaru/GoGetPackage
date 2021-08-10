[app/sources/345371404.Dockerfile]
digraph {
  "sha256:521ac4a897b876578c69a92522c36afa83c4f3f6904985662159839737ddbdf8" [label="docker-image://docker.io/balenalib/cl-som-imx8-alpine:3.6-build" shape="ellipse"];
  "sha256:030da6e331ffd31a847d1a241dd29f6ae13ddd3afda79d0992fdee719e375317" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:43be35554cc140a8e017bcdd786829ad4e1739de80c52513a0a854afc10cd6a0" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"3c8658ee1761b83c05027e1d60d13857d64e3d116efe0ebe9dcce353fa0d1232  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:f03b29a7b6b63c04ab54046ee9d70b5ab03a923ff8e02c565934029ab6809348" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:7b1f563da44ef439d8d97c028fad08330e1768723cc299dff0a9dd128743e26f" [label="mkdir{path=/go}" shape="note"];
  "sha256:0c00124157e0626da56208bb914e7416eed4b501dc2a8549edd0ba7219f70df3" [label="sha256:0c00124157e0626da56208bb914e7416eed4b501dc2a8549edd0ba7219f70df3" shape="plaintext"];
  "sha256:521ac4a897b876578c69a92522c36afa83c4f3f6904985662159839737ddbdf8" -> "sha256:030da6e331ffd31a847d1a241dd29f6ae13ddd3afda79d0992fdee719e375317" [label=""];
  "sha256:030da6e331ffd31a847d1a241dd29f6ae13ddd3afda79d0992fdee719e375317" -> "sha256:43be35554cc140a8e017bcdd786829ad4e1739de80c52513a0a854afc10cd6a0" [label=""];
  "sha256:43be35554cc140a8e017bcdd786829ad4e1739de80c52513a0a854afc10cd6a0" -> "sha256:f03b29a7b6b63c04ab54046ee9d70b5ab03a923ff8e02c565934029ab6809348" [label=""];
  "sha256:f03b29a7b6b63c04ab54046ee9d70b5ab03a923ff8e02c565934029ab6809348" -> "sha256:7b1f563da44ef439d8d97c028fad08330e1768723cc299dff0a9dd128743e26f" [label=""];
  "sha256:7b1f563da44ef439d8d97c028fad08330e1768723cc299dff0a9dd128743e26f" -> "sha256:0c00124157e0626da56208bb914e7416eed4b501dc2a8549edd0ba7219f70df3" [label=""];
}

