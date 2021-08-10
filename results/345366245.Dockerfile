[app/sources/345366245.Dockerfile]
digraph {
  "sha256:5aa9469c7c4708d65a83998af47b0d90d8b55b7a424e4e08377b667954546266" [label="docker-image://docker.io/balenalib/i386-nlp-ubuntu:artful-run" shape="ellipse"];
  "sha256:a737deeb4ec024acc0d0c6530942efe62452d3a64d239e1306392bd520676ee9" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5bf21b00a11a63ebc902a447ee55d706aa0192421c3592e28e76447399d80a79" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-i386.tar.gz\" \t&& echo \"4fd03c176c0f44d0e397fde4964306f36e17ae5e28141789618553144d476dd6  go$GO_VERSION.linux-i386.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-i386.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-i386.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:1717e68f04d4e3d548a4d0724c9c219567405dabf87e8ec2a6a72dc21ca1ff67" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8a88fb6f58ebd3e76dde1f0b348135eb9770b1cfefe69b1d6bcbedec9b89e391" [label="mkdir{path=/go}" shape="note"];
  "sha256:8917578f08f9bed8a97ffe92c04d5b4572df3fc8436f72cf844bde8269071e90" [label="sha256:8917578f08f9bed8a97ffe92c04d5b4572df3fc8436f72cf844bde8269071e90" shape="plaintext"];
  "sha256:5aa9469c7c4708d65a83998af47b0d90d8b55b7a424e4e08377b667954546266" -> "sha256:a737deeb4ec024acc0d0c6530942efe62452d3a64d239e1306392bd520676ee9" [label=""];
  "sha256:a737deeb4ec024acc0d0c6530942efe62452d3a64d239e1306392bd520676ee9" -> "sha256:5bf21b00a11a63ebc902a447ee55d706aa0192421c3592e28e76447399d80a79" [label=""];
  "sha256:5bf21b00a11a63ebc902a447ee55d706aa0192421c3592e28e76447399d80a79" -> "sha256:1717e68f04d4e3d548a4d0724c9c219567405dabf87e8ec2a6a72dc21ca1ff67" [label=""];
  "sha256:1717e68f04d4e3d548a4d0724c9c219567405dabf87e8ec2a6a72dc21ca1ff67" -> "sha256:8a88fb6f58ebd3e76dde1f0b348135eb9770b1cfefe69b1d6bcbedec9b89e391" [label=""];
  "sha256:8a88fb6f58ebd3e76dde1f0b348135eb9770b1cfefe69b1d6bcbedec9b89e391" -> "sha256:8917578f08f9bed8a97ffe92c04d5b4572df3fc8436f72cf844bde8269071e90" [label=""];
}

