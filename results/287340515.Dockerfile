[app/sources/287340515.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:0c88add0e9c7826bbe8fc7089bfe90c07632a7afaebd81da8e07e5c50ebd8201" [label="/bin/sh -c set -xe &&     adduser -s /bin/false -D -H prometheus &&     adduser -s /bin/false -D -H node_exporter &&     wget https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz &&     wget https://github.com/prometheus/prometheus/releases/download/v${PROMETHEUS_VERSION}/sha256sums.txt &&     grep prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz sha256sums.txt | sha256sum -c -- &&     tar -xvzf prometheus-${PROMETHEUS_VERSION}.linux-amd64.tar.gz &&     mkdir -p /etc/prometheus /var/lib/prometheus &&     cp prometheus-${PROMETHEUS_VERSION}.linux-amd64/promtool /usr/local/bin/ &&     cp prometheus-${PROMETHEUS_VERSION}.linux-amd64/prometheus /usr/local/bin/ &&     cp -R prometheus-${PROMETHEUS_VERSION}.linux-amd64/console_libraries/ /etc/prometheus/ &&     cp -R prometheus-${PROMETHEUS_VERSION}.linux-amd64/consoles/ /etc/prometheus/ &&     rm -rf prometheus-${PROMETHEUS_VERSION}.linux-amd64* sha256sums.txt &&     chown prometheus:prometheus /usr/local/bin/prometheus &&     chown prometheus:prometheus /usr/local/bin/promtool &&     chown -R prometheus:prometheus /etc/prometheus &&     chown prometheus:prometheus /var/lib/prometheus" shape="box"];
  "sha256:8113297f36d4d89652ab3cdf2a80472a25b6d4d918a9dfcbb90758d707352ac8" [label="local://context" shape="ellipse"];
  "sha256:55a8b54050ff7fbdf9c1605c06cb8f1e0b9a6cafcda2c61ade15b45efce89098" [label="copy{src=/conf/prometheus.yml, dest=/etc/prometheus/}" shape="note"];
  "sha256:1c6418143f63bf0f0a3d2ff35b8391e64c9ea934179fd413c66a6bd933dd43ff" [label="copy{src=/conf/alert.rules, dest=/etc/prometheus/}" shape="note"];
  "sha256:f8d2a912ee9ab83b057553ff23290a0cce41a123deed5325aecb7f6f8306b5e1" [label="sha256:f8d2a912ee9ab83b057553ff23290a0cce41a123deed5325aecb7f6f8306b5e1" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:0c88add0e9c7826bbe8fc7089bfe90c07632a7afaebd81da8e07e5c50ebd8201" [label=""];
  "sha256:0c88add0e9c7826bbe8fc7089bfe90c07632a7afaebd81da8e07e5c50ebd8201" -> "sha256:55a8b54050ff7fbdf9c1605c06cb8f1e0b9a6cafcda2c61ade15b45efce89098" [label=""];
  "sha256:8113297f36d4d89652ab3cdf2a80472a25b6d4d918a9dfcbb90758d707352ac8" -> "sha256:55a8b54050ff7fbdf9c1605c06cb8f1e0b9a6cafcda2c61ade15b45efce89098" [label=""];
  "sha256:55a8b54050ff7fbdf9c1605c06cb8f1e0b9a6cafcda2c61ade15b45efce89098" -> "sha256:1c6418143f63bf0f0a3d2ff35b8391e64c9ea934179fd413c66a6bd933dd43ff" [label=""];
  "sha256:8113297f36d4d89652ab3cdf2a80472a25b6d4d918a9dfcbb90758d707352ac8" -> "sha256:1c6418143f63bf0f0a3d2ff35b8391e64c9ea934179fd413c66a6bd933dd43ff" [label=""];
  "sha256:1c6418143f63bf0f0a3d2ff35b8391e64c9ea934179fd413c66a6bd933dd43ff" -> "sha256:f8d2a912ee9ab83b057553ff23290a0cce41a123deed5325aecb7f6f8306b5e1" [label=""];
}

