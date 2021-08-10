[app/sources/345368023.Dockerfile]
digraph {
  "sha256:368d12c517230dd7ce6334f7fed27bd59e3021ec2fe99dd505516ba4cfd91f1f" [label="docker-image://docker.io/balenalib/artik533s-debian:buster-run" shape="ellipse"];
  "sha256:cca1e5a79ec2d5f94105de3c77b5d61b16030d8e679775d165376a6edc5d543b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e009af09a3e9bf669a5d078670bd88df40c36a03388092d73b15126cf482f95d" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:5caace27435b38e785f71d118248c85bff317c6d68b4cd85674220b62aac7bf9" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4fc19bbfb686c47bd2e51012c4d5c73ff5caccd193646c2dd8a28cbacf44d07b" [label="mkdir{path=/go}" shape="note"];
  "sha256:06041ffa9d3c42099b195b84dd650dff888ff634f745dd628213b003570b0d9a" [label="sha256:06041ffa9d3c42099b195b84dd650dff888ff634f745dd628213b003570b0d9a" shape="plaintext"];
  "sha256:368d12c517230dd7ce6334f7fed27bd59e3021ec2fe99dd505516ba4cfd91f1f" -> "sha256:cca1e5a79ec2d5f94105de3c77b5d61b16030d8e679775d165376a6edc5d543b" [label=""];
  "sha256:cca1e5a79ec2d5f94105de3c77b5d61b16030d8e679775d165376a6edc5d543b" -> "sha256:e009af09a3e9bf669a5d078670bd88df40c36a03388092d73b15126cf482f95d" [label=""];
  "sha256:e009af09a3e9bf669a5d078670bd88df40c36a03388092d73b15126cf482f95d" -> "sha256:5caace27435b38e785f71d118248c85bff317c6d68b4cd85674220b62aac7bf9" [label=""];
  "sha256:5caace27435b38e785f71d118248c85bff317c6d68b4cd85674220b62aac7bf9" -> "sha256:4fc19bbfb686c47bd2e51012c4d5c73ff5caccd193646c2dd8a28cbacf44d07b" [label=""];
  "sha256:4fc19bbfb686c47bd2e51012c4d5c73ff5caccd193646c2dd8a28cbacf44d07b" -> "sha256:06041ffa9d3c42099b195b84dd650dff888ff634f745dd628213b003570b0d9a" [label=""];
}

