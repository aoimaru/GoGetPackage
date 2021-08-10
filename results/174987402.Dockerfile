[app/sources/174987402.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:6cd44a366d17bc90814d88a76728f55a96b1ab3b86ae3d0809229d6d5663bfa3" [label="/bin/sh -c set -xe     && apk add --no-cache build-base                           curl                           fts                           fts-dev                           libevent                           libevent-dev                           linux-headers                           openssl                           openssl-dev                           tar     && mkdir sslsplit     && cd sslsplit     && curl -sSL https://github.com/droe/sslsplit/archive/${SSLSPLIT_VERSION}.tar.gz | tar xz --strip 1     && sed -i '/^LIBS/s/$/ -lfts/' GNUmakefile     && make install     && cd ..     && rm -rf sslsplit     && apk del build-base                curl                fts-dev                libevent-dev                linux-headers                openssl-dev                tar" shape="box"];
  "sha256:5f6eb4f418980d490c3c65397071200bd220f19fb6d5b513528274214baa6136" [label="sha256:5f6eb4f418980d490c3c65397071200bd220f19fb6d5b513528274214baa6136" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:6cd44a366d17bc90814d88a76728f55a96b1ab3b86ae3d0809229d6d5663bfa3" [label=""];
  "sha256:6cd44a366d17bc90814d88a76728f55a96b1ab3b86ae3d0809229d6d5663bfa3" -> "sha256:5f6eb4f418980d490c3c65397071200bd220f19fb6d5b513528274214baa6136" [label=""];
}

