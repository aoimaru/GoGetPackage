[app/sources/345367889.Dockerfile]
digraph {
  "sha256:940b55ebb2ba23bb1f76419930e16d468b85fa010fa316d6407fbcca16c48048" [label="docker-image://docker.io/balenalib/artik530-alpine:3.7-run" shape="ellipse"];
  "sha256:786cf2cbbedc7313335f9e24eddfb24182fd55fd8db95f043951de4d33d35ab2" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:29b4678c636c77706b46e779f52cfe691d4337baa282f93aa4b5be17d7d3708c" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:a2d7a4e3ece293a1bb253abbf7f5d45cde2e7d035782cffecce5dd9f27ac8f91" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"296db57c7981a871e1cee0059a90385d39c73386ffc23002a26bfa9b05f514c4  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:305c3347a3c1d18df23f94cde19aaedf26997c87fad708c2d73fbc19e1d868b6" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:24ef6bd9ed650d70f981c619625990f99c5f1066e7c2f4287f7dff3a50da03b6" [label="mkdir{path=/go}" shape="note"];
  "sha256:922145f03f6951d98ec321874a0c2600283462cfa767f44e6c84b5fc276c6f38" [label="sha256:922145f03f6951d98ec321874a0c2600283462cfa767f44e6c84b5fc276c6f38" shape="plaintext"];
  "sha256:940b55ebb2ba23bb1f76419930e16d468b85fa010fa316d6407fbcca16c48048" -> "sha256:786cf2cbbedc7313335f9e24eddfb24182fd55fd8db95f043951de4d33d35ab2" [label=""];
  "sha256:786cf2cbbedc7313335f9e24eddfb24182fd55fd8db95f043951de4d33d35ab2" -> "sha256:29b4678c636c77706b46e779f52cfe691d4337baa282f93aa4b5be17d7d3708c" [label=""];
  "sha256:29b4678c636c77706b46e779f52cfe691d4337baa282f93aa4b5be17d7d3708c" -> "sha256:a2d7a4e3ece293a1bb253abbf7f5d45cde2e7d035782cffecce5dd9f27ac8f91" [label=""];
  "sha256:a2d7a4e3ece293a1bb253abbf7f5d45cde2e7d035782cffecce5dd9f27ac8f91" -> "sha256:305c3347a3c1d18df23f94cde19aaedf26997c87fad708c2d73fbc19e1d868b6" [label=""];
  "sha256:305c3347a3c1d18df23f94cde19aaedf26997c87fad708c2d73fbc19e1d868b6" -> "sha256:24ef6bd9ed650d70f981c619625990f99c5f1066e7c2f4287f7dff3a50da03b6" [label=""];
  "sha256:24ef6bd9ed650d70f981c619625990f99c5f1066e7c2f4287f7dff3a50da03b6" -> "sha256:922145f03f6951d98ec321874a0c2600283462cfa767f44e6c84b5fc276c6f38" [label=""];
}

