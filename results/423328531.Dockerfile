[app/sources/423328531.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:30e483f1203c48300be9a742c59fdc4172f156ba9ef1b424da8f7b853f625eed" [label="/bin/sh -c curl -LO https://github.com/prometheus/node_exporter/releases/download/v${exporter_version}/node_exporter-${exporter_version}.linux-amd64.tar.gz     && tar -xvzf node_exporter-${exporter_version}.linux-amd64.tar.gz      && cp node_exporter-${exporter_version}.linux-amd64/node_exporter /tmp/" shape="box"];
  "sha256:3e65916ad3f9d5938b8f20cef7003f1f2c4ef43b87484463e3e60338e6241f56" [label="copy{src=/tmp/node_exporter, dest=/usr/local/bin/}" shape="note"];
  "sha256:5a818a8792129e9edc2fd44038d9b969e8aa63b47ff79fa87914a46224d0c0f1" [label="sha256:5a818a8792129e9edc2fd44038d9b969e8aa63b47ff79fa87914a46224d0c0f1" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:30e483f1203c48300be9a742c59fdc4172f156ba9ef1b424da8f7b853f625eed" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3e65916ad3f9d5938b8f20cef7003f1f2c4ef43b87484463e3e60338e6241f56" [label=""];
  "sha256:30e483f1203c48300be9a742c59fdc4172f156ba9ef1b424da8f7b853f625eed" -> "sha256:3e65916ad3f9d5938b8f20cef7003f1f2c4ef43b87484463e3e60338e6241f56" [label=""];
  "sha256:3e65916ad3f9d5938b8f20cef7003f1f2c4ef43b87484463e3e60338e6241f56" -> "sha256:5a818a8792129e9edc2fd44038d9b969e8aa63b47ff79fa87914a46224d0c0f1" [label=""];
}

