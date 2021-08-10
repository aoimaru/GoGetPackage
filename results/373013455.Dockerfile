[app/sources/373013455.Dockerfile]
digraph {
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" [label="docker-image://docker.io/s390x/ubuntu:xenial" shape="ellipse"];
  "sha256:9cdbfedc7db193dea73382b51287948dba3fe64acc343c2af484716275aa44cc" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libseccomp-dev pkg-config libsystemd-dev vim-common --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:51557e7e6b2945a291685cb138235b0abbdbeb143e2fe888b1037c099d46e303" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-s390x.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:a35038665153f921f2d11e7f459105e0c58f8318f266be78d7825870f6b7e905" [label="sha256:a35038665153f921f2d11e7f459105e0c58f8318f266be78d7825870f6b7e905" shape="plaintext"];
  "sha256:1f159853a4cb20ce2ae561d74a29e0be91ef652a4b4d7f30a5f054b5bbd5b264" -> "sha256:9cdbfedc7db193dea73382b51287948dba3fe64acc343c2af484716275aa44cc" [label=""];
  "sha256:9cdbfedc7db193dea73382b51287948dba3fe64acc343c2af484716275aa44cc" -> "sha256:51557e7e6b2945a291685cb138235b0abbdbeb143e2fe888b1037c099d46e303" [label=""];
  "sha256:51557e7e6b2945a291685cb138235b0abbdbeb143e2fe888b1037c099d46e303" -> "sha256:a35038665153f921f2d11e7f459105e0c58f8318f266be78d7825870f6b7e905" [label=""];
}

