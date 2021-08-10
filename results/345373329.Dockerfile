[app/sources/345373329.Dockerfile]
digraph {
  "sha256:252e72d5b0ccce62d517c74eadf1eb2a63e0f6f76e893c246286c1fb5353ac0c" [label="docker-image://docker.io/balenalib/jetson-tx2-alpine:3.5-build@sha256:df52f352574efb5c8e5a43dd9352699acbf62b0c4611767314069afd734cca2e" shape="ellipse"];
  "sha256:e955d6c9fcc809f353dcf55692c3a04855c1aed2363e772ee09d16c6c15a20d0" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:518da3e46263db90f7ecd1985b80fd6d007c3a383cb9d2fc8593681558a9d6e6" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz" shape="box"];
  "sha256:a0cc4cd73b15ea9581b7fbbf79b74d822b8d80c6c10d2ed0db6831129b2e2481" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d9bf7a106b9d5e08d2e53f1ded9129a4b0bac602ecca7d7721ef3e08265fef70" [label="mkdir{path=/go}" shape="note"];
  "sha256:f42a9d83aec920000bda8e4e75b4e289310a3777763a3305401bd7f9da222910" [label="sha256:f42a9d83aec920000bda8e4e75b4e289310a3777763a3305401bd7f9da222910" shape="plaintext"];
  "sha256:252e72d5b0ccce62d517c74eadf1eb2a63e0f6f76e893c246286c1fb5353ac0c" -> "sha256:e955d6c9fcc809f353dcf55692c3a04855c1aed2363e772ee09d16c6c15a20d0" [label=""];
  "sha256:e955d6c9fcc809f353dcf55692c3a04855c1aed2363e772ee09d16c6c15a20d0" -> "sha256:518da3e46263db90f7ecd1985b80fd6d007c3a383cb9d2fc8593681558a9d6e6" [label=""];
  "sha256:518da3e46263db90f7ecd1985b80fd6d007c3a383cb9d2fc8593681558a9d6e6" -> "sha256:a0cc4cd73b15ea9581b7fbbf79b74d822b8d80c6c10d2ed0db6831129b2e2481" [label=""];
  "sha256:a0cc4cd73b15ea9581b7fbbf79b74d822b8d80c6c10d2ed0db6831129b2e2481" -> "sha256:d9bf7a106b9d5e08d2e53f1ded9129a4b0bac602ecca7d7721ef3e08265fef70" [label=""];
  "sha256:d9bf7a106b9d5e08d2e53f1ded9129a4b0bac602ecca7d7721ef3e08265fef70" -> "sha256:f42a9d83aec920000bda8e4e75b4e289310a3777763a3305401bd7f9da222910" [label=""];
}

