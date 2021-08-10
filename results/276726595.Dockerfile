[app/sources/276726595.Dockerfile]
digraph {
  "sha256:def0dd4daca515510159d8f6f915c4a46c7e0ab81577eb7cbd559630e9f4fb5a" [label="docker-image://docker.io/library/ubuntu:zesty" shape="ellipse"];
  "sha256:b8c4ff4462627dc99b59a49909c1649859ed5819532802280d85a80c5ccb69fe" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libseccomp-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0d39707106af2165f9d04e39cd574fbb2538df86f32a4d5a7bf5c37299d15a69" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:c1be5f145d58d11aed3d2f63745e491e5e8007df5c26a81de5bf4b3960f5dc31" [label="sha256:c1be5f145d58d11aed3d2f63745e491e5e8007df5c26a81de5bf4b3960f5dc31" shape="plaintext"];
  "sha256:def0dd4daca515510159d8f6f915c4a46c7e0ab81577eb7cbd559630e9f4fb5a" -> "sha256:b8c4ff4462627dc99b59a49909c1649859ed5819532802280d85a80c5ccb69fe" [label=""];
  "sha256:b8c4ff4462627dc99b59a49909c1649859ed5819532802280d85a80c5ccb69fe" -> "sha256:0d39707106af2165f9d04e39cd574fbb2538df86f32a4d5a7bf5c37299d15a69" [label=""];
  "sha256:0d39707106af2165f9d04e39cd574fbb2538df86f32a4d5a7bf5c37299d15a69" -> "sha256:c1be5f145d58d11aed3d2f63745e491e5e8007df5c26a81de5bf4b3960f5dc31" [label=""];
}

