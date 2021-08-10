[app/sources/196415521.Dockerfile]
digraph {
  "sha256:8acc5802aa36fd7a6039c1f18dbc22074da970bc0fbc5b0f9c366d3395bf8f78" [label="docker-image://docker.io/armhf/ubuntu:latest" shape="ellipse"];
  "sha256:ec9831573f2c01d6ba7947eac8dbb97815177baa86fecb8ee052f83aa9339092" [label="/bin/sh -c apt-get update && apt-get -qy install git nano curl wget build-essential" shape="box"];
  "sha256:0672a1c85008a9ac2a3938f1ee66c47da783df39a74903b9fa381aa3c8d58692" [label="/bin/sh -c wget \thttps://github.com/hypriot/golang-armbuilds/releases/download/v1.5.2/go1.5.2.linux-armv7.tar.gz" shape="box"];
  "sha256:6bfc7800fc00f61fd1b0bb46f4a2c44343b3f8ad3c16c122a69866946b2462ed" [label="/bin/sh -c tar -xf go*.tar.gz -C /usr/local/" shape="box"];
  "sha256:efb5f550730cb873564b340bc8960c5c8b0b5b2afce000c00fc0984a79218d03" [label="/bin/sh -c mkdir /go" shape="box"];
  "sha256:c3a32218715b4727e8e538b9eed03d719e4a96017077c7beccd826a57f59db1f" [label="/bin/sh -c go version" shape="box"];
  "sha256:564ea41187c15dea07d00682d4f62e62760f745f972c9eff69eb38e2e3b59fec" [label="/bin/sh -c AUTO_GOPATH=1 go get github.com/tools/godep" shape="box"];
  "sha256:26808b516608ddf62aea44e3fd5654c07bd03f91aaf2a39c32511a6fa258de84" [label="sha256:26808b516608ddf62aea44e3fd5654c07bd03f91aaf2a39c32511a6fa258de84" shape="plaintext"];
  "sha256:8acc5802aa36fd7a6039c1f18dbc22074da970bc0fbc5b0f9c366d3395bf8f78" -> "sha256:ec9831573f2c01d6ba7947eac8dbb97815177baa86fecb8ee052f83aa9339092" [label=""];
  "sha256:ec9831573f2c01d6ba7947eac8dbb97815177baa86fecb8ee052f83aa9339092" -> "sha256:0672a1c85008a9ac2a3938f1ee66c47da783df39a74903b9fa381aa3c8d58692" [label=""];
  "sha256:0672a1c85008a9ac2a3938f1ee66c47da783df39a74903b9fa381aa3c8d58692" -> "sha256:6bfc7800fc00f61fd1b0bb46f4a2c44343b3f8ad3c16c122a69866946b2462ed" [label=""];
  "sha256:6bfc7800fc00f61fd1b0bb46f4a2c44343b3f8ad3c16c122a69866946b2462ed" -> "sha256:efb5f550730cb873564b340bc8960c5c8b0b5b2afce000c00fc0984a79218d03" [label=""];
  "sha256:efb5f550730cb873564b340bc8960c5c8b0b5b2afce000c00fc0984a79218d03" -> "sha256:c3a32218715b4727e8e538b9eed03d719e4a96017077c7beccd826a57f59db1f" [label=""];
  "sha256:c3a32218715b4727e8e538b9eed03d719e4a96017077c7beccd826a57f59db1f" -> "sha256:564ea41187c15dea07d00682d4f62e62760f745f972c9eff69eb38e2e3b59fec" [label=""];
  "sha256:564ea41187c15dea07d00682d4f62e62760f745f972c9eff69eb38e2e3b59fec" -> "sha256:26808b516608ddf62aea44e3fd5654c07bd03f91aaf2a39c32511a6fa258de84" [label=""];
}

