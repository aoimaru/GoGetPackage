[app/sources/345367955.Dockerfile]
digraph {
  "sha256:3fe049db45a071cdef540168a9f8d443ececbcfb962b67568e81d9c42cf794c0" [label="docker-image://docker.io/balenalib/artik530-ubuntu:artful-run" shape="ellipse"];
  "sha256:734959bf154c1d190925c5d98ee02893676ff2f841d08a2d7761ed6d0cc6afc3" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a922349853799c172dcd45223a7fe102781c2e745fdc9f351ffb886b982587d4" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:3a3034d07b5dc0b33cc03eaefd4eb4221a80983833f5d03374d6e8b62db2ffbd" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e6aaad15bc957f51acb6c41c8098ee3731827298b64b4309a2cb6cd09f110b97" [label="mkdir{path=/go}" shape="note"];
  "sha256:c916dddb12cbd8dc0de7f596ea4f54e37aade706511a0f87195ff50e5fbe48bb" [label="sha256:c916dddb12cbd8dc0de7f596ea4f54e37aade706511a0f87195ff50e5fbe48bb" shape="plaintext"];
  "sha256:3fe049db45a071cdef540168a9f8d443ececbcfb962b67568e81d9c42cf794c0" -> "sha256:734959bf154c1d190925c5d98ee02893676ff2f841d08a2d7761ed6d0cc6afc3" [label=""];
  "sha256:734959bf154c1d190925c5d98ee02893676ff2f841d08a2d7761ed6d0cc6afc3" -> "sha256:a922349853799c172dcd45223a7fe102781c2e745fdc9f351ffb886b982587d4" [label=""];
  "sha256:a922349853799c172dcd45223a7fe102781c2e745fdc9f351ffb886b982587d4" -> "sha256:3a3034d07b5dc0b33cc03eaefd4eb4221a80983833f5d03374d6e8b62db2ffbd" [label=""];
  "sha256:3a3034d07b5dc0b33cc03eaefd4eb4221a80983833f5d03374d6e8b62db2ffbd" -> "sha256:e6aaad15bc957f51acb6c41c8098ee3731827298b64b4309a2cb6cd09f110b97" [label=""];
  "sha256:e6aaad15bc957f51acb6c41c8098ee3731827298b64b4309a2cb6cd09f110b97" -> "sha256:c916dddb12cbd8dc0de7f596ea4f54e37aade706511a0f87195ff50e5fbe48bb" [label=""];
}

