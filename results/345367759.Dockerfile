[app/sources/345367759.Dockerfile]
digraph {
  "sha256:ddcbcfca06fa66f37a9495165e38c970cf2b528019cb24f5e826659dcf42c01c" [label="docker-image://docker.io/balenalib/artik10-ubuntu:trusty-run" shape="ellipse"];
  "sha256:ca9b7a3ce021cbf0b1e1b7006cabe3f1fd3e1acbf027f52c77b7bdafbb4a6644" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5bb0640d05484a605a5a3b76f4230e173a64ecde641c8f21b30765ad948c9aaf" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:1bd1b18df5ecc499387f46ce7b77201c6a59af120248ec2104cb69b4d2ae704e" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:792fe945dc6fd21001862b41db798aec61fc117b7e4d88f9622a9674c41456c3" [label="mkdir{path=/go}" shape="note"];
  "sha256:0b752a54443a85472ca950cec7f788bdbd4052f100b8d9ea2eb36cefa31a985d" [label="sha256:0b752a54443a85472ca950cec7f788bdbd4052f100b8d9ea2eb36cefa31a985d" shape="plaintext"];
  "sha256:ddcbcfca06fa66f37a9495165e38c970cf2b528019cb24f5e826659dcf42c01c" -> "sha256:ca9b7a3ce021cbf0b1e1b7006cabe3f1fd3e1acbf027f52c77b7bdafbb4a6644" [label=""];
  "sha256:ca9b7a3ce021cbf0b1e1b7006cabe3f1fd3e1acbf027f52c77b7bdafbb4a6644" -> "sha256:5bb0640d05484a605a5a3b76f4230e173a64ecde641c8f21b30765ad948c9aaf" [label=""];
  "sha256:5bb0640d05484a605a5a3b76f4230e173a64ecde641c8f21b30765ad948c9aaf" -> "sha256:1bd1b18df5ecc499387f46ce7b77201c6a59af120248ec2104cb69b4d2ae704e" [label=""];
  "sha256:1bd1b18df5ecc499387f46ce7b77201c6a59af120248ec2104cb69b4d2ae704e" -> "sha256:792fe945dc6fd21001862b41db798aec61fc117b7e4d88f9622a9674c41456c3" [label=""];
  "sha256:792fe945dc6fd21001862b41db798aec61fc117b7e4d88f9622a9674c41456c3" -> "sha256:0b752a54443a85472ca950cec7f788bdbd4052f100b8d9ea2eb36cefa31a985d" [label=""];
}

