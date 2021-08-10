[app/sources/345375792.Dockerfile]
digraph {
  "sha256:0ee71b37d2c361bbdc488b18b755a4f668c481635c953b79901fd993d22f7901" [label="docker-image://docker.io/balenalib/orange-pi-zero-debian:buster-run" shape="ellipse"];
  "sha256:ed7f4c3b312ef8a5c64985ffe96d16fb291dc4c4a2b7a16e7851db96bd8fb2a8" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:59e88541300690b2b6eff54ff45f04ac4bd65a50620e07eaa130e2c3958d5bff" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:db7b75ed2ff271692c369c145742e838544fbb5cfba95ae7fa62cb5ea2586086" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:6d1224eeb76122a43e48100b8737b781589553eaaa721393710d149a0a9171d4" [label="mkdir{path=/go}" shape="note"];
  "sha256:b0f3965b701f22b7ccf7ba80b9c112e73a15877bd6d051448bdbdc55aa4b080c" [label="sha256:b0f3965b701f22b7ccf7ba80b9c112e73a15877bd6d051448bdbdc55aa4b080c" shape="plaintext"];
  "sha256:0ee71b37d2c361bbdc488b18b755a4f668c481635c953b79901fd993d22f7901" -> "sha256:ed7f4c3b312ef8a5c64985ffe96d16fb291dc4c4a2b7a16e7851db96bd8fb2a8" [label=""];
  "sha256:ed7f4c3b312ef8a5c64985ffe96d16fb291dc4c4a2b7a16e7851db96bd8fb2a8" -> "sha256:59e88541300690b2b6eff54ff45f04ac4bd65a50620e07eaa130e2c3958d5bff" [label=""];
  "sha256:59e88541300690b2b6eff54ff45f04ac4bd65a50620e07eaa130e2c3958d5bff" -> "sha256:db7b75ed2ff271692c369c145742e838544fbb5cfba95ae7fa62cb5ea2586086" [label=""];
  "sha256:db7b75ed2ff271692c369c145742e838544fbb5cfba95ae7fa62cb5ea2586086" -> "sha256:6d1224eeb76122a43e48100b8737b781589553eaaa721393710d149a0a9171d4" [label=""];
  "sha256:6d1224eeb76122a43e48100b8737b781589553eaaa721393710d149a0a9171d4" -> "sha256:b0f3965b701f22b7ccf7ba80b9c112e73a15877bd6d051448bdbdc55aa4b080c" [label=""];
}

