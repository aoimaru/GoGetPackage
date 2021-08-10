[app/sources/192939546.Dockerfile]
digraph {
  "sha256:5b51bc80480b7b0b1e6f65d8ec43876584832ece3ff74c54c62646cf03e8b41c" [label="docker-image://docker.io/vifino/torch:latest" shape="ellipse"];
  "sha256:579d810ce78dc9497a908ee40e73080e90574df1622ce9a2ff28f1c7bee75f98" [label="mkdir{path=/app}" shape="note"];
  "sha256:68d8d8ba19cce63a150bcd23b305a34069b77abdd35e3e7e4fe111ade826116b" [label="local://context" shape="ellipse"];
  "sha256:398eba9cff324edd8f8d8adcd284283f880eb07c97d5e3a76b18e956c5a3e553" [label="copy{src=/, dest=/usr/local/go/src/github.com/carbonsrv/carbon}" shape="note"];
  "sha256:24b5659b4be89f100d0516c78e0b793f8b7842fa740bb1523750e66b09e8cccf" [label="/bin/sh -c echo http://dl-4.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \t&& apk update \t&& apk upgrade \t&& apk add --update \t\tgit bash \t\tphysfs-dev \t\tgo \t&& cd $GOPATH/src/github.com/carbonsrv/carbon && go get -t -d -v ./... \t&& go build -v -o /usr/bin/carbon \t&& strip --strip-all /usr/bin/carbon \t&& echo -e \"#!/bin/sh\\nexec carbon /torch/lib/luarocks/rocks/trepl/scm-1/bin/th \\\"\\$@\\\"\" | tee /torch/bin/th \t&& sed -i 's/local parg = arg/local parg = arg or args/' /torch/lib/luarocks/rocks/trepl/scm-1/bin/th \t&& rm -rf \"$GOPATH\" \t&& apk del --purge \t\tgo \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:8c60a4fe72ecbc6009b8ee27ef3ecc58f887e57e498e7bb9d3bcd8c353e2ad9f" [label="sha256:8c60a4fe72ecbc6009b8ee27ef3ecc58f887e57e498e7bb9d3bcd8c353e2ad9f" shape="plaintext"];
  "sha256:5b51bc80480b7b0b1e6f65d8ec43876584832ece3ff74c54c62646cf03e8b41c" -> "sha256:579d810ce78dc9497a908ee40e73080e90574df1622ce9a2ff28f1c7bee75f98" [label=""];
  "sha256:579d810ce78dc9497a908ee40e73080e90574df1622ce9a2ff28f1c7bee75f98" -> "sha256:398eba9cff324edd8f8d8adcd284283f880eb07c97d5e3a76b18e956c5a3e553" [label=""];
  "sha256:68d8d8ba19cce63a150bcd23b305a34069b77abdd35e3e7e4fe111ade826116b" -> "sha256:398eba9cff324edd8f8d8adcd284283f880eb07c97d5e3a76b18e956c5a3e553" [label=""];
  "sha256:398eba9cff324edd8f8d8adcd284283f880eb07c97d5e3a76b18e956c5a3e553" -> "sha256:24b5659b4be89f100d0516c78e0b793f8b7842fa740bb1523750e66b09e8cccf" [label=""];
  "sha256:24b5659b4be89f100d0516c78e0b793f8b7842fa740bb1523750e66b09e8cccf" -> "sha256:8c60a4fe72ecbc6009b8ee27ef3ecc58f887e57e498e7bb9d3bcd8c353e2ad9f" [label=""];
}

