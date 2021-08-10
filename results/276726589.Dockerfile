[app/sources/276726589.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:58653c47967069c0620e428768227ceb9c5aa83768405c21f3e973a3bbcb28d2" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:fcb22dc0bab5e06dbd2c76a6d58760b6b089ffa441d6e0fa65910af9cc911d8c" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:63ecaec707174a73fc7580c7fd828261444d234032b0a26c74afd2fcfe3f55e6" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:2f581a2f9336b6e2f05fd78ecdd23ba23d00009b85a391ece4f8e662317a5f9e" [label="sha256:2f581a2f9336b6e2f05fd78ecdd23ba23d00009b85a391ece4f8e662317a5f9e" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:58653c47967069c0620e428768227ceb9c5aa83768405c21f3e973a3bbcb28d2" [label=""];
  "sha256:58653c47967069c0620e428768227ceb9c5aa83768405c21f3e973a3bbcb28d2" -> "sha256:fcb22dc0bab5e06dbd2c76a6d58760b6b089ffa441d6e0fa65910af9cc911d8c" [label=""];
  "sha256:fcb22dc0bab5e06dbd2c76a6d58760b6b089ffa441d6e0fa65910af9cc911d8c" -> "sha256:63ecaec707174a73fc7580c7fd828261444d234032b0a26c74afd2fcfe3f55e6" [label=""];
  "sha256:63ecaec707174a73fc7580c7fd828261444d234032b0a26c74afd2fcfe3f55e6" -> "sha256:2f581a2f9336b6e2f05fd78ecdd23ba23d00009b85a391ece4f8e662317a5f9e" [label=""];
}

