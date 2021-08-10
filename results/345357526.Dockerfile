[app/sources/345357526.Dockerfile]
digraph {
  "sha256:3286693e86b71a094370605fe9f81400be90e02bb58fed9a4fafcf4f4f3e0287" [label="docker-image://docker.io/balenalib/parallella-alpine:3.7-run" shape="ellipse"];
  "sha256:9dc4ed1f860d90334b2e13c3f47f50fe5ddb13bcf0a656927599512b7a43bf20" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:b7ba67c0ae3a55200d1bc416f64bf9c8b0b7d04aa48db989fb3bfc25d08b49a3" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:de6f82c863ad1f14bff5c7c687c7345f75db0ca8509bad3788e0f09cea26ce8f" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:e12e7b124cd62e2fd90134650b0203ecb782d065542cac440618fd3a60cefe4c" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:f730d1c8ee1b1467f698b29bec9343aae4dac60c945ebdd9c2789c43185dc387" [label="mkdir{path=/go}" shape="note"];
  "sha256:ba03c2f2cd8cc96b2eb00ec73c667ad0ee3ef86b16cf1b056161b128a1de9d92" [label="sha256:ba03c2f2cd8cc96b2eb00ec73c667ad0ee3ef86b16cf1b056161b128a1de9d92" shape="plaintext"];
  "sha256:3286693e86b71a094370605fe9f81400be90e02bb58fed9a4fafcf4f4f3e0287" -> "sha256:9dc4ed1f860d90334b2e13c3f47f50fe5ddb13bcf0a656927599512b7a43bf20" [label=""];
  "sha256:9dc4ed1f860d90334b2e13c3f47f50fe5ddb13bcf0a656927599512b7a43bf20" -> "sha256:b7ba67c0ae3a55200d1bc416f64bf9c8b0b7d04aa48db989fb3bfc25d08b49a3" [label=""];
  "sha256:b7ba67c0ae3a55200d1bc416f64bf9c8b0b7d04aa48db989fb3bfc25d08b49a3" -> "sha256:de6f82c863ad1f14bff5c7c687c7345f75db0ca8509bad3788e0f09cea26ce8f" [label=""];
  "sha256:de6f82c863ad1f14bff5c7c687c7345f75db0ca8509bad3788e0f09cea26ce8f" -> "sha256:e12e7b124cd62e2fd90134650b0203ecb782d065542cac440618fd3a60cefe4c" [label=""];
  "sha256:e12e7b124cd62e2fd90134650b0203ecb782d065542cac440618fd3a60cefe4c" -> "sha256:f730d1c8ee1b1467f698b29bec9343aae4dac60c945ebdd9c2789c43185dc387" [label=""];
  "sha256:f730d1c8ee1b1467f698b29bec9343aae4dac60c945ebdd9c2789c43185dc387" -> "sha256:ba03c2f2cd8cc96b2eb00ec73c667ad0ee3ef86b16cf1b056161b128a1de9d92" [label=""];
}

