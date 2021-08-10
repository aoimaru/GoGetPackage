[app/sources/345358222.Dockerfile]
digraph {
  "sha256:32ef85abd19c0fba1a6dcb71f0c635afb3f44a44d0da4ee97b2befb2a6f614f9" [label="docker-image://docker.io/balenalib/raspberrypi3-alpine:3.9-run" shape="ellipse"];
  "sha256:28c70b537b864d0a544eec71effa3770a643b6b9eec2cdd0727c9a87b5762a61" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:813f13ad0e44a01695b93825b5181fb5920a0d8cbed1b21001427c6ca6751d76" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:82442730305332b3bccb301d5915d8da0e70166dbab4892d67f9ba3773995af8" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:dca173c26ebfc1fe00c62ea81f241c972148433d21c2f5ebdb8c2ac6342541a0" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:efd6cd28cd7f440e20deb9bda51679a62624b91c54b0078e158782eef5327c6d" [label="mkdir{path=/go}" shape="note"];
  "sha256:0d2efedd2716235de096371f65ffb9ac6a3f9f88831d6f5e3666f7c7f93485dc" [label="sha256:0d2efedd2716235de096371f65ffb9ac6a3f9f88831d6f5e3666f7c7f93485dc" shape="plaintext"];
  "sha256:32ef85abd19c0fba1a6dcb71f0c635afb3f44a44d0da4ee97b2befb2a6f614f9" -> "sha256:28c70b537b864d0a544eec71effa3770a643b6b9eec2cdd0727c9a87b5762a61" [label=""];
  "sha256:28c70b537b864d0a544eec71effa3770a643b6b9eec2cdd0727c9a87b5762a61" -> "sha256:813f13ad0e44a01695b93825b5181fb5920a0d8cbed1b21001427c6ca6751d76" [label=""];
  "sha256:813f13ad0e44a01695b93825b5181fb5920a0d8cbed1b21001427c6ca6751d76" -> "sha256:82442730305332b3bccb301d5915d8da0e70166dbab4892d67f9ba3773995af8" [label=""];
  "sha256:82442730305332b3bccb301d5915d8da0e70166dbab4892d67f9ba3773995af8" -> "sha256:dca173c26ebfc1fe00c62ea81f241c972148433d21c2f5ebdb8c2ac6342541a0" [label=""];
  "sha256:dca173c26ebfc1fe00c62ea81f241c972148433d21c2f5ebdb8c2ac6342541a0" -> "sha256:efd6cd28cd7f440e20deb9bda51679a62624b91c54b0078e158782eef5327c6d" [label=""];
  "sha256:efd6cd28cd7f440e20deb9bda51679a62624b91c54b0078e158782eef5327c6d" -> "sha256:0d2efedd2716235de096371f65ffb9ac6a3f9f88831d6f5e3666f7c7f93485dc" [label=""];
}

