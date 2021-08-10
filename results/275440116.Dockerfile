[app/sources/275440116.Dockerfile]
digraph {
  "sha256:7edc7fdaeba34153b92636f645a792db603c13833898bd9f95d175d0b0d60258" [label="docker-image://docker.io/arm64v8/alpine:latest" shape="ellipse"];
  "sha256:627fab333133aaefe4e8a61de5dd9d888934048ecf86231ca12f4a918b8cdd9c" [label="/bin/sh -c apk add bash git build-base go musl-dev openssl jq ca-certificates && update-ca-certificates" shape="box"];
  "sha256:94757ff55b6c7ad6c2ec75a5bd9b8f83ff0f6302a03343e95fce98d037953f90" [label="/bin/sh -c mkdir /etc/v2ray/" shape="box"];
  "sha256:500b46a0e5e56d05af254b5928da566051da5b9c5905f63d8d75da19477126d0" [label="/bin/sh -c mkdir /var/log/v2ray/" shape="box"];
  "sha256:822ff38e4cdf528988680404b39937d7906ec9bcb8afd0f0e9b117a6cd2ae77d" [label="/bin/sh -c mkdir -p /usr/bin/v2ray/" shape="box"];
  "sha256:9edb58cbe090c999fb0dff32358d5cd0b6b456764633e1135d532f0b49f1ed31" [label="/bin/sh -c GOPATH=/go go get -u v2ray.com/core/..." shape="box"];
  "sha256:837e5304116c55f01f4f864e31e0a815e42ae9a9df83dd0b9170d8e85bc592f7" [label="/bin/sh -c GOPATH=/go go build -o /usr/bin/v2ray/v2ray v2ray.com/core/main" shape="box"];
  "sha256:e63eab226fdda9f047711bf38551b5dee20404298527d2bae34eb20bcefc3a0e" [label="/bin/sh -c GOPATH=/go go build -o /usr/bin/v2ray/v2ctl v2ray.com/core/infra/control/main" shape="box"];
  "sha256:29a29a3c2562bd5c6476acdcc215c1bc04fd163a9a5be42a651f8e4a5753bf1b" [label="/bin/sh -c cp -r /go/src/v2ray.com/core/release/config/* /usr/bin/v2ray/" shape="box"];
  "sha256:62863397a8839d35179b104bd956dcdb4eed97f253bd9a487a1a11998e07a242" [label="local://context" shape="ellipse"];
  "sha256:e82ae94f996daaf7c6a5475c52936cca56413597a193b04ed6e461f9f79bd818" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:5fc8c20aab475ae422959092ea804478ee7335130760df9b639ea1d37a2d2ee8" [label="/bin/sh -c chmod 755 /*.sh" shape="box"];
  "sha256:fea87f1f96c70bcf0eee9264c68b3be90a033aeea86380e24f204a9985d84faf" [label="sha256:fea87f1f96c70bcf0eee9264c68b3be90a033aeea86380e24f204a9985d84faf" shape="plaintext"];
  "sha256:7edc7fdaeba34153b92636f645a792db603c13833898bd9f95d175d0b0d60258" -> "sha256:627fab333133aaefe4e8a61de5dd9d888934048ecf86231ca12f4a918b8cdd9c" [label=""];
  "sha256:627fab333133aaefe4e8a61de5dd9d888934048ecf86231ca12f4a918b8cdd9c" -> "sha256:94757ff55b6c7ad6c2ec75a5bd9b8f83ff0f6302a03343e95fce98d037953f90" [label=""];
  "sha256:94757ff55b6c7ad6c2ec75a5bd9b8f83ff0f6302a03343e95fce98d037953f90" -> "sha256:500b46a0e5e56d05af254b5928da566051da5b9c5905f63d8d75da19477126d0" [label=""];
  "sha256:500b46a0e5e56d05af254b5928da566051da5b9c5905f63d8d75da19477126d0" -> "sha256:822ff38e4cdf528988680404b39937d7906ec9bcb8afd0f0e9b117a6cd2ae77d" [label=""];
  "sha256:822ff38e4cdf528988680404b39937d7906ec9bcb8afd0f0e9b117a6cd2ae77d" -> "sha256:9edb58cbe090c999fb0dff32358d5cd0b6b456764633e1135d532f0b49f1ed31" [label=""];
  "sha256:9edb58cbe090c999fb0dff32358d5cd0b6b456764633e1135d532f0b49f1ed31" -> "sha256:837e5304116c55f01f4f864e31e0a815e42ae9a9df83dd0b9170d8e85bc592f7" [label=""];
  "sha256:837e5304116c55f01f4f864e31e0a815e42ae9a9df83dd0b9170d8e85bc592f7" -> "sha256:e63eab226fdda9f047711bf38551b5dee20404298527d2bae34eb20bcefc3a0e" [label=""];
  "sha256:e63eab226fdda9f047711bf38551b5dee20404298527d2bae34eb20bcefc3a0e" -> "sha256:29a29a3c2562bd5c6476acdcc215c1bc04fd163a9a5be42a651f8e4a5753bf1b" [label=""];
  "sha256:29a29a3c2562bd5c6476acdcc215c1bc04fd163a9a5be42a651f8e4a5753bf1b" -> "sha256:e82ae94f996daaf7c6a5475c52936cca56413597a193b04ed6e461f9f79bd818" [label=""];
  "sha256:62863397a8839d35179b104bd956dcdb4eed97f253bd9a487a1a11998e07a242" -> "sha256:e82ae94f996daaf7c6a5475c52936cca56413597a193b04ed6e461f9f79bd818" [label=""];
  "sha256:e82ae94f996daaf7c6a5475c52936cca56413597a193b04ed6e461f9f79bd818" -> "sha256:5fc8c20aab475ae422959092ea804478ee7335130760df9b639ea1d37a2d2ee8" [label=""];
  "sha256:5fc8c20aab475ae422959092ea804478ee7335130760df9b639ea1d37a2d2ee8" -> "sha256:fea87f1f96c70bcf0eee9264c68b3be90a033aeea86380e24f204a9985d84faf" [label=""];
}

