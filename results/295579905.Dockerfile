[app/sources/295579905.Dockerfile]
digraph {
  "sha256:82f6685e9ba547eb5ea0e42c339d70ad22fe819d358a375fd9fc8e30bf3e50a7" [label="docker-image://docker.io/ppc64le/ubuntu:yakkety" shape="ellipse"];
  "sha256:251184be9b34871984e3a9d5c1a03ff7760c2c9d4b3756db18ca955285c005c3" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev pkg-config vim-common libseccomp-dev libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:567f35092e9e506923ef30e8cdb2f6761c526adeead7c0b09e2bd22e2055c438" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-ppc64le.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:4593bfd27a2acd1bb0f0a3392478f364e0d79a34b3af8bd71eab0122a46ef4f5" [label="sha256:4593bfd27a2acd1bb0f0a3392478f364e0d79a34b3af8bd71eab0122a46ef4f5" shape="plaintext"];
  "sha256:82f6685e9ba547eb5ea0e42c339d70ad22fe819d358a375fd9fc8e30bf3e50a7" -> "sha256:251184be9b34871984e3a9d5c1a03ff7760c2c9d4b3756db18ca955285c005c3" [label=""];
  "sha256:251184be9b34871984e3a9d5c1a03ff7760c2c9d4b3756db18ca955285c005c3" -> "sha256:567f35092e9e506923ef30e8cdb2f6761c526adeead7c0b09e2bd22e2055c438" [label=""];
  "sha256:567f35092e9e506923ef30e8cdb2f6761c526adeead7c0b09e2bd22e2055c438" -> "sha256:4593bfd27a2acd1bb0f0a3392478f364e0d79a34b3af8bd71eab0122a46ef4f5" [label=""];
}

