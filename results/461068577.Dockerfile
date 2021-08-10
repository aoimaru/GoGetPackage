[app/sources/461068577.Dockerfile]
digraph {
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" [label="docker-image://docker.io/library/fedora:24" shape="ellipse"];
  "sha256:6c71b2e16852522f0619a5ddfda16158ff28aca026c3022ea60a81ee3b56935e" [label="/bin/sh -c dnf -y upgrade" shape="box"];
  "sha256:a23a90f6894e20d8736e7948bbc30ac2ca855b2d87870405707928238274c0b7" [label="/bin/sh -c dnf install -y @development-tools fedora-packager" shape="box"];
  "sha256:36944f762a4336d96079f65dcdd7d0482486acfce223f015b89c9c12c887856c" [label="/bin/sh -c dnf install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:e0c4e7e308cc62de584dd359ad3000faed69aa5c96528564e3150f670b10e6f7" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:d5cbe79a14c23a3d7de9c315c3d83d1b1874a1b86e0b6103f73a54b7eba35ee6" [label="sha256:d5cbe79a14c23a3d7de9c315c3d83d1b1874a1b86e0b6103f73a54b7eba35ee6" shape="plaintext"];
  "sha256:6a6ffa4d142fd184fe4c48cf1a5afac23c8883d1c2a4968ef58cb244999fd7d2" -> "sha256:6c71b2e16852522f0619a5ddfda16158ff28aca026c3022ea60a81ee3b56935e" [label=""];
  "sha256:6c71b2e16852522f0619a5ddfda16158ff28aca026c3022ea60a81ee3b56935e" -> "sha256:a23a90f6894e20d8736e7948bbc30ac2ca855b2d87870405707928238274c0b7" [label=""];
  "sha256:a23a90f6894e20d8736e7948bbc30ac2ca855b2d87870405707928238274c0b7" -> "sha256:36944f762a4336d96079f65dcdd7d0482486acfce223f015b89c9c12c887856c" [label=""];
  "sha256:36944f762a4336d96079f65dcdd7d0482486acfce223f015b89c9c12c887856c" -> "sha256:e0c4e7e308cc62de584dd359ad3000faed69aa5c96528564e3150f670b10e6f7" [label=""];
  "sha256:e0c4e7e308cc62de584dd359ad3000faed69aa5c96528564e3150f670b10e6f7" -> "sha256:d5cbe79a14c23a3d7de9c315c3d83d1b1874a1b86e0b6103f73a54b7eba35ee6" [label=""];
}

