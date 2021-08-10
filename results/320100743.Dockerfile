[app/sources/320100743.Dockerfile]
digraph {
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" [label="docker-image://docker.io/library/node:alpine" shape="ellipse"];
  "sha256:79556a9f046220742ce03e2d9af53a9b85b27545da0867a8fd9aa72d3305485a" [label="/bin/sh -c npm install -g webtorrent-cli   && rm -r /root/.npm" shape="box"];
  "sha256:51613a9d692a187194e911ff4d95d1940ad876e3af730a68e052340d9b68f61a" [label="mkdir{path=/downloads}" shape="note"];
  "sha256:c6eb3f89a52be4f4bdc2cb8cd7423717b5f76869ab54013b4e47b0a4d31c4e35" [label="sha256:c6eb3f89a52be4f4bdc2cb8cd7423717b5f76869ab54013b4e47b0a4d31c4e35" shape="plaintext"];
  "sha256:49c22f3c46ac33f934b99ae8d8931a3281c568e14144a24474629da154037493" -> "sha256:79556a9f046220742ce03e2d9af53a9b85b27545da0867a8fd9aa72d3305485a" [label=""];
  "sha256:79556a9f046220742ce03e2d9af53a9b85b27545da0867a8fd9aa72d3305485a" -> "sha256:51613a9d692a187194e911ff4d95d1940ad876e3af730a68e052340d9b68f61a" [label=""];
  "sha256:51613a9d692a187194e911ff4d95d1940ad876e3af730a68e052340d9b68f61a" -> "sha256:c6eb3f89a52be4f4bdc2cb8cd7423717b5f76869ab54013b4e47b0a4d31c4e35" [label=""];
}

