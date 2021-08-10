[app/sources/345375092.Dockerfile]
digraph {
  "sha256:ac83bd74ca317c305946242315cb8d46c284faecb3e0a20231e89163c7422e82" [label="docker-image://docker.io/balenalib/nitrogen6x-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:82fbbf7708ec0c1b21b0aabea70833df6b057736b353aa89405f93db4912f915" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c3d095d4c904491ee79354abc8d29d62c33f14e7ae05e0920f973ce0500af2f6" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:abd2e7cd592e30b088f20c90599a9b65d86fff62e68e8d8bc2ff2726c53cf547" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9817c74b3e40a4ebd76228f209c1b2a7958cc8aaee305a639b7e53bcf6c7b4d3" [label="mkdir{path=/go}" shape="note"];
  "sha256:e73ec15c8c8154088875b6f732863b82bb73812ed70392e49fe6433ea306ba5a" [label="sha256:e73ec15c8c8154088875b6f732863b82bb73812ed70392e49fe6433ea306ba5a" shape="plaintext"];
  "sha256:ac83bd74ca317c305946242315cb8d46c284faecb3e0a20231e89163c7422e82" -> "sha256:82fbbf7708ec0c1b21b0aabea70833df6b057736b353aa89405f93db4912f915" [label=""];
  "sha256:82fbbf7708ec0c1b21b0aabea70833df6b057736b353aa89405f93db4912f915" -> "sha256:c3d095d4c904491ee79354abc8d29d62c33f14e7ae05e0920f973ce0500af2f6" [label=""];
  "sha256:c3d095d4c904491ee79354abc8d29d62c33f14e7ae05e0920f973ce0500af2f6" -> "sha256:abd2e7cd592e30b088f20c90599a9b65d86fff62e68e8d8bc2ff2726c53cf547" [label=""];
  "sha256:abd2e7cd592e30b088f20c90599a9b65d86fff62e68e8d8bc2ff2726c53cf547" -> "sha256:9817c74b3e40a4ebd76228f209c1b2a7958cc8aaee305a639b7e53bcf6c7b4d3" [label=""];
  "sha256:9817c74b3e40a4ebd76228f209c1b2a7958cc8aaee305a639b7e53bcf6c7b4d3" -> "sha256:e73ec15c8c8154088875b6f732863b82bb73812ed70392e49fe6433ea306ba5a" [label=""];
}

