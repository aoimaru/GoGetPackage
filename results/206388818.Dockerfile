[app/sources/206388818.Dockerfile]
digraph {
  "sha256:1213c88016540f97c3f72937b5163492e669e182ff56a5f7d79dfdab7f4cca92" [label="docker-image://docker.io/ppc64le/ubuntu:xenial" shape="ellipse"];
  "sha256:3a142b3d48965ae77c705355b7d0163d9d7411d50bd1db6579ca6f4c2d985e49" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev pkg-config vim-common libseccomp-dev libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:520a5dfab88c1d097d05b8ff53ad47b3c723f569bab44b9617945989afb39e85" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-ppc64le.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:dc189731d166be267cbcc125be9af7806e96a7dca37516d24af744a79396d5a1" [label="sha256:dc189731d166be267cbcc125be9af7806e96a7dca37516d24af744a79396d5a1" shape="plaintext"];
  "sha256:1213c88016540f97c3f72937b5163492e669e182ff56a5f7d79dfdab7f4cca92" -> "sha256:3a142b3d48965ae77c705355b7d0163d9d7411d50bd1db6579ca6f4c2d985e49" [label=""];
  "sha256:3a142b3d48965ae77c705355b7d0163d9d7411d50bd1db6579ca6f4c2d985e49" -> "sha256:520a5dfab88c1d097d05b8ff53ad47b3c723f569bab44b9617945989afb39e85" [label=""];
  "sha256:520a5dfab88c1d097d05b8ff53ad47b3c723f569bab44b9617945989afb39e85" -> "sha256:dc189731d166be267cbcc125be9af7806e96a7dca37516d24af744a79396d5a1" [label=""];
}

