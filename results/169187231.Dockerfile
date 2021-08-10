[app/sources/169187231.Dockerfile]
digraph {
  "sha256:40b6ffaf2ed13772c42318875c65731bd443a3998441707104dde51995d6a4d9" [label="docker-image://docker.io/supermy/alpine@sha256:ea20d138bcf8cddc18b742c2d7829ab1e3fdbfddba0bce0d0d019f193722e22f" shape="ellipse"];
  "sha256:1692b9b544ae2831c3c6e65f7f5a3f429feb2a99a1aa570b60a13a29cda81255" [label="/bin/sh -c apk add lmdb --update-cache --no-cache  --repository http://nl.alpinelinux.org/alpine/edge/testing" shape="box"];
  "sha256:a38034d309546afae248df2e8160380bed4ffb102b581848a307705ba582e616" [label="sha256:a38034d309546afae248df2e8160380bed4ffb102b581848a307705ba582e616" shape="plaintext"];
  "sha256:40b6ffaf2ed13772c42318875c65731bd443a3998441707104dde51995d6a4d9" -> "sha256:1692b9b544ae2831c3c6e65f7f5a3f429feb2a99a1aa570b60a13a29cda81255" [label=""];
  "sha256:1692b9b544ae2831c3c6e65f7f5a3f429feb2a99a1aa570b60a13a29cda81255" -> "sha256:a38034d309546afae248df2e8160380bed4ffb102b581848a307705ba582e616" [label=""];
}

