[app/sources/305987174.Dockerfile]
digraph {
  "sha256:9b120a98ce88f5fc47ffc1523734127b3593c6839c8f2aa0ece98d2789766cf2" [label="docker-image://docker.io/library/debian:wheezy-backports" shape="ellipse"];
  "sha256:b667dd6f85bd88e3bb111446945fbf5163b3749d916284019d9ab802cf5d0b68" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list" shape="box"];
  "sha256:9c182d10f13a8b8eb12b5c7ec8010acfcad8c10614802b30dd1d99116fc42b4a" [label="/bin/sh -c sed -ri \"s/(httpredir|deb).debian.org/$APT_MIRROR/g\" /etc/apt/sources.list.d/backports.list" shape="box"];
  "sha256:b64abaeb66f1d5e515971521a878cc4f0296ca9dd99c522fdc53c5da9de7667e" [label="/bin/sh -c apt-get update && apt-get install -y -t wheezy-backports btrfs-tools --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6be6b5623efa20049b720c791e0c6e7f9b0d0c22da64128173196379ae17a862" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion  build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev  libsqlite3-dev pkg-config vim-common --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a85f357db0ff3df85fba94ec939cbeb49101eaab21446829953cc0496df4b3b8" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:5e354cf0a969e20b6a9597cee5dfabf452d25ea1279d379e84ee0251ebc501d8" [label="sha256:5e354cf0a969e20b6a9597cee5dfabf452d25ea1279d379e84ee0251ebc501d8" shape="plaintext"];
  "sha256:9b120a98ce88f5fc47ffc1523734127b3593c6839c8f2aa0ece98d2789766cf2" -> "sha256:b667dd6f85bd88e3bb111446945fbf5163b3749d916284019d9ab802cf5d0b68" [label=""];
  "sha256:b667dd6f85bd88e3bb111446945fbf5163b3749d916284019d9ab802cf5d0b68" -> "sha256:9c182d10f13a8b8eb12b5c7ec8010acfcad8c10614802b30dd1d99116fc42b4a" [label=""];
  "sha256:9c182d10f13a8b8eb12b5c7ec8010acfcad8c10614802b30dd1d99116fc42b4a" -> "sha256:b64abaeb66f1d5e515971521a878cc4f0296ca9dd99c522fdc53c5da9de7667e" [label=""];
  "sha256:b64abaeb66f1d5e515971521a878cc4f0296ca9dd99c522fdc53c5da9de7667e" -> "sha256:6be6b5623efa20049b720c791e0c6e7f9b0d0c22da64128173196379ae17a862" [label=""];
  "sha256:6be6b5623efa20049b720c791e0c6e7f9b0d0c22da64128173196379ae17a862" -> "sha256:a85f357db0ff3df85fba94ec939cbeb49101eaab21446829953cc0496df4b3b8" [label=""];
  "sha256:a85f357db0ff3df85fba94ec939cbeb49101eaab21446829953cc0496df4b3b8" -> "sha256:5e354cf0a969e20b6a9597cee5dfabf452d25ea1279d379e84ee0251ebc501d8" [label=""];
}

