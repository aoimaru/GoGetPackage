[app/sources/252782769.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:7b3e432e4a3fb7c1b12f2740628d59534421bd56661caf116b9eaf33632ed8c1" [label="/bin/sh -c apt-get -qy update && apt-get -qy install make shellcheck" shape="box"];
  "sha256:79763d5c99138a62412eebf18b8bc93219eddc9cf06e9021637cd87b106574d7" [label="sha256:79763d5c99138a62412eebf18b8bc93219eddc9cf06e9021637cd87b106574d7" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:7b3e432e4a3fb7c1b12f2740628d59534421bd56661caf116b9eaf33632ed8c1" [label=""];
  "sha256:7b3e432e4a3fb7c1b12f2740628d59534421bd56661caf116b9eaf33632ed8c1" -> "sha256:79763d5c99138a62412eebf18b8bc93219eddc9cf06e9021637cd87b106574d7" [label=""];
}

