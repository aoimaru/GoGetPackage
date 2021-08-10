[app/sources/216634005.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:f912d95f458fdf2c4f57ea1838651ffb0b4a9c836a8fad7ebdf885680cdf0dba" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -yy -q --no-install-recommends         awscli         ca-certificates         curl         docker.io         git         jq         lsb-release         make         rsync         runit         sudo         zip &&     curl -sL https://deb.nodesource.com/setup_10.x | bash - &&     DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -yy -q --no-install-recommends nodejs &&     DEBIAN_FRONTEND=noninteractive apt-get upgrade -y &&     DEBIAN_FRONTEND=noninteractive apt-get autoremove -y &&     DEBIAN_FRONTEND=noninteractive apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:d4cbae4f5f5abf55369fa302661aae915d032651c189229d046f157e6866fb5c" [label="/bin/sh -c GO_VERSION=1.11 &&     GO_HASH=b3fcf280ff86558e0559e185b601c9eade0fd24c900b4c63cd14d1d38613e499 &&     curl -fsSL https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz -o golang.tar.gz &&     echo \"${GO_HASH}  golang.tar.gz\" | sha256sum -c - &&     tar -C /usr/local -xzf golang.tar.gz &&     rm golang.tar.gz" shape="box"];
  "sha256:c23ff6b7357541f2f548d4d389dd59bbd59c3e7cda16a4b7a6d4558a963100c4" [label="/bin/sh -c curl -sSL --fail -o /tini https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-${ARCH} &&     chmod +x /tini" shape="box"];
  "sha256:c85f1b645bdfad3987f12d415af804242366d2efcc6c3507b8a8c0ae62f53bc5" [label="/bin/sh -c platforms=\"darwin_amd64 windows_amd64 linux_amd64 linux_arm64\" &&     for p in $platforms; do CGO_ENABLED=0 GOOS=${p%_*} GOARCH=${p##*_} GOARM=7 go install -installsuffix static -a std; done" shape="box"];
  "sha256:8872c680a88415e7550118f05a98854b7b52dc3647bc177ffe5318d709314732" [label="local://context" shape="ellipse"];
  "sha256:cd3481a7049637cd32443be87ede7e15fed322c42c4dfa4b646b9adbe15191a8" [label="copy{src=/run.sh, dest=/build/},copy{src=/rsyncd.sh, dest=/build/}" shape="note"];
  "sha256:0a1de3cb62bb461f25c7bc67fcbe1d451e2aafd7c0e382b0bba585760d7f0f97" [label="sha256:0a1de3cb62bb461f25c7bc67fcbe1d451e2aafd7c0e382b0bba585760d7f0f97" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:f912d95f458fdf2c4f57ea1838651ffb0b4a9c836a8fad7ebdf885680cdf0dba" [label=""];
  "sha256:f912d95f458fdf2c4f57ea1838651ffb0b4a9c836a8fad7ebdf885680cdf0dba" -> "sha256:d4cbae4f5f5abf55369fa302661aae915d032651c189229d046f157e6866fb5c" [label=""];
  "sha256:d4cbae4f5f5abf55369fa302661aae915d032651c189229d046f157e6866fb5c" -> "sha256:c23ff6b7357541f2f548d4d389dd59bbd59c3e7cda16a4b7a6d4558a963100c4" [label=""];
  "sha256:c23ff6b7357541f2f548d4d389dd59bbd59c3e7cda16a4b7a6d4558a963100c4" -> "sha256:c85f1b645bdfad3987f12d415af804242366d2efcc6c3507b8a8c0ae62f53bc5" [label=""];
  "sha256:c85f1b645bdfad3987f12d415af804242366d2efcc6c3507b8a8c0ae62f53bc5" -> "sha256:cd3481a7049637cd32443be87ede7e15fed322c42c4dfa4b646b9adbe15191a8" [label=""];
  "sha256:8872c680a88415e7550118f05a98854b7b52dc3647bc177ffe5318d709314732" -> "sha256:cd3481a7049637cd32443be87ede7e15fed322c42c4dfa4b646b9adbe15191a8" [label=""];
  "sha256:cd3481a7049637cd32443be87ede7e15fed322c42c4dfa4b646b9adbe15191a8" -> "sha256:0a1de3cb62bb461f25c7bc67fcbe1d451e2aafd7c0e382b0bba585760d7f0f97" [label=""];
}

