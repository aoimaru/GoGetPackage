[app/sources/345368723.Dockerfile]
digraph {
  "sha256:d8dc045174f666d90466813449baf684d830afa8f920df75893c483272783b24" [label="docker-image://docker.io/balenalib/beaglebone-black-ubuntu:bionic-run" shape="ellipse"];
  "sha256:a1ee00feedcefc12ec5716e93055c7070c14455f9465b316cb66780bd4546452" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b6bb36a0fc9ac6eebab5b2ca36c8b3251e420148535464da2180c51ac7ee7056" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:afded72e9560090eedbca5e52c9a1ffdf13cb0971d09bd02db7b92aeeb811e4b" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:e0e132e7f49abfcfc06f1dc866c92d12abc4aa0ade198b5ded9bcac65b65e19e" [label="mkdir{path=/go}" shape="note"];
  "sha256:eec4bab8d972ede8eec979b626c0a16d629dd8a4b975c4dcd77231941d919343" [label="sha256:eec4bab8d972ede8eec979b626c0a16d629dd8a4b975c4dcd77231941d919343" shape="plaintext"];
  "sha256:d8dc045174f666d90466813449baf684d830afa8f920df75893c483272783b24" -> "sha256:a1ee00feedcefc12ec5716e93055c7070c14455f9465b316cb66780bd4546452" [label=""];
  "sha256:a1ee00feedcefc12ec5716e93055c7070c14455f9465b316cb66780bd4546452" -> "sha256:b6bb36a0fc9ac6eebab5b2ca36c8b3251e420148535464da2180c51ac7ee7056" [label=""];
  "sha256:b6bb36a0fc9ac6eebab5b2ca36c8b3251e420148535464da2180c51ac7ee7056" -> "sha256:afded72e9560090eedbca5e52c9a1ffdf13cb0971d09bd02db7b92aeeb811e4b" [label=""];
  "sha256:afded72e9560090eedbca5e52c9a1ffdf13cb0971d09bd02db7b92aeeb811e4b" -> "sha256:e0e132e7f49abfcfc06f1dc866c92d12abc4aa0ade198b5ded9bcac65b65e19e" [label=""];
  "sha256:e0e132e7f49abfcfc06f1dc866c92d12abc4aa0ade198b5ded9bcac65b65e19e" -> "sha256:eec4bab8d972ede8eec979b626c0a16d629dd8a4b975c4dcd77231941d919343" [label=""];
}

