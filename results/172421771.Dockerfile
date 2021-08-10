[app/sources/172421771.Dockerfile]
digraph {
  "sha256:4d7da96db19b89b4c6dbb053856c62e8f3f54d31a20950a174d6c2e8c88323dd" [label="docker-image://docker.io/rancher/dind:v0.3.0@sha256:714805138ccf20e855e7f41c4793cd64963884c9684d7d6474da9a876e36bce2" shape="ellipse"];
  "sha256:ae9b8d6a746252cd9a4e7998131aa1ef6cace1aeab185749a05c7cf5e63ea6bc" [label="local://context" shape="ellipse"];
  "sha256:a2f97ba94a21a54fa16c22acbe12fb57ed4992e5f3ad8196c2330c8893ed0b3a" [label="copy{src=/scripts/bootstrap, dest=/scripts/bootstrap}" shape="note"];
  "sha256:643e62bbd75b1b3a1075ed9b23d92109772a7e2f69fcf4eb719e1604be91e9f0" [label="/bin/sh -c /scripts/bootstrap" shape="box"];
  "sha256:ac15c4711bee0d02cd11021d823df5e9ac367eeb6299ee8ad02333801d32f1ea" [label="mkdir{path=/source}" shape="note"];
  "sha256:2afad7b31ed5969fd5bf6162de5055d2a0d23630e5fa2beee798e2bbd631001b" [label="sha256:2afad7b31ed5969fd5bf6162de5055d2a0d23630e5fa2beee798e2bbd631001b" shape="plaintext"];
  "sha256:4d7da96db19b89b4c6dbb053856c62e8f3f54d31a20950a174d6c2e8c88323dd" -> "sha256:a2f97ba94a21a54fa16c22acbe12fb57ed4992e5f3ad8196c2330c8893ed0b3a" [label=""];
  "sha256:ae9b8d6a746252cd9a4e7998131aa1ef6cace1aeab185749a05c7cf5e63ea6bc" -> "sha256:a2f97ba94a21a54fa16c22acbe12fb57ed4992e5f3ad8196c2330c8893ed0b3a" [label=""];
  "sha256:a2f97ba94a21a54fa16c22acbe12fb57ed4992e5f3ad8196c2330c8893ed0b3a" -> "sha256:643e62bbd75b1b3a1075ed9b23d92109772a7e2f69fcf4eb719e1604be91e9f0" [label=""];
  "sha256:643e62bbd75b1b3a1075ed9b23d92109772a7e2f69fcf4eb719e1604be91e9f0" -> "sha256:ac15c4711bee0d02cd11021d823df5e9ac367eeb6299ee8ad02333801d32f1ea" [label=""];
  "sha256:ac15c4711bee0d02cd11021d823df5e9ac367eeb6299ee8ad02333801d32f1ea" -> "sha256:2afad7b31ed5969fd5bf6162de5055d2a0d23630e5fa2beee798e2bbd631001b" [label=""];
}

