[app/sources/242600259.Dockerfile]
digraph {
  "sha256:48e4fd079846c4002da9c069091fc61db5931366c2c9cc75046da9d771919d40" [label="docker-image://docker.io/armhf/ubuntu:yakkety" shape="ellipse"];
  "sha256:ec8bdb9dacaa1c50e97b4828c337c51a6199a83861e7ccf9b9e8bd65ffaa6cd4" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f6ad822f3c51f6cbbbf9351b21fc9af8bd08a26d238577b03aa3ba43455286b0" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:6ce3bf43d1b04cc738c2e85705aeeceecafa9d38f22af9ebb05103ab96ee94d9" [label="sha256:6ce3bf43d1b04cc738c2e85705aeeceecafa9d38f22af9ebb05103ab96ee94d9" shape="plaintext"];
  "sha256:48e4fd079846c4002da9c069091fc61db5931366c2c9cc75046da9d771919d40" -> "sha256:ec8bdb9dacaa1c50e97b4828c337c51a6199a83861e7ccf9b9e8bd65ffaa6cd4" [label=""];
  "sha256:ec8bdb9dacaa1c50e97b4828c337c51a6199a83861e7ccf9b9e8bd65ffaa6cd4" -> "sha256:f6ad822f3c51f6cbbbf9351b21fc9af8bd08a26d238577b03aa3ba43455286b0" [label=""];
  "sha256:f6ad822f3c51f6cbbbf9351b21fc9af8bd08a26d238577b03aa3ba43455286b0" -> "sha256:6ce3bf43d1b04cc738c2e85705aeeceecafa9d38f22af9ebb05103ab96ee94d9" [label=""];
}

