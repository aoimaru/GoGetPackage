[app/sources/345378539.Dockerfile]
digraph {
  "sha256:cfbf2a1b3d247a162446b771610eba86d64f31f1aad0842bebe9e7e7315fcd58" [label="docker-image://docker.io/balenalib/zc702-zynq7-ubuntu:trusty-run" shape="ellipse"];
  "sha256:c5b1975fc24780958b0d0f4482885c4ff4c54fe6d365a84eb76017ae125d34d7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1d2c8f6fec044f3b7e378edbc946c76af9f58316adce4cdf744f002498e227d9" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:4bb84b05783dba5e0ccc4eb902e3030fa4d5140fca1290ca674065a87ae468c3" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:4f5914bed70b18b6fd39dc5c03183664596bb475d1baea5789daad686a04045d" [label="mkdir{path=/go}" shape="note"];
  "sha256:07b24f8a5475912f49873c2042476cb3a9d2f2495023ee09afba6fc42fe8efc6" [label="sha256:07b24f8a5475912f49873c2042476cb3a9d2f2495023ee09afba6fc42fe8efc6" shape="plaintext"];
  "sha256:cfbf2a1b3d247a162446b771610eba86d64f31f1aad0842bebe9e7e7315fcd58" -> "sha256:c5b1975fc24780958b0d0f4482885c4ff4c54fe6d365a84eb76017ae125d34d7" [label=""];
  "sha256:c5b1975fc24780958b0d0f4482885c4ff4c54fe6d365a84eb76017ae125d34d7" -> "sha256:1d2c8f6fec044f3b7e378edbc946c76af9f58316adce4cdf744f002498e227d9" [label=""];
  "sha256:1d2c8f6fec044f3b7e378edbc946c76af9f58316adce4cdf744f002498e227d9" -> "sha256:4bb84b05783dba5e0ccc4eb902e3030fa4d5140fca1290ca674065a87ae468c3" [label=""];
  "sha256:4bb84b05783dba5e0ccc4eb902e3030fa4d5140fca1290ca674065a87ae468c3" -> "sha256:4f5914bed70b18b6fd39dc5c03183664596bb475d1baea5789daad686a04045d" [label=""];
  "sha256:4f5914bed70b18b6fd39dc5c03183664596bb475d1baea5789daad686a04045d" -> "sha256:07b24f8a5475912f49873c2042476cb3a9d2f2495023ee09afba6fc42fe8efc6" [label=""];
}

