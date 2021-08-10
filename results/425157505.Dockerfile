[app/sources/425157505.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:799515e44e23f551d01e9192db49e2cf23c21bb69854a950b388576475f173b4" [label="/bin/sh -c apk add --update     jq curl     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:25a25859256d7afc44e75c9a8e4893068c2ef251210ed5fd81fdc99297219190" [label="sha256:25a25859256d7afc44e75c9a8e4893068c2ef251210ed5fd81fdc99297219190" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:799515e44e23f551d01e9192db49e2cf23c21bb69854a950b388576475f173b4" [label=""];
  "sha256:799515e44e23f551d01e9192db49e2cf23c21bb69854a950b388576475f173b4" -> "sha256:25a25859256d7afc44e75c9a8e4893068c2ef251210ed5fd81fdc99297219190" [label=""];
}

