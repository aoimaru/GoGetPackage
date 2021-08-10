[app/sources/345359919.Dockerfile]
digraph {
  "sha256:5ccc1dc6a25630c50420c28eef8e2d645276afec9914f0902a14c19247315764" [label="docker-image://docker.io/balenalib/rpi-alpine:3.7-run" shape="ellipse"];
  "sha256:4b5a5e3c8c5b0c36fcceff4e91c23afdb03c8bea9e6439f79b44196b253945c5" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:1d47121a7da678942d9dbd407a65ba7184124a08c6d6495c1e8c5e520d322e0e" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:d86cc5fb0f018d83daab25e6db3fe3261a1dc052d7bf11815dc1c185f8267493" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv6hf.tar.gz\" \t&& echo \"eafdc614c5c965c9523af11c901908a742cb5c9101150920326f66afda04fdca  go$GO_VERSION.linux-alpine-armv6hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv6hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv6hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:fa4a1d5273125eb1aca444b6cb00a00ef63c4c95b5a0d92984bea66430f1423d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:22600b54834ef21bc74250faae6c90b5ea18e0c7064a8e5cb9c567b1a8a0fa82" [label="mkdir{path=/go}" shape="note"];
  "sha256:fa7abd9938597657c95b68443d372f408c0613fc08cde6c2e8e59de191a302d8" [label="sha256:fa7abd9938597657c95b68443d372f408c0613fc08cde6c2e8e59de191a302d8" shape="plaintext"];
  "sha256:5ccc1dc6a25630c50420c28eef8e2d645276afec9914f0902a14c19247315764" -> "sha256:4b5a5e3c8c5b0c36fcceff4e91c23afdb03c8bea9e6439f79b44196b253945c5" [label=""];
  "sha256:4b5a5e3c8c5b0c36fcceff4e91c23afdb03c8bea9e6439f79b44196b253945c5" -> "sha256:1d47121a7da678942d9dbd407a65ba7184124a08c6d6495c1e8c5e520d322e0e" [label=""];
  "sha256:1d47121a7da678942d9dbd407a65ba7184124a08c6d6495c1e8c5e520d322e0e" -> "sha256:d86cc5fb0f018d83daab25e6db3fe3261a1dc052d7bf11815dc1c185f8267493" [label=""];
  "sha256:d86cc5fb0f018d83daab25e6db3fe3261a1dc052d7bf11815dc1c185f8267493" -> "sha256:fa4a1d5273125eb1aca444b6cb00a00ef63c4c95b5a0d92984bea66430f1423d" [label=""];
  "sha256:fa4a1d5273125eb1aca444b6cb00a00ef63c4c95b5a0d92984bea66430f1423d" -> "sha256:22600b54834ef21bc74250faae6c90b5ea18e0c7064a8e5cb9c567b1a8a0fa82" [label=""];
  "sha256:22600b54834ef21bc74250faae6c90b5ea18e0c7064a8e5cb9c567b1a8a0fa82" -> "sha256:fa7abd9938597657c95b68443d372f408c0613fc08cde6c2e8e59de191a302d8" [label=""];
}

