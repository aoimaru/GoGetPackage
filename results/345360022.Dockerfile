[app/sources/345360022.Dockerfile]
digraph {
  "sha256:db165e0c36c7c0ce12c1de139f9dfd2f1f0e22071d9df13b4cc0c17ae3dbbd6f" [label="docker-image://docker.io/balenalib/spacely-tx2-alpine:3.7-run" shape="ellipse"];
  "sha256:99d4e81fcca341a6745adfcc1796379fb30e9494b4ca01583c41c2a41f478da3" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:ceccd228ab6dd95cb42d0d8c48841ca6506a21926b52cc58b3d36cfb5692811f" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:5ff07e174a6ee24a59550b7dd72cd2b403ded0754c7629f33ea66a4536da831d" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:aa18904470f3bdf8d546d5214ee3dbe1b6a545261a2ce72198f073bef23ad5dd" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:930eee7719e63f9101c1c2475150df82d309eb5b1bc7908ac42a3a4a3f3273d6" [label="mkdir{path=/go}" shape="note"];
  "sha256:36efe36cb119dee0cdd3eb88bee0df23bac70cd0926b8f610bc88ec6c9aa22e3" [label="sha256:36efe36cb119dee0cdd3eb88bee0df23bac70cd0926b8f610bc88ec6c9aa22e3" shape="plaintext"];
  "sha256:db165e0c36c7c0ce12c1de139f9dfd2f1f0e22071d9df13b4cc0c17ae3dbbd6f" -> "sha256:99d4e81fcca341a6745adfcc1796379fb30e9494b4ca01583c41c2a41f478da3" [label=""];
  "sha256:99d4e81fcca341a6745adfcc1796379fb30e9494b4ca01583c41c2a41f478da3" -> "sha256:ceccd228ab6dd95cb42d0d8c48841ca6506a21926b52cc58b3d36cfb5692811f" [label=""];
  "sha256:ceccd228ab6dd95cb42d0d8c48841ca6506a21926b52cc58b3d36cfb5692811f" -> "sha256:5ff07e174a6ee24a59550b7dd72cd2b403ded0754c7629f33ea66a4536da831d" [label=""];
  "sha256:5ff07e174a6ee24a59550b7dd72cd2b403ded0754c7629f33ea66a4536da831d" -> "sha256:aa18904470f3bdf8d546d5214ee3dbe1b6a545261a2ce72198f073bef23ad5dd" [label=""];
  "sha256:aa18904470f3bdf8d546d5214ee3dbe1b6a545261a2ce72198f073bef23ad5dd" -> "sha256:930eee7719e63f9101c1c2475150df82d309eb5b1bc7908ac42a3a4a3f3273d6" [label=""];
  "sha256:930eee7719e63f9101c1c2475150df82d309eb5b1bc7908ac42a3a4a3f3273d6" -> "sha256:36efe36cb119dee0cdd3eb88bee0df23bac70cd0926b8f610bc88ec6c9aa22e3" [label=""];
}

