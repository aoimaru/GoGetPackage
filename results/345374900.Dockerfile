[app/sources/345374900.Dockerfile]
digraph {
  "sha256:f0b8581e6ae450c626d8f5a3a42ec7e4668d49735ee41a2c52c31dbdcd2389df" [label="docker-image://docker.io/balenalib/nanopi-neo-air-alpine:3.6-run" shape="ellipse"];
  "sha256:0d7382fe8faa2c92e52bd9d8ee6fd2f83b0424923b197a1d80647dd94ed5ee47" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:38320e03225fb4c1946ddcbd209a7237be959da13bad2f8b3c437af8bc56f07a" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:ebc33b01c98eaacd0a808dc43698b3f39eec6605354cf8a527f08994780fbcbf" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:066fbba95d43d3c8e99d0f56ae84e8af84dfc77a51a7ea5ac7b11b5c0d156730" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:a97564eb259c98cb6f0a5d4f7d5c8bf59e87f5e00558f56e79b9bb4a1bf920cf" [label="mkdir{path=/go}" shape="note"];
  "sha256:8c6f947dbda74c5b4c7b174d7cd6f79458e75f217cc41f9946bb9a0082ee70bc" [label="sha256:8c6f947dbda74c5b4c7b174d7cd6f79458e75f217cc41f9946bb9a0082ee70bc" shape="plaintext"];
  "sha256:f0b8581e6ae450c626d8f5a3a42ec7e4668d49735ee41a2c52c31dbdcd2389df" -> "sha256:0d7382fe8faa2c92e52bd9d8ee6fd2f83b0424923b197a1d80647dd94ed5ee47" [label=""];
  "sha256:0d7382fe8faa2c92e52bd9d8ee6fd2f83b0424923b197a1d80647dd94ed5ee47" -> "sha256:38320e03225fb4c1946ddcbd209a7237be959da13bad2f8b3c437af8bc56f07a" [label=""];
  "sha256:38320e03225fb4c1946ddcbd209a7237be959da13bad2f8b3c437af8bc56f07a" -> "sha256:ebc33b01c98eaacd0a808dc43698b3f39eec6605354cf8a527f08994780fbcbf" [label=""];
  "sha256:ebc33b01c98eaacd0a808dc43698b3f39eec6605354cf8a527f08994780fbcbf" -> "sha256:066fbba95d43d3c8e99d0f56ae84e8af84dfc77a51a7ea5ac7b11b5c0d156730" [label=""];
  "sha256:066fbba95d43d3c8e99d0f56ae84e8af84dfc77a51a7ea5ac7b11b5c0d156730" -> "sha256:a97564eb259c98cb6f0a5d4f7d5c8bf59e87f5e00558f56e79b9bb4a1bf920cf" [label=""];
  "sha256:a97564eb259c98cb6f0a5d4f7d5c8bf59e87f5e00558f56e79b9bb4a1bf920cf" -> "sha256:8c6f947dbda74c5b4c7b174d7cd6f79458e75f217cc41f9946bb9a0082ee70bc" [label=""];
}

