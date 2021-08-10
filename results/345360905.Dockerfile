[app/sources/345360905.Dockerfile]
digraph {
  "sha256:c09765961d6d5f40eb69f94590caf78959dc0e80d2f610489df3ba60b3640786" [label="docker-image://docker.io/balenalib/ts4900-alpine:edge-run" shape="ellipse"];
  "sha256:195078f168f192b6238f0c57ea7e1e40178b750a13167461d559d659a17fc70d" [label="/bin/sh -c [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf" shape="box"];
  "sha256:c89aaec02b274057475636f0c24c5f2b93d11438ab544fa90f8c9bd79c7d501d" [label="/bin/sh -c apk add --no-cache git gcc ca-certificates" shape="box"];
  "sha256:53ef789700a9c95b6c7b275a07a7166fe6687ce7f236377ecab0e52828a8acbf" [label="/bin/sh -c fetchDeps='curl' \t&& set -x \t&& apk add --no-cache $fetchDeps \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" \t&& echo \"76be47e1f6979af4fc7c0c06d883a082f78a98b9948cf28359702877a8b2b9b2  go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-alpine-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-alpine-armv7hf.tar.gz \t&& apk del $fetchDeps" shape="box"];
  "sha256:181de052a3723c64a125349682ec962aa4cac1ccf97d55933a36dd1dd7442e87" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0e2fa342eb6b837641aaaedf7b2bb29d3aab7b119f9e3cfe8a2f0728713dece5" [label="mkdir{path=/go}" shape="note"];
  "sha256:8251ab8e0489c8cf9726e0c7aaf6e8ef2c56985910dd52fd3666f2d707f4bb0c" [label="sha256:8251ab8e0489c8cf9726e0c7aaf6e8ef2c56985910dd52fd3666f2d707f4bb0c" shape="plaintext"];
  "sha256:c09765961d6d5f40eb69f94590caf78959dc0e80d2f610489df3ba60b3640786" -> "sha256:195078f168f192b6238f0c57ea7e1e40178b750a13167461d559d659a17fc70d" [label=""];
  "sha256:195078f168f192b6238f0c57ea7e1e40178b750a13167461d559d659a17fc70d" -> "sha256:c89aaec02b274057475636f0c24c5f2b93d11438ab544fa90f8c9bd79c7d501d" [label=""];
  "sha256:c89aaec02b274057475636f0c24c5f2b93d11438ab544fa90f8c9bd79c7d501d" -> "sha256:53ef789700a9c95b6c7b275a07a7166fe6687ce7f236377ecab0e52828a8acbf" [label=""];
  "sha256:53ef789700a9c95b6c7b275a07a7166fe6687ce7f236377ecab0e52828a8acbf" -> "sha256:181de052a3723c64a125349682ec962aa4cac1ccf97d55933a36dd1dd7442e87" [label=""];
  "sha256:181de052a3723c64a125349682ec962aa4cac1ccf97d55933a36dd1dd7442e87" -> "sha256:0e2fa342eb6b837641aaaedf7b2bb29d3aab7b119f9e3cfe8a2f0728713dece5" [label=""];
  "sha256:0e2fa342eb6b837641aaaedf7b2bb29d3aab7b119f9e3cfe8a2f0728713dece5" -> "sha256:8251ab8e0489c8cf9726e0c7aaf6e8ef2c56985910dd52fd3666f2d707f4bb0c" [label=""];
}

