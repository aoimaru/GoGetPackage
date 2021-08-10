[app/sources/345363571.Dockerfile]
digraph {
  "sha256:e6fc351d6449a257fb816cf96283ce5ade30430c3739e51a4c18e3e7fca892ad" [label="docker-image://docker.io/balenalib/armv7hf-alpine:3.8-run" shape="ellipse"];
  "sha256:fdd0872e4e663bb0daf74889d26b300b6fd04b66d6c151a9ee62344e7bbeecc5" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:0f789167c6cbebe41d705267540523a9e2dc5b3c2eeeab4fe3529481d9fcdddb" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:ed9d996482fec9059d3b68743114e24f8d2773f175e2875ebf8c7847ba48fda0" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:f93eeef9701cdbf56b8fa384343a8ba16d158eee7cd620754b8bced7cef739d7" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:8e5c7ad6651308c9f3060120feeb2e3156fb17be781cf04cc28310082b3a07c4" [label="mkdir{path=/go}" shape="note"];
  "sha256:0078d55534577ab2b82f6f27f9eaef22835ca1c029da8b4eac4e127ea5a8eed2" [label="sha256:0078d55534577ab2b82f6f27f9eaef22835ca1c029da8b4eac4e127ea5a8eed2" shape="plaintext"];
  "sha256:e6fc351d6449a257fb816cf96283ce5ade30430c3739e51a4c18e3e7fca892ad" -> "sha256:fdd0872e4e663bb0daf74889d26b300b6fd04b66d6c151a9ee62344e7bbeecc5" [label=""];
  "sha256:fdd0872e4e663bb0daf74889d26b300b6fd04b66d6c151a9ee62344e7bbeecc5" -> "sha256:0f789167c6cbebe41d705267540523a9e2dc5b3c2eeeab4fe3529481d9fcdddb" [label=""];
  "sha256:0f789167c6cbebe41d705267540523a9e2dc5b3c2eeeab4fe3529481d9fcdddb" -> "sha256:ed9d996482fec9059d3b68743114e24f8d2773f175e2875ebf8c7847ba48fda0" [label=""];
  "sha256:ed9d996482fec9059d3b68743114e24f8d2773f175e2875ebf8c7847ba48fda0" -> "sha256:f93eeef9701cdbf56b8fa384343a8ba16d158eee7cd620754b8bced7cef739d7" [label=""];
  "sha256:f93eeef9701cdbf56b8fa384343a8ba16d158eee7cd620754b8bced7cef739d7" -> "sha256:8e5c7ad6651308c9f3060120feeb2e3156fb17be781cf04cc28310082b3a07c4" [label=""];
  "sha256:8e5c7ad6651308c9f3060120feeb2e3156fb17be781cf04cc28310082b3a07c4" -> "sha256:0078d55534577ab2b82f6f27f9eaef22835ca1c029da8b4eac4e127ea5a8eed2" [label=""];
}

