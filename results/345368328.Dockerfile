[app/sources/345368328.Dockerfile]
digraph {
  "sha256:ef70adf65c7c2c851212d4e4b459ac3ac8b6501b70ae0c77b91796421d01f3bd" [label="docker-image://docker.io/balenalib/asus-tinker-board-alpine:3.7-build" shape="ellipse"];
  "sha256:17b90d32e902f6432bb86cfc2b2991628bbfa9e294d264c8a0846197d7e7a65f" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:af10802a830a61229f2423da6d7c2eba485bcdf843ca6961c665a16fc1b4fcba" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz" shape="box"];
  "sha256:524a0d5f9aeeba0761528ba79d11d708c85f702ecb9763764fced791dd4eb9f1" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4f60236a7cf5f4de6d46bb57da691269488f41e36e94f0543dffa07a050b2837" [label="mkdir{path=/go}" shape="note"];
  "sha256:806442032c6ed6d8e2ae5c99c41e3b53afb762e76c9288a4a423dae3c00d1de3" [label="sha256:806442032c6ed6d8e2ae5c99c41e3b53afb762e76c9288a4a423dae3c00d1de3" shape="plaintext"];
  "sha256:ef70adf65c7c2c851212d4e4b459ac3ac8b6501b70ae0c77b91796421d01f3bd" -> "sha256:17b90d32e902f6432bb86cfc2b2991628bbfa9e294d264c8a0846197d7e7a65f" [label=""];
  "sha256:17b90d32e902f6432bb86cfc2b2991628bbfa9e294d264c8a0846197d7e7a65f" -> "sha256:af10802a830a61229f2423da6d7c2eba485bcdf843ca6961c665a16fc1b4fcba" [label=""];
  "sha256:af10802a830a61229f2423da6d7c2eba485bcdf843ca6961c665a16fc1b4fcba" -> "sha256:524a0d5f9aeeba0761528ba79d11d708c85f702ecb9763764fced791dd4eb9f1" [label=""];
  "sha256:524a0d5f9aeeba0761528ba79d11d708c85f702ecb9763764fced791dd4eb9f1" -> "sha256:4f60236a7cf5f4de6d46bb57da691269488f41e36e94f0543dffa07a050b2837" [label=""];
  "sha256:4f60236a7cf5f4de6d46bb57da691269488f41e36e94f0543dffa07a050b2837" -> "sha256:806442032c6ed6d8e2ae5c99c41e3b53afb762e76c9288a4a423dae3c00d1de3" [label=""];
}

