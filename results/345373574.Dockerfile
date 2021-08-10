[app/sources/345373574.Dockerfile]
digraph {
  "sha256:b7098cff3f6b64907499ef19d8dc9bebf65ec308492b2a59ab8791013546c016" [label="docker-image://docker.io/balenalib/kitra710-alpine:3.9-run" shape="ellipse"];
  "sha256:ce618902f4078a9d9b81981a39e9c51d11565fc044499b5ab962201d8588f7d2" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:2ab54de3f30cb573cc5b75cbc4c760a79c5ec81a8d0c0c26ddf3d3f92cf766a6" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:164bacc1f7a189dc1cdba14e03b719d7c9d236a5ef5b96fd7615b03a9d8fdd26" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"03fee34f3aad11399ce846dbab0fb24e2f17f425eb5d7f52af67642e09c0ed28  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:1719c6d7112e190eae5daa6e6a077856c8d4ffdd683a44e097bc9e4f93ae87ac" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:83713d79a5dc63cf022f2ae7551eb3679edffdc3460aa095e3be813e77d72751" [label="mkdir{path=/go}" shape="note"];
  "sha256:bcdf3c322f3e41746617d5edf874297d22ceb68d6f136b625b504350fb11f2b8" [label="sha256:bcdf3c322f3e41746617d5edf874297d22ceb68d6f136b625b504350fb11f2b8" shape="plaintext"];
  "sha256:b7098cff3f6b64907499ef19d8dc9bebf65ec308492b2a59ab8791013546c016" -> "sha256:ce618902f4078a9d9b81981a39e9c51d11565fc044499b5ab962201d8588f7d2" [label=""];
  "sha256:ce618902f4078a9d9b81981a39e9c51d11565fc044499b5ab962201d8588f7d2" -> "sha256:2ab54de3f30cb573cc5b75cbc4c760a79c5ec81a8d0c0c26ddf3d3f92cf766a6" [label=""];
  "sha256:2ab54de3f30cb573cc5b75cbc4c760a79c5ec81a8d0c0c26ddf3d3f92cf766a6" -> "sha256:164bacc1f7a189dc1cdba14e03b719d7c9d236a5ef5b96fd7615b03a9d8fdd26" [label=""];
  "sha256:164bacc1f7a189dc1cdba14e03b719d7c9d236a5ef5b96fd7615b03a9d8fdd26" -> "sha256:1719c6d7112e190eae5daa6e6a077856c8d4ffdd683a44e097bc9e4f93ae87ac" [label=""];
  "sha256:1719c6d7112e190eae5daa6e6a077856c8d4ffdd683a44e097bc9e4f93ae87ac" -> "sha256:83713d79a5dc63cf022f2ae7551eb3679edffdc3460aa095e3be813e77d72751" [label=""];
  "sha256:83713d79a5dc63cf022f2ae7551eb3679edffdc3460aa095e3be813e77d72751" -> "sha256:bcdf3c322f3e41746617d5edf874297d22ceb68d6f136b625b504350fb11f2b8" [label=""];
}

