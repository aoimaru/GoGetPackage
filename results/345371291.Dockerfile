[app/sources/345371291.Dockerfile]
digraph {
  "sha256:d3cca543467b338878b03a936257d8aea8dc987cc6d4e33d48a7a75edaaebe43" [label="docker-image://docker.io/balenalib/ccon-01-alpine:3.5-run" shape="ellipse"];
  "sha256:a045c17ec3164ca4c671b063f3afde6a4b7b7ad3bf44e1291c90864422b9e3b0" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:50197f131832ebeb0ae73503279d89a9318cc9d88b1274ee1e4723164065a3ae" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:0f46c5d8889347cdd3ec709a204f14d353176a439963a04079441795009bee3c" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"92e208c8828ea41fb61e881b49fe883fba12f3730ec72a49b64be0ae74bb486d  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:c5f8343fe7e5d970250bfa5e3ed524e4dc0fa67689d822325eecd25c58bb301a" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:55946c02be268a44d2f996ea9d88c4de7917620d71d5bda5d36ddb93d00a5ac1" [label="mkdir{path=/go}" shape="note"];
  "sha256:57a2813a23b3435871a6eb52641febe9304374293a17e7a3bd4bb81fe948894d" [label="sha256:57a2813a23b3435871a6eb52641febe9304374293a17e7a3bd4bb81fe948894d" shape="plaintext"];
  "sha256:d3cca543467b338878b03a936257d8aea8dc987cc6d4e33d48a7a75edaaebe43" -> "sha256:a045c17ec3164ca4c671b063f3afde6a4b7b7ad3bf44e1291c90864422b9e3b0" [label=""];
  "sha256:a045c17ec3164ca4c671b063f3afde6a4b7b7ad3bf44e1291c90864422b9e3b0" -> "sha256:50197f131832ebeb0ae73503279d89a9318cc9d88b1274ee1e4723164065a3ae" [label=""];
  "sha256:50197f131832ebeb0ae73503279d89a9318cc9d88b1274ee1e4723164065a3ae" -> "sha256:0f46c5d8889347cdd3ec709a204f14d353176a439963a04079441795009bee3c" [label=""];
  "sha256:0f46c5d8889347cdd3ec709a204f14d353176a439963a04079441795009bee3c" -> "sha256:c5f8343fe7e5d970250bfa5e3ed524e4dc0fa67689d822325eecd25c58bb301a" [label=""];
  "sha256:c5f8343fe7e5d970250bfa5e3ed524e4dc0fa67689d822325eecd25c58bb301a" -> "sha256:55946c02be268a44d2f996ea9d88c4de7917620d71d5bda5d36ddb93d00a5ac1" [label=""];
  "sha256:55946c02be268a44d2f996ea9d88c4de7917620d71d5bda5d36ddb93d00a5ac1" -> "sha256:57a2813a23b3435871a6eb52641febe9304374293a17e7a3bd4bb81fe948894d" [label=""];
}

