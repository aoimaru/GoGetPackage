[app/sources/241871496.Dockerfile]
digraph {
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" [label="docker-image://docker.io/library/fedora:24" shape="ellipse"];
  "sha256:6c71b2e16852522f0619a5ddfda16158ff28aca026c3022ea60a81ee3b56935e" [label="/bin/sh -c dnf -y upgrade" shape="box"];
  "sha256:a23a90f6894e20d8736e7948bbc30ac2ca855b2d87870405707928238274c0b7" [label="/bin/sh -c dnf install -y @development-tools fedora-packager" shape="box"];
  "sha256:70a66dabf6d403556618c810dc62a637fd9e6a8c0c9ed7f4f990d1ba6f985c7f" [label="/bin/sh -c dnf install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel sqlite-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:d24702158ec222adebd0b90b88970e8e5636524f000626fa6c707f6b1f290957" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:ea1c96fe3a7b63df81f135ad4ae082adbb88b96f5ed5d47b3ff14b574bd12822" [label="sha256:ea1c96fe3a7b63df81f135ad4ae082adbb88b96f5ed5d47b3ff14b574bd12822" shape="plaintext"];
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" -> "sha256:6c71b2e16852522f0619a5ddfda16158ff28aca026c3022ea60a81ee3b56935e" [label=""];
  "sha256:6c71b2e16852522f0619a5ddfda16158ff28aca026c3022ea60a81ee3b56935e" -> "sha256:a23a90f6894e20d8736e7948bbc30ac2ca855b2d87870405707928238274c0b7" [label=""];
  "sha256:a23a90f6894e20d8736e7948bbc30ac2ca855b2d87870405707928238274c0b7" -> "sha256:70a66dabf6d403556618c810dc62a637fd9e6a8c0c9ed7f4f990d1ba6f985c7f" [label=""];
  "sha256:70a66dabf6d403556618c810dc62a637fd9e6a8c0c9ed7f4f990d1ba6f985c7f" -> "sha256:d24702158ec222adebd0b90b88970e8e5636524f000626fa6c707f6b1f290957" [label=""];
  "sha256:d24702158ec222adebd0b90b88970e8e5636524f000626fa6c707f6b1f290957" -> "sha256:ea1c96fe3a7b63df81f135ad4ae082adbb88b96f5ed5d47b3ff14b574bd12822" [label=""];
}

