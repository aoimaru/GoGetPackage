[app/sources/259534383.Dockerfile]
digraph {
  "sha256:48e4fd079846c4002da9c069091fc61db5931366c2c9cc75046da9d771919d40" [label="docker-image://docker.io/armhf/ubuntu:yakkety" shape="ellipse"];
  "sha256:f6fb41180402a90ded19951a63a625fda2be2749120b3d4cc3c9ab17989feb26" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b91dcaefebc94c778c8a89cf506306dec536d8487c346f6ab5340108a8d27070" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:3a5454ae669e77bc57131837ec5da1b5b5e2f33b521f0c7dff87c72b14b89cbe" [label="sha256:3a5454ae669e77bc57131837ec5da1b5b5e2f33b521f0c7dff87c72b14b89cbe" shape="plaintext"];
  "sha256:48e4fd079846c4002da9c069091fc61db5931366c2c9cc75046da9d771919d40" -> "sha256:f6fb41180402a90ded19951a63a625fda2be2749120b3d4cc3c9ab17989feb26" [label=""];
  "sha256:f6fb41180402a90ded19951a63a625fda2be2749120b3d4cc3c9ab17989feb26" -> "sha256:b91dcaefebc94c778c8a89cf506306dec536d8487c346f6ab5340108a8d27070" [label=""];
  "sha256:b91dcaefebc94c778c8a89cf506306dec536d8487c346f6ab5340108a8d27070" -> "sha256:3a5454ae669e77bc57131837ec5da1b5b5e2f33b521f0c7dff87c72b14b89cbe" [label=""];
}

