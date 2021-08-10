[app/sources/341301504.Dockerfile]
digraph {
  "sha256:4954229d0e5f396f0781850dd377ecdc8abc208e1fb8740c3a6c75cbc4794510" [label="docker-image://docker.io/library/debian:stretch@sha256:06f9296409de8cfecaff43aaee6d608ed48a95c0cac0da2a418ff526acedf67b" shape="ellipse"];
  "sha256:c3ae1a9a3cfa5680d7fdae736e907a65b8d805a6996ce44f7541da70fb87aa3b" [label="/bin/sh -c apt-get update && apt-get install -y bash-completion btrfs-tools build-essential curl ca-certificates debhelper dh-systemd git libapparmor-dev libdevmapper-dev libsqlite3-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4974f6ff5b4d81c859969c815629c85662cbaa1b232935c52831914956db4c34" [label="/bin/sh -c curl -fSL \"https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:16783cdc62c03c93018a945ba358b70255358c8142f42679c4da204bba2bed41" [label="sha256:16783cdc62c03c93018a945ba358b70255358c8142f42679c4da204bba2bed41" shape="plaintext"];
  "sha256:4954229d0e5f396f0781850dd377ecdc8abc208e1fb8740c3a6c75cbc4794510" -> "sha256:c3ae1a9a3cfa5680d7fdae736e907a65b8d805a6996ce44f7541da70fb87aa3b" [label=""];
  "sha256:c3ae1a9a3cfa5680d7fdae736e907a65b8d805a6996ce44f7541da70fb87aa3b" -> "sha256:4974f6ff5b4d81c859969c815629c85662cbaa1b232935c52831914956db4c34" [label=""];
  "sha256:4974f6ff5b4d81c859969c815629c85662cbaa1b232935c52831914956db4c34" -> "sha256:16783cdc62c03c93018a945ba358b70255358c8142f42679c4da204bba2bed41" [label=""];
}

