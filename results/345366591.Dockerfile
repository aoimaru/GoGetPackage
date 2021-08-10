[app/sources/345366591.Dockerfile]
digraph {
  "sha256:82153f739f78c1be4de2d90d096fdcaa85ca7583bc2e93766599a6e589c27d5a" [label="docker-image://docker.io/balenalib/imx8m-var-dart-alpine:3.6-run" shape="ellipse"];
  "sha256:5d924fd756d9856caeb6d5f5b2d8e9e294984b896d5838f7cdd0975c8d7b4a0d" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:90b469dda9d38fd7085ac94e94c0ffc6bece3510f08aca34fcd0338ef432d705" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:a2614accbb3085246fc0ffa3fa80a63dd7c7378b4c3f542c4eb10de6e33ff247" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-aarch64.tar.gz\" \t&& echo \"983d78e68083b3ebaf918cdc3be8fa448b1e158d4a184090e8e07a2a250c3bee  go$GO_VERSION.linux-alpine-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-aarch64.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:f37ea6520985cdda39a41524ce222b296e7b9590df35b37ecb5b329fb3b1bb46" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9bc5d9ff8545f4b72915c32796498db536b144faf883424b85d66de683df70f8" [label="mkdir{path=/go}" shape="note"];
  "sha256:783ca55b40d78e3210b0baf478155437babc02cacadd86f816bd6072fecd1b8a" [label="sha256:783ca55b40d78e3210b0baf478155437babc02cacadd86f816bd6072fecd1b8a" shape="plaintext"];
  "sha256:82153f739f78c1be4de2d90d096fdcaa85ca7583bc2e93766599a6e589c27d5a" -> "sha256:5d924fd756d9856caeb6d5f5b2d8e9e294984b896d5838f7cdd0975c8d7b4a0d" [label=""];
  "sha256:5d924fd756d9856caeb6d5f5b2d8e9e294984b896d5838f7cdd0975c8d7b4a0d" -> "sha256:90b469dda9d38fd7085ac94e94c0ffc6bece3510f08aca34fcd0338ef432d705" [label=""];
  "sha256:90b469dda9d38fd7085ac94e94c0ffc6bece3510f08aca34fcd0338ef432d705" -> "sha256:a2614accbb3085246fc0ffa3fa80a63dd7c7378b4c3f542c4eb10de6e33ff247" [label=""];
  "sha256:a2614accbb3085246fc0ffa3fa80a63dd7c7378b4c3f542c4eb10de6e33ff247" -> "sha256:f37ea6520985cdda39a41524ce222b296e7b9590df35b37ecb5b329fb3b1bb46" [label=""];
  "sha256:f37ea6520985cdda39a41524ce222b296e7b9590df35b37ecb5b329fb3b1bb46" -> "sha256:9bc5d9ff8545f4b72915c32796498db536b144faf883424b85d66de683df70f8" [label=""];
  "sha256:9bc5d9ff8545f4b72915c32796498db536b144faf883424b85d66de683df70f8" -> "sha256:783ca55b40d78e3210b0baf478155437babc02cacadd86f816bd6072fecd1b8a" [label=""];
}

