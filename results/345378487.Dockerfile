[app/sources/345378487.Dockerfile]
digraph {
  "sha256:6a2704764d154c60aaa2a229d10c438750b5577add844738a24c5d43c3f364b5" [label="docker-image://docker.io/balenalib/zc702-zynq7-debian:jessie-run" shape="ellipse"];
  "sha256:90f4a5b2003e94249da68e88bf25c734362b5e237d232724202759fbc86be39e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:003431cbef3fd90956917a0938a016add218f152c74ee5f7bcc2d947841cf177" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:d9568c2d05ce4ecfc1e4a4dc96941b28eefe8e52ed787feff40668d096f85395" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:05b09670dddac95fff34f8d009b351ef7304fed37bf7f0b5637a3ecdcebc977d" [label="mkdir{path=/go}" shape="note"];
  "sha256:9638f7a05f2318ddd0cd02cfa20671e1993097de03b4be16885024f73016f3dc" [label="sha256:9638f7a05f2318ddd0cd02cfa20671e1993097de03b4be16885024f73016f3dc" shape="plaintext"];
  "sha256:6a2704764d154c60aaa2a229d10c438750b5577add844738a24c5d43c3f364b5" -> "sha256:90f4a5b2003e94249da68e88bf25c734362b5e237d232724202759fbc86be39e" [label=""];
  "sha256:90f4a5b2003e94249da68e88bf25c734362b5e237d232724202759fbc86be39e" -> "sha256:003431cbef3fd90956917a0938a016add218f152c74ee5f7bcc2d947841cf177" [label=""];
  "sha256:003431cbef3fd90956917a0938a016add218f152c74ee5f7bcc2d947841cf177" -> "sha256:d9568c2d05ce4ecfc1e4a4dc96941b28eefe8e52ed787feff40668d096f85395" [label=""];
  "sha256:d9568c2d05ce4ecfc1e4a4dc96941b28eefe8e52ed787feff40668d096f85395" -> "sha256:05b09670dddac95fff34f8d009b351ef7304fed37bf7f0b5637a3ecdcebc977d" [label=""];
  "sha256:05b09670dddac95fff34f8d009b351ef7304fed37bf7f0b5637a3ecdcebc977d" -> "sha256:9638f7a05f2318ddd0cd02cfa20671e1993097de03b4be16885024f73016f3dc" [label=""];
}

