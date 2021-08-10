[app/sources/345375024.Dockerfile]
digraph {
  "sha256:4ce2571b7f6390e5be4be64293ecc79fa8d959f0d6323ca656c372e622329c31" [label="docker-image://docker.io/balenalib/nitrogen6x-alpine:3.9-run" shape="ellipse"];
  "sha256:bbec9c5d25a1f733b51934f47862a28d4f1b64729a507a15df827e7eac9a9241" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:4435b51fc0ff84d0f63ea74fb0e260a0fa3dad13a4a156875c6f608d308f5798" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:a1337cd151e6650a0d795fb8d483536643c84c0a3f159f55bd71eb746414eb01" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:94009426f3eadbaaaab2fd7a4927bb507baceec6580c033cdb7b589c96bd398d" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:3ea99b78dc0fb0a5ace3e5a84b8cf3dcb0c45dbb3085617749d7faee93d69932" [label="mkdir{path=/go}" shape="note"];
  "sha256:0de6e515943b138a882c04297bb0d779c13ebfce2c3a9ef20a026d2d2161b6d0" [label="sha256:0de6e515943b138a882c04297bb0d779c13ebfce2c3a9ef20a026d2d2161b6d0" shape="plaintext"];
  "sha256:4ce2571b7f6390e5be4be64293ecc79fa8d959f0d6323ca656c372e622329c31" -> "sha256:bbec9c5d25a1f733b51934f47862a28d4f1b64729a507a15df827e7eac9a9241" [label=""];
  "sha256:bbec9c5d25a1f733b51934f47862a28d4f1b64729a507a15df827e7eac9a9241" -> "sha256:4435b51fc0ff84d0f63ea74fb0e260a0fa3dad13a4a156875c6f608d308f5798" [label=""];
  "sha256:4435b51fc0ff84d0f63ea74fb0e260a0fa3dad13a4a156875c6f608d308f5798" -> "sha256:a1337cd151e6650a0d795fb8d483536643c84c0a3f159f55bd71eb746414eb01" [label=""];
  "sha256:a1337cd151e6650a0d795fb8d483536643c84c0a3f159f55bd71eb746414eb01" -> "sha256:94009426f3eadbaaaab2fd7a4927bb507baceec6580c033cdb7b589c96bd398d" [label=""];
  "sha256:94009426f3eadbaaaab2fd7a4927bb507baceec6580c033cdb7b589c96bd398d" -> "sha256:3ea99b78dc0fb0a5ace3e5a84b8cf3dcb0c45dbb3085617749d7faee93d69932" [label=""];
  "sha256:3ea99b78dc0fb0a5ace3e5a84b8cf3dcb0c45dbb3085617749d7faee93d69932" -> "sha256:0de6e515943b138a882c04297bb0d779c13ebfce2c3a9ef20a026d2d2161b6d0" [label=""];
}

