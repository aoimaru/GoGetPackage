[app/sources/345359998.Dockerfile]
digraph {
  "sha256:da66a86f856536c82b50d8edac5d46c22c4e88880acfdd33e8df250492ad4917" [label="docker-image://docker.io/balenalib/spacely-tx2-alpine:3.5-build@sha256:df52f352574efb5c8e5a43dd9352699acbf62b0c4611767314069afd734cca2e" shape="ellipse"];
  "sha256:272c2bacddb8e1bcb9c5057ed910eea28a21f5dba548d5259a80bc9111a0d5ee" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:6ac943f046afbdccba9ec19dc9a01b7773fe07c9e7950e9fb1455985747aebbc" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:241420b8346464a8346f2bcf3c14a6e139517fa3018eaa5ec1cde1fcd5718764" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:434fdd86bf5bb2f2cf0b59550cdf2177b8e323486cbafc90c2dd8c3c809a7274" [label="mkdir{path=/go}" shape="note"];
  "sha256:c07f20613580b96b6b04bdebde576512905c5704be2f8b6cfd07b44bc6384540" [label="sha256:c07f20613580b96b6b04bdebde576512905c5704be2f8b6cfd07b44bc6384540" shape="plaintext"];
  "sha256:da66a86f856536c82b50d8edac5d46c22c4e88880acfdd33e8df250492ad4917" -> "sha256:272c2bacddb8e1bcb9c5057ed910eea28a21f5dba548d5259a80bc9111a0d5ee" [label=""];
  "sha256:272c2bacddb8e1bcb9c5057ed910eea28a21f5dba548d5259a80bc9111a0d5ee" -> "sha256:6ac943f046afbdccba9ec19dc9a01b7773fe07c9e7950e9fb1455985747aebbc" [label=""];
  "sha256:6ac943f046afbdccba9ec19dc9a01b7773fe07c9e7950e9fb1455985747aebbc" -> "sha256:241420b8346464a8346f2bcf3c14a6e139517fa3018eaa5ec1cde1fcd5718764" [label=""];
  "sha256:241420b8346464a8346f2bcf3c14a6e139517fa3018eaa5ec1cde1fcd5718764" -> "sha256:434fdd86bf5bb2f2cf0b59550cdf2177b8e323486cbafc90c2dd8c3c809a7274" [label=""];
  "sha256:434fdd86bf5bb2f2cf0b59550cdf2177b8e323486cbafc90c2dd8c3c809a7274" -> "sha256:c07f20613580b96b6b04bdebde576512905c5704be2f8b6cfd07b44bc6384540" [label=""];
}

