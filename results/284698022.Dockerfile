[app/sources/284698022.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:fda6c9df6ad73d116861ffcfb35873c7ad3b3d214749e504c525fb83247b9ddf" [label="/bin/sh -c { \t\techo '#!/bin/sh'; \t\techo 'set -e'; \t\techo; \t\techo 'dirname \"$(dirname \"$(readlink -f \"$(which javac || which java)\")\")\"'; \t} > /usr/local/bin/docker-java-home \t&& chmod +x /usr/local/bin/docker-java-home" shape="box"];
  "sha256:a88a65fec04054fdd792cbd983bcb8a8ac8fa79febf2bfcefc10a1992fda2ef8" [label="/bin/sh -c set -x \t&& apk add --no-cache \t\topenjdk8-jre=\"$JAVA_ALPINE_VERSION\" \t&& [ \"$JAVA_HOME\" = \"$(docker-java-home)\" ]" shape="box"];
  "sha256:dfc3ca867fca02b75aacc06fe045803c92d290dd3fbfbb83de84ee064518de40" [label="sha256:dfc3ca867fca02b75aacc06fe045803c92d290dd3fbfbb83de84ee064518de40" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:fda6c9df6ad73d116861ffcfb35873c7ad3b3d214749e504c525fb83247b9ddf" [label=""];
  "sha256:fda6c9df6ad73d116861ffcfb35873c7ad3b3d214749e504c525fb83247b9ddf" -> "sha256:a88a65fec04054fdd792cbd983bcb8a8ac8fa79febf2bfcefc10a1992fda2ef8" [label=""];
  "sha256:a88a65fec04054fdd792cbd983bcb8a8ac8fa79febf2bfcefc10a1992fda2ef8" -> "sha256:dfc3ca867fca02b75aacc06fe045803c92d290dd3fbfbb83de84ee064518de40" [label=""];
}

