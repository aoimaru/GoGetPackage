[app/sources/345375210.Dockerfile]
digraph {
  "sha256:0c31ebfee77993f24c602ddf15ea1139cdb2c5d31735da380d547ae0493d02e9" [label="docker-image://docker.io/balenalib/nitrogen6xq2g-ubuntu:xenial-run" shape="ellipse"];
  "sha256:c8859514bf0986184af4dc919953a792fd0cf3bb0e1745df191e62a20ffc61c0" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:65844ed580afa53a4d148ded8b61e8348a59ea3340a88d3ecf3cb3d866012af3" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f8a06c2832ca01001d0ffc68a44a2d4c569285cd485a0a61ee7169bc87adbb0f  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:04e027ddf05bce0b0a04c825914736f8cd4d46cc0618f73970ef3c973d2ecdcb" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:85684e192d21c92fded9dc6b537e779db9fabc96808924a415d7b5253d7127be" [label="mkdir{path=/go}" shape="note"];
  "sha256:dfffa0581a5c98a6219a7cfcda59206ed032d43a7f5f7c2277216b0a15028a72" [label="sha256:dfffa0581a5c98a6219a7cfcda59206ed032d43a7f5f7c2277216b0a15028a72" shape="plaintext"];
  "sha256:0c31ebfee77993f24c602ddf15ea1139cdb2c5d31735da380d547ae0493d02e9" -> "sha256:c8859514bf0986184af4dc919953a792fd0cf3bb0e1745df191e62a20ffc61c0" [label=""];
  "sha256:c8859514bf0986184af4dc919953a792fd0cf3bb0e1745df191e62a20ffc61c0" -> "sha256:65844ed580afa53a4d148ded8b61e8348a59ea3340a88d3ecf3cb3d866012af3" [label=""];
  "sha256:65844ed580afa53a4d148ded8b61e8348a59ea3340a88d3ecf3cb3d866012af3" -> "sha256:04e027ddf05bce0b0a04c825914736f8cd4d46cc0618f73970ef3c973d2ecdcb" [label=""];
  "sha256:04e027ddf05bce0b0a04c825914736f8cd4d46cc0618f73970ef3c973d2ecdcb" -> "sha256:85684e192d21c92fded9dc6b537e779db9fabc96808924a415d7b5253d7127be" [label=""];
  "sha256:85684e192d21c92fded9dc6b537e779db9fabc96808924a415d7b5253d7127be" -> "sha256:dfffa0581a5c98a6219a7cfcda59206ed032d43a7f5f7c2277216b0a15028a72" [label=""];
}

