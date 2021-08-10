[app/sources/252789046.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" [label="/bin/sh -c apk update && apk upgrade" shape="box"];
  "sha256:33d6dd5d63d3f68d9bbd12718e8c3dc04da1a744359672de5d814efd2bb110bc" [label="/bin/sh -c apk add bash procps drill git coreutils" shape="box"];
  "sha256:9795983f745b9c06c00a2bf809aa1065e137a73de360b734849e6605ed6ecd5b" [label="/bin/sh -c addgroup testssl" shape="box"];
  "sha256:92b584a2d451f16c5458bf30bc78bebf588e7471910cec4f2e8a470dc6e5a956" [label="/bin/sh -c adduser -G testssl -g \"testssl user\" -s /bin/bash -D testssl" shape="box"];
  "sha256:8e4aa725c8bf3d44b364deef30c75ff7fa8762eabf98816fba8708226c189b0e" [label="/bin/sh -c ln -s /home/testssl/testssl.sh /usr/local/bin/" shape="box"];
  "sha256:8b460a1dd29916eaef2994d7df0a3b08ad259aeaf55a67021def6a58dcb2ad3e" [label="mkdir{path=/home/testssl}" shape="note"];
  "sha256:0075e6024fe2ec0aa17d240a6ffc061a6b0b826ae8b34649f45f950bbd59b2f2" [label="/bin/sh -c git clone \\--depth=1 https://github.com/drwetter/testssl.sh.git ." shape="box"];
  "sha256:c8948ab852552cde313e29a76cbd90ef1ca81ff1bec387a77d61d8e60117087a" [label="sha256:c8948ab852552cde313e29a76cbd90ef1ca81ff1bec387a77d61d8e60117087a" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" [label=""];
  "sha256:cab33040f1464c0441e2b7e9905a123a717f062b11ae703a96fa6f6a038127ee" -> "sha256:33d6dd5d63d3f68d9bbd12718e8c3dc04da1a744359672de5d814efd2bb110bc" [label=""];
  "sha256:33d6dd5d63d3f68d9bbd12718e8c3dc04da1a744359672de5d814efd2bb110bc" -> "sha256:9795983f745b9c06c00a2bf809aa1065e137a73de360b734849e6605ed6ecd5b" [label=""];
  "sha256:9795983f745b9c06c00a2bf809aa1065e137a73de360b734849e6605ed6ecd5b" -> "sha256:92b584a2d451f16c5458bf30bc78bebf588e7471910cec4f2e8a470dc6e5a956" [label=""];
  "sha256:92b584a2d451f16c5458bf30bc78bebf588e7471910cec4f2e8a470dc6e5a956" -> "sha256:8e4aa725c8bf3d44b364deef30c75ff7fa8762eabf98816fba8708226c189b0e" [label=""];
  "sha256:8e4aa725c8bf3d44b364deef30c75ff7fa8762eabf98816fba8708226c189b0e" -> "sha256:8b460a1dd29916eaef2994d7df0a3b08ad259aeaf55a67021def6a58dcb2ad3e" [label=""];
  "sha256:8b460a1dd29916eaef2994d7df0a3b08ad259aeaf55a67021def6a58dcb2ad3e" -> "sha256:0075e6024fe2ec0aa17d240a6ffc061a6b0b826ae8b34649f45f950bbd59b2f2" [label=""];
  "sha256:0075e6024fe2ec0aa17d240a6ffc061a6b0b826ae8b34649f45f950bbd59b2f2" -> "sha256:c8948ab852552cde313e29a76cbd90ef1ca81ff1bec387a77d61d8e60117087a" [label=""];
}

