[app/sources/273087331.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:ce6268387175fc8f999ca80f50de038b460ca8268195ff7dfcb8004488fa8861" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev libseccomp-dev libsqlite3-dev pkg-config vim-common libsystemd-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:992ba139f15fa2b175f77412e92cdf38209772dd7eb1526fdf9d5fde95c19b71" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:6571749de381f9f023269f6d38873e8db74cd098761e1327441dbb3d989a91de" [label="sha256:6571749de381f9f023269f6d38873e8db74cd098761e1327441dbb3d989a91de" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:ce6268387175fc8f999ca80f50de038b460ca8268195ff7dfcb8004488fa8861" [label=""];
  "sha256:ce6268387175fc8f999ca80f50de038b460ca8268195ff7dfcb8004488fa8861" -> "sha256:992ba139f15fa2b175f77412e92cdf38209772dd7eb1526fdf9d5fde95c19b71" [label=""];
  "sha256:992ba139f15fa2b175f77412e92cdf38209772dd7eb1526fdf9d5fde95c19b71" -> "sha256:6571749de381f9f023269f6d38873e8db74cd098761e1327441dbb3d989a91de" [label=""];
}

