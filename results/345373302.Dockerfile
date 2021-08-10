[app/sources/345373302.Dockerfile]
digraph {
  "sha256:377c8ebcb3d1875fabba939cc564412bd720d00b775394731923c6d7506c8aeb" [label="docker-image://docker.io/balenalib/jetson-tx1-ubuntu:bionic-run" shape="ellipse"];
  "sha256:1e625844bdd670d93ba69496218a4a443ccd2f91d6e164908f0d6141bd3dd461" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e0a6e68ef3c50ed0dac4fcd8109ad258cf2d6368a8a4f0f5bb36d00b3184073a" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-aarch64.tar.gz\" \t&& echo \"8b000bee6c8e2512d79182b56b7023d83a9a297bf813a8565ebbee03d8fb2cd7  go$GO_VERSION.linux-aarch64.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-aarch64.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-aarch64.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:3e153b54a6659b06bd4199ca55565f833bf8db5cabd2a99bbdc46634f63c9011" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:aa34294d7be4360e090ec87cc999a4aebf44b5394f43acaad6d58be45a5e52e4" [label="mkdir{path=/go}" shape="note"];
  "sha256:e9cdb8a07de2bcd74dc112349fa7d4fcf49bdedbd47d111129c66a68f7fbebac" [label="sha256:e9cdb8a07de2bcd74dc112349fa7d4fcf49bdedbd47d111129c66a68f7fbebac" shape="plaintext"];
  "sha256:377c8ebcb3d1875fabba939cc564412bd720d00b775394731923c6d7506c8aeb" -> "sha256:1e625844bdd670d93ba69496218a4a443ccd2f91d6e164908f0d6141bd3dd461" [label=""];
  "sha256:1e625844bdd670d93ba69496218a4a443ccd2f91d6e164908f0d6141bd3dd461" -> "sha256:e0a6e68ef3c50ed0dac4fcd8109ad258cf2d6368a8a4f0f5bb36d00b3184073a" [label=""];
  "sha256:e0a6e68ef3c50ed0dac4fcd8109ad258cf2d6368a8a4f0f5bb36d00b3184073a" -> "sha256:3e153b54a6659b06bd4199ca55565f833bf8db5cabd2a99bbdc46634f63c9011" [label=""];
  "sha256:3e153b54a6659b06bd4199ca55565f833bf8db5cabd2a99bbdc46634f63c9011" -> "sha256:aa34294d7be4360e090ec87cc999a4aebf44b5394f43acaad6d58be45a5e52e4" [label=""];
  "sha256:aa34294d7be4360e090ec87cc999a4aebf44b5394f43acaad6d58be45a5e52e4" -> "sha256:e9cdb8a07de2bcd74dc112349fa7d4fcf49bdedbd47d111129c66a68f7fbebac" [label=""];
}

