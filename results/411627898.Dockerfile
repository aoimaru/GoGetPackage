[app/sources/411627898.Dockerfile]
digraph {
  "sha256:82eea6a9f85a6fbb41e8ec32246eb7d623c71b4d67268641dd4eff1eefb0db52" [label="docker-image://docker.io/mhart/alpine-node:11" shape="ellipse"];
  "sha256:489ba17eebe0cd3d7bf8a908f0a3128062cd4d5f984697625111b33bccd117db" [label="/bin/sh -c npm install -g markdown-toc" shape="box"];
  "sha256:af8f6115a43c345e8adeac1904735a9029015c7bb6b44645437a4ce56b387bd6" [label="mkdir{path=/project}" shape="note"];
  "sha256:0f6eb44347d225f9f1093c092c416541e1c76e1f7dd1680892ee775d46205257" [label="sha256:0f6eb44347d225f9f1093c092c416541e1c76e1f7dd1680892ee775d46205257" shape="plaintext"];
  "sha256:82eea6a9f85a6fbb41e8ec32246eb7d623c71b4d67268641dd4eff1eefb0db52" -> "sha256:489ba17eebe0cd3d7bf8a908f0a3128062cd4d5f984697625111b33bccd117db" [label=""];
  "sha256:489ba17eebe0cd3d7bf8a908f0a3128062cd4d5f984697625111b33bccd117db" -> "sha256:af8f6115a43c345e8adeac1904735a9029015c7bb6b44645437a4ce56b387bd6" [label=""];
  "sha256:af8f6115a43c345e8adeac1904735a9029015c7bb6b44645437a4ce56b387bd6" -> "sha256:0f6eb44347d225f9f1093c092c416541e1c76e1f7dd1680892ee775d46205257" [label=""];
}

