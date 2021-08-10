[app/sources/345370759.Dockerfile]
digraph {
  "sha256:d39a3c2fd7f31e20f97232a7b2716b6a22333bb5b03b1eedc666dd7672d183c1" [label="docker-image://docker.io/balenalib/beaglebone-fastenal-alpine:3.7-run" shape="ellipse"];
  "sha256:48625b1999d2057f42df3a2bbea8a1f7c0cd3f08b7d0ef53bc0d954feb088a68" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:3b199dbbdfde4070e43d8b30c9e7bbce37e2eb59e5fefdcef4e532d77087c7cf" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:35b63989bcdaf3c09ce1255244d67fdb238caf0826bf8b39ff6a577dd05858b9" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:a658c8cdafc819efa0a426befe927c87ce221a0c36fae6b80ea0a4225cb61adc" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:9cab7b5b3ba78577982c885d518604ec2c389fc609612219850746cf1de6866f" [label="mkdir{path=/go}" shape="note"];
  "sha256:e11d578ea7a5539e415978fef76066a0e4adf76cb071c0ebc78c66f49e628c85" [label="sha256:e11d578ea7a5539e415978fef76066a0e4adf76cb071c0ebc78c66f49e628c85" shape="plaintext"];
  "sha256:d39a3c2fd7f31e20f97232a7b2716b6a22333bb5b03b1eedc666dd7672d183c1" -> "sha256:48625b1999d2057f42df3a2bbea8a1f7c0cd3f08b7d0ef53bc0d954feb088a68" [label=""];
  "sha256:48625b1999d2057f42df3a2bbea8a1f7c0cd3f08b7d0ef53bc0d954feb088a68" -> "sha256:3b199dbbdfde4070e43d8b30c9e7bbce37e2eb59e5fefdcef4e532d77087c7cf" [label=""];
  "sha256:3b199dbbdfde4070e43d8b30c9e7bbce37e2eb59e5fefdcef4e532d77087c7cf" -> "sha256:35b63989bcdaf3c09ce1255244d67fdb238caf0826bf8b39ff6a577dd05858b9" [label=""];
  "sha256:35b63989bcdaf3c09ce1255244d67fdb238caf0826bf8b39ff6a577dd05858b9" -> "sha256:a658c8cdafc819efa0a426befe927c87ce221a0c36fae6b80ea0a4225cb61adc" [label=""];
  "sha256:a658c8cdafc819efa0a426befe927c87ce221a0c36fae6b80ea0a4225cb61adc" -> "sha256:9cab7b5b3ba78577982c885d518604ec2c389fc609612219850746cf1de6866f" [label=""];
  "sha256:9cab7b5b3ba78577982c885d518604ec2c389fc609612219850746cf1de6866f" -> "sha256:e11d578ea7a5539e415978fef76066a0e4adf76cb071c0ebc78c66f49e628c85" [label=""];
}

