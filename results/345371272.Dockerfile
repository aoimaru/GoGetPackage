[app/sources/345371272.Dockerfile]
digraph {
  "sha256:ece2df15f9b93891755b9e45baf2c57d6abe7e9d0e0aefa53d4d75c832d7d16c" [label="docker-image://docker.io/balenalib/blackboard-tx2-ubuntu:cosmic-build" shape="ellipse"];
  "sha256:7ba3eb87a0bdb31cdec0f810267d7e0c7d82c12aecedd1b2e0f2ce1ac2d582e1" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz" shape="box"];
  "sha256:58e7980932e28bd517d2cf82b93458ae09e93c0cf8017da24fa3f13af8835b9c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:05da3ad933d268f6760b88678f6026ae3b5b50a57c1aec18589d6d9521bde7aa" [label="mkdir{path=/go}" shape="note"];
  "sha256:5749a7636cb462e4a6a05bc71854d808a3605e38293879e51a78f5f8108eeec9" [label="sha256:5749a7636cb462e4a6a05bc71854d808a3605e38293879e51a78f5f8108eeec9" shape="plaintext"];
  "sha256:ece2df15f9b93891755b9e45baf2c57d6abe7e9d0e0aefa53d4d75c832d7d16c" -> "sha256:7ba3eb87a0bdb31cdec0f810267d7e0c7d82c12aecedd1b2e0f2ce1ac2d582e1" [label=""];
  "sha256:7ba3eb87a0bdb31cdec0f810267d7e0c7d82c12aecedd1b2e0f2ce1ac2d582e1" -> "sha256:58e7980932e28bd517d2cf82b93458ae09e93c0cf8017da24fa3f13af8835b9c" [label=""];
  "sha256:58e7980932e28bd517d2cf82b93458ae09e93c0cf8017da24fa3f13af8835b9c" -> "sha256:05da3ad933d268f6760b88678f6026ae3b5b50a57c1aec18589d6d9521bde7aa" [label=""];
  "sha256:05da3ad933d268f6760b88678f6026ae3b5b50a57c1aec18589d6d9521bde7aa" -> "sha256:5749a7636cb462e4a6a05bc71854d808a3605e38293879e51a78f5f8108eeec9" [label=""];
}

