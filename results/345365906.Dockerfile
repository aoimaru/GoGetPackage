[app/sources/345365906.Dockerfile]
digraph {
  "sha256:da1280ca2dd406171a1ec9c62f19ab4cd0166dad3a19a6b2060c158869ef5ddf" [label="docker-image://docker.io/balenalib/generic-aarch64-alpine:3.7-build" shape="ellipse"];
  "sha256:1ad19719b08074d908994267be6357993c5aacf46b8772503be6199483a531cd" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:2a55f68902adf1a7eff41142f0cff1260bd594f08347ebfe5e9a82869ac75954" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:9d470e4ef463e08f95540458aac6182525fcca7d809fb1682546bdaa6cff21d2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f818fc5f602b30a92423dd9bd1d344eded582912c2f656ead1875ec837ab930a" [label="mkdir{path=/go}" shape="note"];
  "sha256:13528c77873b428489645b8a8455c6112e4aeb71e8be7a1306cafd8e8a5f4b12" [label="sha256:13528c77873b428489645b8a8455c6112e4aeb71e8be7a1306cafd8e8a5f4b12" shape="plaintext"];
  "sha256:da1280ca2dd406171a1ec9c62f19ab4cd0166dad3a19a6b2060c158869ef5ddf" -> "sha256:1ad19719b08074d908994267be6357993c5aacf46b8772503be6199483a531cd" [label=""];
  "sha256:1ad19719b08074d908994267be6357993c5aacf46b8772503be6199483a531cd" -> "sha256:2a55f68902adf1a7eff41142f0cff1260bd594f08347ebfe5e9a82869ac75954" [label=""];
  "sha256:2a55f68902adf1a7eff41142f0cff1260bd594f08347ebfe5e9a82869ac75954" -> "sha256:9d470e4ef463e08f95540458aac6182525fcca7d809fb1682546bdaa6cff21d2" [label=""];
  "sha256:9d470e4ef463e08f95540458aac6182525fcca7d809fb1682546bdaa6cff21d2" -> "sha256:f818fc5f602b30a92423dd9bd1d344eded582912c2f656ead1875ec837ab930a" [label=""];
  "sha256:f818fc5f602b30a92423dd9bd1d344eded582912c2f656ead1875ec837ab930a" -> "sha256:13528c77873b428489645b8a8455c6112e4aeb71e8be7a1306cafd8e8a5f4b12" [label=""];
}

