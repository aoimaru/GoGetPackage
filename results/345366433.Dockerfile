[app/sources/345366433.Dockerfile]
digraph {
  "sha256:f643b3e14d34cbf9e03bc71ceaaaeabbc9cb37c7d8cc00320ceed2f49a109b8f" [label="docker-image://docker.io/balenalib/imx6ul-var-dart-fedora:28-run@sha256:d8919e6c5faac88b7b88bd0794087cfcde6c73cef0cac9d0fcb7433dc71dd952" shape="ellipse"];
  "sha256:47bb3a9cfb5a92a5b5cee4b5f3a4dd55d4b431a6e14b71cdfa537f115a12caad" [label="/bin/sh -c dnf install -y \t\tgcc-c++ \t\tgcc \t\tgit \t&& dnf clean all" shape="box"];
  "sha256:6c8a11dd4dd82714b4e1aa9703e63a32a5e9f34cb47c04cc2407fa495a1e6d96" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:26b235440d4ccf1a3df32ee2a5de27318c38413f0127d4ef3e4ffd09ee26a669" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:de64fc3d9850fd86db6095c6e1b30392b6c0aa3ecbe20d0b2b92f00df77a4dc3" [label="mkdir{path=/go}" shape="note"];
  "sha256:257293b4c7c32035c30df97c38db5512f06946d57ff600f3c4ccbd998773877a" [label="sha256:257293b4c7c32035c30df97c38db5512f06946d57ff600f3c4ccbd998773877a" shape="plaintext"];
  "sha256:f643b3e14d34cbf9e03bc71ceaaaeabbc9cb37c7d8cc00320ceed2f49a109b8f" -> "sha256:47bb3a9cfb5a92a5b5cee4b5f3a4dd55d4b431a6e14b71cdfa537f115a12caad" [label=""];
  "sha256:47bb3a9cfb5a92a5b5cee4b5f3a4dd55d4b431a6e14b71cdfa537f115a12caad" -> "sha256:6c8a11dd4dd82714b4e1aa9703e63a32a5e9f34cb47c04cc2407fa495a1e6d96" [label=""];
  "sha256:6c8a11dd4dd82714b4e1aa9703e63a32a5e9f34cb47c04cc2407fa495a1e6d96" -> "sha256:26b235440d4ccf1a3df32ee2a5de27318c38413f0127d4ef3e4ffd09ee26a669" [label=""];
  "sha256:26b235440d4ccf1a3df32ee2a5de27318c38413f0127d4ef3e4ffd09ee26a669" -> "sha256:de64fc3d9850fd86db6095c6e1b30392b6c0aa3ecbe20d0b2b92f00df77a4dc3" [label=""];
  "sha256:de64fc3d9850fd86db6095c6e1b30392b6c0aa3ecbe20d0b2b92f00df77a4dc3" -> "sha256:257293b4c7c32035c30df97c38db5512f06946d57ff600f3c4ccbd998773877a" [label=""];
}

