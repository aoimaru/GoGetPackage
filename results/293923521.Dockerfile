[app/sources/293923521.Dockerfile]
digraph {
  "sha256:c09217ae8a3e3d1e37ceb607f7b6210dbfb126f17620ff5a85d058510397aaca" [label="docker-image://docker.io/ppc64le/fedora:24" shape="ellipse"];
  "sha256:057325f6c45062daf3910a488cbe271a239eaa4b7d9011cd87a97f62e0113ed5" [label="/bin/sh -c dnf -y upgrade" shape="box"];
  "sha256:96bb8da4e056415dd685d546f394ce1a63c6e721bfda9ed8783d2c0e77543e45" [label="/bin/sh -c dnf install -y @development-tools fedora-packager" shape="box"];
  "sha256:98175ba63465b857da160802f6b5927d7f78108221d4102de04256e170cea587" [label="/bin/sh -c dnf install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel systemd-devel tar git cmake" shape="box"];
  "sha256:b0ca3db77eefaa19467569bf2cb2965131bd9021c0b78655df992c949358ef51" [label="/bin/sh -c curl -fsSL \"https://golang.org/dl/go${GO_VERSION}.linux-ppc64le.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:bf6a0182a8e10ac2eb1d452167dbc0e00382bce423a42cdb33b6747c11c01782" [label="sha256:bf6a0182a8e10ac2eb1d452167dbc0e00382bce423a42cdb33b6747c11c01782" shape="plaintext"];
  "sha256:c09217ae8a3e3d1e37ceb607f7b6210dbfb126f17620ff5a85d058510397aaca" -> "sha256:057325f6c45062daf3910a488cbe271a239eaa4b7d9011cd87a97f62e0113ed5" [label=""];
  "sha256:057325f6c45062daf3910a488cbe271a239eaa4b7d9011cd87a97f62e0113ed5" -> "sha256:96bb8da4e056415dd685d546f394ce1a63c6e721bfda9ed8783d2c0e77543e45" [label=""];
  "sha256:96bb8da4e056415dd685d546f394ce1a63c6e721bfda9ed8783d2c0e77543e45" -> "sha256:98175ba63465b857da160802f6b5927d7f78108221d4102de04256e170cea587" [label=""];
  "sha256:98175ba63465b857da160802f6b5927d7f78108221d4102de04256e170cea587" -> "sha256:b0ca3db77eefaa19467569bf2cb2965131bd9021c0b78655df992c949358ef51" [label=""];
  "sha256:b0ca3db77eefaa19467569bf2cb2965131bd9021c0b78655df992c949358ef51" -> "sha256:bf6a0182a8e10ac2eb1d452167dbc0e00382bce423a42cdb33b6747c11c01782" [label=""];
}

