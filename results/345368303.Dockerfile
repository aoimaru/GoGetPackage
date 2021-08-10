[app/sources/345368303.Dockerfile]
digraph {
  "sha256:a0802888b6eb620a177b7ce78693ee8d9dd92d2644e40f7395ca491f61b77e7e" [label="docker-image://docker.io/balenalib/asus-tinker-board-s-ubuntu:trusty-run" shape="ellipse"];
  "sha256:833259d8b16b63bacb441858eec386552f3c84bd6c88d1cf44521f9b56a72a0d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6df690f3edcf065d6f6f1519461b6e49d496081c6e9496485e6437516d094e5a" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:449b78e6a6c66adb2d22ab83a2a1e2108f6cf652da7388fffa7d9f793bead4b9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0ce536063e5a7ea9a55d7a60f8b276579f165e74c8fcfa6ed4387494b48bc2fd" [label="mkdir{path=/go}" shape="note"];
  "sha256:f22c0bab8bc79d4284134c0af0af24c671a22d93b715e09c46e6784703707f70" [label="sha256:f22c0bab8bc79d4284134c0af0af24c671a22d93b715e09c46e6784703707f70" shape="plaintext"];
  "sha256:a0802888b6eb620a177b7ce78693ee8d9dd92d2644e40f7395ca491f61b77e7e" -> "sha256:833259d8b16b63bacb441858eec386552f3c84bd6c88d1cf44521f9b56a72a0d" [label=""];
  "sha256:833259d8b16b63bacb441858eec386552f3c84bd6c88d1cf44521f9b56a72a0d" -> "sha256:6df690f3edcf065d6f6f1519461b6e49d496081c6e9496485e6437516d094e5a" [label=""];
  "sha256:6df690f3edcf065d6f6f1519461b6e49d496081c6e9496485e6437516d094e5a" -> "sha256:449b78e6a6c66adb2d22ab83a2a1e2108f6cf652da7388fffa7d9f793bead4b9" [label=""];
  "sha256:449b78e6a6c66adb2d22ab83a2a1e2108f6cf652da7388fffa7d9f793bead4b9" -> "sha256:0ce536063e5a7ea9a55d7a60f8b276579f165e74c8fcfa6ed4387494b48bc2fd" [label=""];
  "sha256:0ce536063e5a7ea9a55d7a60f8b276579f165e74c8fcfa6ed4387494b48bc2fd" -> "sha256:f22c0bab8bc79d4284134c0af0af24c671a22d93b715e09c46e6784703707f70" [label=""];
}

