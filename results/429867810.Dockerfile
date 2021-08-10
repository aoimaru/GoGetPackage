[app/sources/429867810.Dockerfile]
digraph {
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" [label="docker-image://docker.io/s390x/ubuntu:xenial" shape="ellipse"];
  "sha256:9cdbfedc7db193dea73382b51287948dba3fe64acc343c2af484716275aa44cc" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libseccomp-dev pkg-config libsystemd-dev vim-common --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bb7f7699c5e392af92ebc6459d981ee34f5e10bd423159975000df5e5c48ccf6" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:a121d811fa8d85b0e6fce1ebd4849b326818454238e2e4b85eccb19bcca3d470" [label="sha256:a121d811fa8d85b0e6fce1ebd4849b326818454238e2e4b85eccb19bcca3d470" shape="plaintext"];
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" -> "sha256:9cdbfedc7db193dea73382b51287948dba3fe64acc343c2af484716275aa44cc" [label=""];
  "sha256:9cdbfedc7db193dea73382b51287948dba3fe64acc343c2af484716275aa44cc" -> "sha256:bb7f7699c5e392af92ebc6459d981ee34f5e10bd423159975000df5e5c48ccf6" [label=""];
  "sha256:bb7f7699c5e392af92ebc6459d981ee34f5e10bd423159975000df5e5c48ccf6" -> "sha256:a121d811fa8d85b0e6fce1ebd4849b326818454238e2e4b85eccb19bcca3d470" [label=""];
}

