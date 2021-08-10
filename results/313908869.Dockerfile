[app/sources/313908869.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:c88690a6d3700583145725d91dbaa6cd46b9e666355334309a85632c6fd9375e" [label="https://apk.cloudposse.com/ops@cloudposse.com.rsa.pub" shape="ellipse"];
  "sha256:1681d4322f241dfa4213a8bb9fba03b2bcfe1d361d09fc2d10fb0acfe382e1a7" [label="copy{src=/ops@cloudposse.com.rsa.pub, dest=/etc/apk/keys/}" shape="note"];
  "sha256:8dc6a6dc7c7d4fb9f447babea920a3cbb9c87235864688651e20ea9bcff34dbe" [label="/bin/sh -c echo \"https://apk.cloudposse.com/3.9/vendor\" >> /etc/apk/repositories" shape="box"];
  "sha256:c6d14d4bf27d9621c0b51d2336662f1929f19f182b5e734c4b1ca46b93b906f5" [label="/bin/sh -c echo \"https://alpine.global.ssl.fastly.net/alpine/edge/testing\" >> /etc/apk/repositories" shape="box"];
  "sha256:7fa320f9aa05e1c0159128aacb5e15c824f4fcf40a4818416d248547c9b8a30d" [label="/bin/sh -c echo \"https://alpine.global.ssl.fastly.net/alpine/edge/community\" >> /etc/apk/repositories" shape="box"];
  "sha256:4ed8494dc94a08bbab8a87afe3d7ba8e4a7cd766b2cd161dd7d80e7bd35dbf64" [label="/bin/sh -c apk update" shape="box"];
  "sha256:0dde90b6191129236e846e3e2e4f84d46aacda6b1b72e12c48737b588b2f9409" [label="/bin/sh -c apk add make curl alpine-sdk shadow" shape="box"];
  "sha256:ee0e43872596a4f7a6f900eb17d4323740b9615a846a7e95fddb23375d3a8cbb" [label="/bin/sh -c echo \"auth       sufficient   pam_shells.so\" > /etc/pam.d/chsh" shape="box"];
  "sha256:61c849ee60a32c5c3ef5e0f397f8539fed7530c0e1aae8791e42cebb8a5238fd" [label="sha256:61c849ee60a32c5c3ef5e0f397f8539fed7530c0e1aae8791e42cebb8a5238fd" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:1681d4322f241dfa4213a8bb9fba03b2bcfe1d361d09fc2d10fb0acfe382e1a7" [label=""];
  "sha256:c88690a6d3700583145725d91dbaa6cd46b9e666355334309a85632c6fd9375e" -> "sha256:1681d4322f241dfa4213a8bb9fba03b2bcfe1d361d09fc2d10fb0acfe382e1a7" [label=""];
  "sha256:1681d4322f241dfa4213a8bb9fba03b2bcfe1d361d09fc2d10fb0acfe382e1a7" -> "sha256:8dc6a6dc7c7d4fb9f447babea920a3cbb9c87235864688651e20ea9bcff34dbe" [label=""];
  "sha256:8dc6a6dc7c7d4fb9f447babea920a3cbb9c87235864688651e20ea9bcff34dbe" -> "sha256:c6d14d4bf27d9621c0b51d2336662f1929f19f182b5e734c4b1ca46b93b906f5" [label=""];
  "sha256:c6d14d4bf27d9621c0b51d2336662f1929f19f182b5e734c4b1ca46b93b906f5" -> "sha256:7fa320f9aa05e1c0159128aacb5e15c824f4fcf40a4818416d248547c9b8a30d" [label=""];
  "sha256:7fa320f9aa05e1c0159128aacb5e15c824f4fcf40a4818416d248547c9b8a30d" -> "sha256:4ed8494dc94a08bbab8a87afe3d7ba8e4a7cd766b2cd161dd7d80e7bd35dbf64" [label=""];
  "sha256:4ed8494dc94a08bbab8a87afe3d7ba8e4a7cd766b2cd161dd7d80e7bd35dbf64" -> "sha256:0dde90b6191129236e846e3e2e4f84d46aacda6b1b72e12c48737b588b2f9409" [label=""];
  "sha256:0dde90b6191129236e846e3e2e4f84d46aacda6b1b72e12c48737b588b2f9409" -> "sha256:ee0e43872596a4f7a6f900eb17d4323740b9615a846a7e95fddb23375d3a8cbb" [label=""];
  "sha256:ee0e43872596a4f7a6f900eb17d4323740b9615a846a7e95fddb23375d3a8cbb" -> "sha256:61c849ee60a32c5c3ef5e0f397f8539fed7530c0e1aae8791e42cebb8a5238fd" [label=""];
}

