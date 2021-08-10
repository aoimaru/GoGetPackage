[app/sources/276977854.Dockerfile]
digraph {
  "sha256:9b120a98ce88f5fc47ffc1523734127b3593c6839c8f2aa0ece98d2789766cf2" [label="docker-image://docker.io/library/debian:wheezy-backports" shape="ellipse"];
  "sha256:b667dd6f85bd88e3bb111446945fbf5163b3749d916284019d9ab802cf5d0b68" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:9c182d10f13a8b8eb12b5c7ec8010acfcad8c10614802b30dd1d99116fc42b4a" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list.d/backports.list" shape="box"];
  "sha256:b64abaeb66f1d5e515971521a878cc4f0296ca9dd99c522fdc53c5da9de7667e" [label="/bin/sh -c apt-get update && apt-get install -y -t wheezy-backports btrfs-tools --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c3eb4cea0c1d20ce3bae3cd7a0522cfcbb5b0938a6647501abed8616e90b7273" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion  build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev  pkg-config vim-common --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:616aa0b5fb4f3e26f78147df65b0b7cd97664527a458a2c660a7618ab38f90ee" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:1d86c0f3154d0e4333a42a2b3d8c672e7d14109aa5554ebcc9ee0a573e341698" [label="sha256:1d86c0f3154d0e4333a42a2b3d8c672e7d14109aa5554ebcc9ee0a573e341698" shape="plaintext"];
  "sha256:9b120a98ce88f5fc47ffc1523734127b3593c6839c8f2aa0ece98d2789766cf2" -> "sha256:b667dd6f85bd88e3bb111446945fbf5163b3749d916284019d9ab802cf5d0b68" [label=""];
  "sha256:b667dd6f85bd88e3bb111446945fbf5163b3749d916284019d9ab802cf5d0b68" -> "sha256:9c182d10f13a8b8eb12b5c7ec8010acfcad8c10614802b30dd1d99116fc42b4a" [label=""];
  "sha256:9c182d10f13a8b8eb12b5c7ec8010acfcad8c10614802b30dd1d99116fc42b4a" -> "sha256:b64abaeb66f1d5e515971521a878cc4f0296ca9dd99c522fdc53c5da9de7667e" [label=""];
  "sha256:b64abaeb66f1d5e515971521a878cc4f0296ca9dd99c522fdc53c5da9de7667e" -> "sha256:c3eb4cea0c1d20ce3bae3cd7a0522cfcbb5b0938a6647501abed8616e90b7273" [label=""];
  "sha256:c3eb4cea0c1d20ce3bae3cd7a0522cfcbb5b0938a6647501abed8616e90b7273" -> "sha256:616aa0b5fb4f3e26f78147df65b0b7cd97664527a458a2c660a7618ab38f90ee" [label=""];
  "sha256:616aa0b5fb4f3e26f78147df65b0b7cd97664527a458a2c660a7618ab38f90ee" -> "sha256:1d86c0f3154d0e4333a42a2b3d8c672e7d14109aa5554ebcc9ee0a573e341698" [label=""];
}

