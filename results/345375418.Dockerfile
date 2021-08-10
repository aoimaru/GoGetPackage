[app/sources/345375418.Dockerfile]
digraph {
  "sha256:4d28baf364517552c2e493092bfd4021c85385e84fae6abbab8950df512a519b" [label="docker-image://docker.io/balenalib/odroid-c1-ubuntu:trusty-run@sha256:ed763c95fdc70543d9b8c7972529e12080f23480736612df360d59024422f7c4" shape="ellipse"];
  "sha256:93080e1c4a326c9efefcbff87c3748cb42b2f5d11c87c0fd7421fd8449ec5465" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8af3f6e0ddded48527df9f88c6ef01763e3cb38dd6b3a7d57308f73c472762d5" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:a7abbe6080012e2fa3eb7896cc362e56248708670f75513a1f6749e4bc064cc2" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:b2d66eb921753be312d3c70a7c7c115f5f175c6205c19b37ae90713bb68e48ac" [label="mkdir{path=/go}" shape="note"];
  "sha256:78cc494727eb4a7e40d66058781405e72dbc99877a1b8cbde019ca68094e0cfb" [label="sha256:78cc494727eb4a7e40d66058781405e72dbc99877a1b8cbde019ca68094e0cfb" shape="plaintext"];
  "sha256:4d28baf364517552c2e493092bfd4021c85385e84fae6abbab8950df512a519b" -> "sha256:93080e1c4a326c9efefcbff87c3748cb42b2f5d11c87c0fd7421fd8449ec5465" [label=""];
  "sha256:93080e1c4a326c9efefcbff87c3748cb42b2f5d11c87c0fd7421fd8449ec5465" -> "sha256:8af3f6e0ddded48527df9f88c6ef01763e3cb38dd6b3a7d57308f73c472762d5" [label=""];
  "sha256:8af3f6e0ddded48527df9f88c6ef01763e3cb38dd6b3a7d57308f73c472762d5" -> "sha256:a7abbe6080012e2fa3eb7896cc362e56248708670f75513a1f6749e4bc064cc2" [label=""];
  "sha256:a7abbe6080012e2fa3eb7896cc362e56248708670f75513a1f6749e4bc064cc2" -> "sha256:b2d66eb921753be312d3c70a7c7c115f5f175c6205c19b37ae90713bb68e48ac" [label=""];
  "sha256:b2d66eb921753be312d3c70a7c7c115f5f175c6205c19b37ae90713bb68e48ac" -> "sha256:78cc494727eb4a7e40d66058781405e72dbc99877a1b8cbde019ca68094e0cfb" [label=""];
}

