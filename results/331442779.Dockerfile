[app/sources/331442779.Dockerfile]
digraph {
  "sha256:b8f043826f09c9b69ff37edc485059b2eac34498e9b363af3aaf74e87950cd60" [label="docker-image://docker.io/aarch64/debian:stretch" shape="ellipse"];
  "sha256:07cf96a513b77d95b26589565f8661e1834aac9444de2e63c2022c5bacffa888" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev pkg-config vim-common libsystemd-dev libseccomp-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4f37722cb4c52e9f6d46e5cccbf79592758281ee0cb12984764faf7e1aca377e" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-arm64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:2d100d965b1821a13e21f27c2a87c17035c903952999f731d0d422fd5f1d8e3e" [label="sha256:2d100d965b1821a13e21f27c2a87c17035c903952999f731d0d422fd5f1d8e3e" shape="plaintext"];
  "sha256:b8f043826f09c9b69ff37edc485059b2eac34498e9b363af3aaf74e87950cd60" -> "sha256:07cf96a513b77d95b26589565f8661e1834aac9444de2e63c2022c5bacffa888" [label=""];
  "sha256:07cf96a513b77d95b26589565f8661e1834aac9444de2e63c2022c5bacffa888" -> "sha256:4f37722cb4c52e9f6d46e5cccbf79592758281ee0cb12984764faf7e1aca377e" [label=""];
  "sha256:4f37722cb4c52e9f6d46e5cccbf79592758281ee0cb12984764faf7e1aca377e" -> "sha256:2d100d965b1821a13e21f27c2a87c17035c903952999f731d0d422fd5f1d8e3e" [label=""];
}

