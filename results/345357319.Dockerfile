[app/sources/345357319.Dockerfile]
digraph {
  "sha256:408c261c8544fd9b80566ac0be33d5b8fa93dcd407cf087c3fd24be83b64652e" [label="docker-image://docker.io/balenalib/orbitty-tx2-alpine:3.9-build" shape="ellipse"];
  "sha256:d8a9143cd350349232710ee7121bf4bb40c9f594474425b1cb397288448508a9" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:9b8d8db0f588da48b76b091e3837c477a00a931757e140d871348fce67b83d00" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:3b1b5d92ce634e44436adf9ff3cb456b614404bf3749e57833ea00aa7ee855e4" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0621fc63ea8d49ba2b7f8a8c191188aba43e3c80eba3efbabb217246465a3b90" [label="mkdir{path=/go}" shape="note"];
  "sha256:9fcc65f6db7f9839be1ba00d7e01983a18b8610c2baa470324a070fb80fb5639" [label="sha256:9fcc65f6db7f9839be1ba00d7e01983a18b8610c2baa470324a070fb80fb5639" shape="plaintext"];
  "sha256:408c261c8544fd9b80566ac0be33d5b8fa93dcd407cf087c3fd24be83b64652e" -> "sha256:d8a9143cd350349232710ee7121bf4bb40c9f594474425b1cb397288448508a9" [label=""];
  "sha256:d8a9143cd350349232710ee7121bf4bb40c9f594474425b1cb397288448508a9" -> "sha256:9b8d8db0f588da48b76b091e3837c477a00a931757e140d871348fce67b83d00" [label=""];
  "sha256:9b8d8db0f588da48b76b091e3837c477a00a931757e140d871348fce67b83d00" -> "sha256:3b1b5d92ce634e44436adf9ff3cb456b614404bf3749e57833ea00aa7ee855e4" [label=""];
  "sha256:3b1b5d92ce634e44436adf9ff3cb456b614404bf3749e57833ea00aa7ee855e4" -> "sha256:0621fc63ea8d49ba2b7f8a8c191188aba43e3c80eba3efbabb217246465a3b90" [label=""];
  "sha256:0621fc63ea8d49ba2b7f8a8c191188aba43e3c80eba3efbabb217246465a3b90" -> "sha256:9fcc65f6db7f9839be1ba00d7e01983a18b8610c2baa470324a070fb80fb5639" [label=""];
}

