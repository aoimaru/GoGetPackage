[app/sources/255678334.Dockerfile]
digraph {
  "sha256:9b120a98ce88f5fc47ffc1523734127b3593c6839c8f2aa0ece98d2789766cf2" [label="docker-image://docker.io/library/debian:wheezy-backports" shape="ellipse"];
  "sha256:b667dd6f85bd88e3bb111446945fbf5163b3749d916284019d9ab802cf5d0b68" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:9c182d10f13a8b8eb12b5c7ec8010acfcad8c10614802b30dd1d99116fc42b4a" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list.d/backports.list" shape="box"];
  "sha256:b64abaeb66f1d5e515971521a878cc4f0296ca9dd99c522fdc53c5da9de7667e" [label="/bin/sh -c apt-get update && apt-get install -y -t wheezy-backports btrfs-tools --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c3eb4cea0c1d20ce3bae3cd7a0522cfcbb5b0938a6647501abed8616e90b7273" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion  build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev  pkg-config vim-common --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4a107aa821ffb40cbd602596411fb4af0a01a9ffd75347f87c7029e230fe942c" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:d0abad79d656abd2bdf7407b2854626f2b2cb489499953bb6a7ecbf660c7740d" [label="sha256:d0abad79d656abd2bdf7407b2854626f2b2cb489499953bb6a7ecbf660c7740d" shape="plaintext"];
  "sha256:9b120a98ce88f5fc47ffc1523734127b3593c6839c8f2aa0ece98d2789766cf2" -> "sha256:b667dd6f85bd88e3bb111446945fbf5163b3749d916284019d9ab802cf5d0b68" [label=""];
  "sha256:b667dd6f85bd88e3bb111446945fbf5163b3749d916284019d9ab802cf5d0b68" -> "sha256:9c182d10f13a8b8eb12b5c7ec8010acfcad8c10614802b30dd1d99116fc42b4a" [label=""];
  "sha256:9c182d10f13a8b8eb12b5c7ec8010acfcad8c10614802b30dd1d99116fc42b4a" -> "sha256:b64abaeb66f1d5e515971521a878cc4f0296ca9dd99c522fdc53c5da9de7667e" [label=""];
  "sha256:b64abaeb66f1d5e515971521a878cc4f0296ca9dd99c522fdc53c5da9de7667e" -> "sha256:c3eb4cea0c1d20ce3bae3cd7a0522cfcbb5b0938a6647501abed8616e90b7273" [label=""];
  "sha256:c3eb4cea0c1d20ce3bae3cd7a0522cfcbb5b0938a6647501abed8616e90b7273" -> "sha256:4a107aa821ffb40cbd602596411fb4af0a01a9ffd75347f87c7029e230fe942c" [label=""];
  "sha256:4a107aa821ffb40cbd602596411fb4af0a01a9ffd75347f87c7029e230fe942c" -> "sha256:d0abad79d656abd2bdf7407b2854626f2b2cb489499953bb6a7ecbf660c7740d" [label=""];
}

