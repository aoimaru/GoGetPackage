[app/sources/307918975.Dockerfile]
digraph {
  "sha256:2884d952291c560aff5d5d5cf7b631cddbdfab83609ae7f7d27735bc2cd2cfb3" [label="docker-image://docker.io/armhf/ubuntu:trusty" shape="ellipse"];
  "sha256:5e76dfbc018ea460669d74e3b5aa3b9d28bd1194208cf19158cc1a3805839737" [label="/bin/sh -c apt-get update && apt-get install -y apparmor bash-completion btrfs-tools build-essential cmake curl ca-certificates debhelper dh-apparmor dh-systemd git libapparmor-dev libdevmapper-dev libltdl-dev  pkg-config vim-common libsystemd-journal-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8ef61b90bee47104f0f92b4bf0f80f0ffa7d093171c7d8f33a5036c9ae10f941" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-armv6l.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:b7d06423783f538a651317b4818cc40ddce864f83ebb912c5aa5c80c67a3a8e2" [label="sha256:b7d06423783f538a651317b4818cc40ddce864f83ebb912c5aa5c80c67a3a8e2" shape="plaintext"];
  "sha256:2884d952291c560aff5d5d5cf7b631cddbdfab83609ae7f7d27735bc2cd2cfb3" -> "sha256:5e76dfbc018ea460669d74e3b5aa3b9d28bd1194208cf19158cc1a3805839737" [label=""];
  "sha256:5e76dfbc018ea460669d74e3b5aa3b9d28bd1194208cf19158cc1a3805839737" -> "sha256:8ef61b90bee47104f0f92b4bf0f80f0ffa7d093171c7d8f33a5036c9ae10f941" [label=""];
  "sha256:8ef61b90bee47104f0f92b4bf0f80f0ffa7d093171c7d8f33a5036c9ae10f941" -> "sha256:b7d06423783f538a651317b4818cc40ddce864f83ebb912c5aa5c80c67a3a8e2" [label=""];
}

