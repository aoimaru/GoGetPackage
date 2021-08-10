[app/sources/345361436.Dockerfile]
digraph {
  "sha256:4d29c41eb474e064f4371c8a3c42e766050ebc36559fb0c5ddd8a57a277ea597" [label="docker-image://docker.io/balenalib/var-som-mx6-debian:jessie-run" shape="ellipse"];
  "sha256:e74eb8eced0f9af8efa13349ccbe8fab32b259494ff70bec842dceb59dd75da5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c4e5507bf159e10d9ccf523c0283ae644d4f1a24282d70fc67824f978911aef6" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:fb28bcc936ada9c4e590359ec9a4f1f7f37d51afdba52f9970adf509c20df588" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:c62a3767989a1a20e7b3c969246b0e3ea908e3c3e780e5c5b905abf7d4ca6695" [label="mkdir{path=/go}" shape="note"];
  "sha256:e9da51e2bbef155d9b623c597774924a1cd4cb7761f7c3fadc16309cd99ebfad" [label="sha256:e9da51e2bbef155d9b623c597774924a1cd4cb7761f7c3fadc16309cd99ebfad" shape="plaintext"];
  "sha256:4d29c41eb474e064f4371c8a3c42e766050ebc36559fb0c5ddd8a57a277ea597" -> "sha256:e74eb8eced0f9af8efa13349ccbe8fab32b259494ff70bec842dceb59dd75da5" [label=""];
  "sha256:e74eb8eced0f9af8efa13349ccbe8fab32b259494ff70bec842dceb59dd75da5" -> "sha256:c4e5507bf159e10d9ccf523c0283ae644d4f1a24282d70fc67824f978911aef6" [label=""];
  "sha256:c4e5507bf159e10d9ccf523c0283ae644d4f1a24282d70fc67824f978911aef6" -> "sha256:fb28bcc936ada9c4e590359ec9a4f1f7f37d51afdba52f9970adf509c20df588" [label=""];
  "sha256:fb28bcc936ada9c4e590359ec9a4f1f7f37d51afdba52f9970adf509c20df588" -> "sha256:c62a3767989a1a20e7b3c969246b0e3ea908e3c3e780e5c5b905abf7d4ca6695" [label=""];
  "sha256:c62a3767989a1a20e7b3c969246b0e3ea908e3c3e780e5c5b905abf7d4ca6695" -> "sha256:e9da51e2bbef155d9b623c597774924a1cd4cb7761f7c3fadc16309cd99ebfad" [label=""];
}

