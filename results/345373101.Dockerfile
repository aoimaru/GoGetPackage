[app/sources/345373101.Dockerfile]
digraph {
  "sha256:3ec1c6dac317554ae4d05d3f6ed5970f842758cd88e631ab91dbabeb92b6e380" [label="docker-image://docker.io/balenalib/jetson-nano-alpine:3.5-build" shape="ellipse"];
  "sha256:6e41fc89b9f5778ef525b2017725d8591000e77d7f6e8dfd48fe4ad751588dd9" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:c2643d5b9857ce45bdb60e601d62ab44d79a65565c0732d89264d0a432595129" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:53488b67416ed68f22254145e6db2a795cce302f70460c9942fd0ed637cd1504" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d00a16e8fd0db36b5f3296cbb5d7674699c8e4c76357c7bc64a07df0e5f276b9" [label="mkdir{path=/go}" shape="note"];
  "sha256:b3c6fb94f521c1d093a4b8d011c0a7f5307943b0faa11fea0677c9e45a9e00ad" [label="sha256:b3c6fb94f521c1d093a4b8d011c0a7f5307943b0faa11fea0677c9e45a9e00ad" shape="plaintext"];
  "sha256:3ec1c6dac317554ae4d05d3f6ed5970f842758cd88e631ab91dbabeb92b6e380" -> "sha256:6e41fc89b9f5778ef525b2017725d8591000e77d7f6e8dfd48fe4ad751588dd9" [label=""];
  "sha256:6e41fc89b9f5778ef525b2017725d8591000e77d7f6e8dfd48fe4ad751588dd9" -> "sha256:c2643d5b9857ce45bdb60e601d62ab44d79a65565c0732d89264d0a432595129" [label=""];
  "sha256:c2643d5b9857ce45bdb60e601d62ab44d79a65565c0732d89264d0a432595129" -> "sha256:53488b67416ed68f22254145e6db2a795cce302f70460c9942fd0ed637cd1504" [label=""];
  "sha256:53488b67416ed68f22254145e6db2a795cce302f70460c9942fd0ed637cd1504" -> "sha256:d00a16e8fd0db36b5f3296cbb5d7674699c8e4c76357c7bc64a07df0e5f276b9" [label=""];
  "sha256:d00a16e8fd0db36b5f3296cbb5d7674699c8e4c76357c7bc64a07df0e5f276b9" -> "sha256:b3c6fb94f521c1d093a4b8d011c0a7f5307943b0faa11fea0677c9e45a9e00ad" [label=""];
}

