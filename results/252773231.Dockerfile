[app/sources/252773231.Dockerfile]
digraph {
  "sha256:b37972f33109dbb8b4daac693969f672a9008e11e7ce7b058e49eddf91ea5b8d" [label="docker-image://docker.io/library/ubuntu:vivid" shape="ellipse"];
  "sha256:1c6795dd30af833b79e83f6a729bb1fb138dc233e50e5ea437dc7a854048fdda" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -q update && apt-get install --yes -q phantomjs nodejs nodejs-legacy npm git mercurial && apt-get clean" shape="box"];
  "sha256:b4093a6d538d8d7809fe3a75916a97f25e4c199377946029e04a9d23c48a163d" [label="sha256:b4093a6d538d8d7809fe3a75916a97f25e4c199377946029e04a9d23c48a163d" shape="plaintext"];
  "sha256:b37972f33109dbb8b4daac693969f672a9008e11e7ce7b058e49eddf91ea5b8d" -> "sha256:1c6795dd30af833b79e83f6a729bb1fb138dc233e50e5ea437dc7a854048fdda" [label=""];
  "sha256:1c6795dd30af833b79e83f6a729bb1fb138dc233e50e5ea437dc7a854048fdda" -> "sha256:b4093a6d538d8d7809fe3a75916a97f25e4c199377946029e04a9d23c48a163d" [label=""];
}

