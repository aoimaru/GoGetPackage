[app/sources/345366351.Dockerfile]
digraph {
  "sha256:e8147232d7b021a3a4c9db2010cc12fe857a1efc35693a763eebee95497cb08a" [label="docker-image://docker.io/balenalib/i386-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:62485c637de970b55fda59e0bfda239e0c52aa5d4716b820b0698cc6ba53e148" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c75259652a8acc7c7bcef139432de387d879a15948382a8ffb5c3e9cac238d2b" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"https://storage.googleapis.com/golang/go$GO_VERSION.linux-386.tar.gz\" \t&& echo \"146605e13bf337ff3aacd941a816c5d97a8fef8b5817e07fcec4540632085980  go$GO_VERSION.linux-386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-386.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:370bbae2003ab98a0aebfe905bc302e71ee986c0419cf62e0c30917156b40227" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e5ae7c5b1a79a83101df852006ac0d0a85b39bf4685a901fea04c996b6c6654f" [label="mkdir{path=/go}" shape="note"];
  "sha256:5757b1b756bba8c50194e27b3f66b4a769b28692bcfe289b067718a28207c70a" [label="sha256:5757b1b756bba8c50194e27b3f66b4a769b28692bcfe289b067718a28207c70a" shape="plaintext"];
  "sha256:e8147232d7b021a3a4c9db2010cc12fe857a1efc35693a763eebee95497cb08a" -> "sha256:62485c637de970b55fda59e0bfda239e0c52aa5d4716b820b0698cc6ba53e148" [label=""];
  "sha256:62485c637de970b55fda59e0bfda239e0c52aa5d4716b820b0698cc6ba53e148" -> "sha256:c75259652a8acc7c7bcef139432de387d879a15948382a8ffb5c3e9cac238d2b" [label=""];
  "sha256:c75259652a8acc7c7bcef139432de387d879a15948382a8ffb5c3e9cac238d2b" -> "sha256:370bbae2003ab98a0aebfe905bc302e71ee986c0419cf62e0c30917156b40227" [label=""];
  "sha256:370bbae2003ab98a0aebfe905bc302e71ee986c0419cf62e0c30917156b40227" -> "sha256:e5ae7c5b1a79a83101df852006ac0d0a85b39bf4685a901fea04c996b6c6654f" [label=""];
  "sha256:e5ae7c5b1a79a83101df852006ac0d0a85b39bf4685a901fea04c996b6c6654f" -> "sha256:5757b1b756bba8c50194e27b3f66b4a769b28692bcfe289b067718a28207c70a" [label=""];
}

