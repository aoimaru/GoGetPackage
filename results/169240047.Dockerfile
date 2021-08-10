[app/sources/169240047.Dockerfile]
digraph {
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" [label="docker-image://docker.io/library/alpine:3.2" shape="ellipse"];
  "sha256:e865149c302b28394ae1845bfda7d619b3e32c43adb5f914ed1dce2f0c1be489" [label="/bin/sh -c apk add --update bind-tools curl &&   curl -sSL https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-amd64.tar.gz | tar xvfz - -C / &&   apk del curl &&   apk add --update nodejs redis openssl &&   npm install --prefix=/usr/local -g https://github.com/thinktandem/hipache/tarball/$HIPACHE_VERSION --production &&   mkdir -p /var/log/hipache &&   mkdir -p /certs &&   rm -rf /var/cache/apk/*" shape="box"];
  "sha256:fbc1b79c88b0ec6b972ab564d7cd646d9290fb2b6a4f84c7e41f36845db23bcf" [label="local://context" shape="ellipse"];
  "sha256:6783d539818136019587fa0bbaae5317171f0ab71e2cfe570c12ed29a1ed8a1b" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:cbbcc8d083e65216b58b1da2732c26f3696083f0033e579e79c24940c3529501" [label="sha256:cbbcc8d083e65216b58b1da2732c26f3696083f0033e579e79c24940c3529501" shape="plaintext"];
  "sha256:aa8c6d466deae7796ca5acc9ee07db5f1691ec651f8a5cef6452ac9e82cb2f83" -> "sha256:e865149c302b28394ae1845bfda7d619b3e32c43adb5f914ed1dce2f0c1be489" [label=""];
  "sha256:e865149c302b28394ae1845bfda7d619b3e32c43adb5f914ed1dce2f0c1be489" -> "sha256:6783d539818136019587fa0bbaae5317171f0ab71e2cfe570c12ed29a1ed8a1b" [label=""];
  "sha256:fbc1b79c88b0ec6b972ab564d7cd646d9290fb2b6a4f84c7e41f36845db23bcf" -> "sha256:6783d539818136019587fa0bbaae5317171f0ab71e2cfe570c12ed29a1ed8a1b" [label=""];
  "sha256:6783d539818136019587fa0bbaae5317171f0ab71e2cfe570c12ed29a1ed8a1b" -> "sha256:cbbcc8d083e65216b58b1da2732c26f3696083f0033e579e79c24940c3529501" [label=""];
}

