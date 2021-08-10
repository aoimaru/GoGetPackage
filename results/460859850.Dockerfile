[app/sources/460859850.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:fa427a2e43f67c14e3a80a30ba604f22f4c09a12758314ec56b0b5dbc1214a13" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libseccomp-dev libsqlite3-dev pkg-config libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:45c30c7d263617c09389d7f0f722be0565f5f8aa0e092205d8c44212ed6630e6" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:b87e38a128848a37f0cc4a85981fe57e9ea9574c8a41ebdb505cb83b794b87aa" [label="sha256:b87e38a128848a37f0cc4a85981fe57e9ea9574c8a41ebdb505cb83b794b87aa" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:fa427a2e43f67c14e3a80a30ba604f22f4c09a12758314ec56b0b5dbc1214a13" [label=""];
  "sha256:fa427a2e43f67c14e3a80a30ba604f22f4c09a12758314ec56b0b5dbc1214a13" -> "sha256:45c30c7d263617c09389d7f0f722be0565f5f8aa0e092205d8c44212ed6630e6" [label=""];
  "sha256:45c30c7d263617c09389d7f0f722be0565f5f8aa0e092205d8c44212ed6630e6" -> "sha256:b87e38a128848a37f0cc4a85981fe57e9ea9574c8a41ebdb505cb83b794b87aa" [label=""];
}

