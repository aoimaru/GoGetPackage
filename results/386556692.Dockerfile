[app/sources/386556692.Dockerfile]
digraph {
  "sha256:48e4fd079846c4002da9c069091fc61db5931366c2c9cc75046da9d771919d40" [label="docker-image://docker.io/armhf/ubuntu:yakkety" shape="ellipse"];
  "sha256:ec8bdb9dacaa1c50e97b4828c337c51a6199a83861e7ccf9b9e8bd65ffaa6cd4" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:df501c3d433cf893bd125981b5747ed170cb4bdd01fb00d5b1ca0f39416482e8" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:f252b0e326c78732f2d2470d418f316443bd29e98dd1a379a4ec2ce4a3d3900c" [label="sha256:f252b0e326c78732f2d2470d418f316443bd29e98dd1a379a4ec2ce4a3d3900c" shape="plaintext"];
  "sha256:48e4fd079846c4002da9c069091fc61db5931366c2c9cc75046da9d771919d40" -> "sha256:ec8bdb9dacaa1c50e97b4828c337c51a6199a83861e7ccf9b9e8bd65ffaa6cd4" [label=""];
  "sha256:ec8bdb9dacaa1c50e97b4828c337c51a6199a83861e7ccf9b9e8bd65ffaa6cd4" -> "sha256:df501c3d433cf893bd125981b5747ed170cb4bdd01fb00d5b1ca0f39416482e8" [label=""];
  "sha256:df501c3d433cf893bd125981b5747ed170cb4bdd01fb00d5b1ca0f39416482e8" -> "sha256:f252b0e326c78732f2d2470d418f316443bd29e98dd1a379a4ec2ce4a3d3900c" [label=""];
}

