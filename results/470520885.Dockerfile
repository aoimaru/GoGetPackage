[app/sources/470520885.Dockerfile]
digraph {
  "sha256:cd89ee131f628834252163eada135aceb29bdb805b924898d8f8fbe88d5e0dff" [label="docker-image://docker.io/armhf/ubuntu:xenial" shape="ellipse"];
  "sha256:2353a08f647a11b06b39ce7f8f0741b6f3a0bad741ad08eebf5bef88da2cb736" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5a9e80b925979bf71adac442969c94dfd5437cdf8ed448ad6f1099a28d2312aa" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:17af9ce243b8ec6fcf696d72715b942394951da4a6c502c81b0cc50ac6437f99" [label="sha256:17af9ce243b8ec6fcf696d72715b942394951da4a6c502c81b0cc50ac6437f99" shape="plaintext"];
  "sha256:cd89ee131f628834252163eada135aceb29bdb805b924898d8f8fbe88d5e0dff" -> "sha256:2353a08f647a11b06b39ce7f8f0741b6f3a0bad741ad08eebf5bef88da2cb736" [label=""];
  "sha256:2353a08f647a11b06b39ce7f8f0741b6f3a0bad741ad08eebf5bef88da2cb736" -> "sha256:5a9e80b925979bf71adac442969c94dfd5437cdf8ed448ad6f1099a28d2312aa" [label=""];
  "sha256:5a9e80b925979bf71adac442969c94dfd5437cdf8ed448ad6f1099a28d2312aa" -> "sha256:17af9ce243b8ec6fcf696d72715b942394951da4a6c502c81b0cc50ac6437f99" [label=""];
}

