[app/sources/341640339.Dockerfile]
digraph {
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" [label="docker-image://docker.io/library/fedora:25" shape="ellipse"];
  "sha256:22c2023cfc7e159aeb6ee5286ed90aa84b64bf2bbaa057e3a6d39bc6f57700fa" [label="/bin/sh -c dnf -y upgrade" shape="box"];
  "sha256:28166d11b21b4a12bbb8652068df2ad997383b2e7707d1a3cd8c44a6eb9f1b0a" [label="/bin/sh -c dnf install -y @development-tools fedora-packager" shape="box"];
  "sha256:5c21da46641f8c04a9543b7d94529874862854e44829468292699a107fbf26a9" [label="/bin/sh -c dnf install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel libtool-ltdl-devel pkgconfig selinux-policy selinux-policy-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:0ea68328723785c77f42d7636fcc643a09cdc430f65c7beb13a6ad7ffaa8ec3a" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:b148f329ad98df42533023330c47b57a335dabe4d5ed8798f737880b6ad5d7e9" [label="sha256:b148f329ad98df42533023330c47b57a335dabe4d5ed8798f737880b6ad5d7e9" shape="plaintext"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" -> "sha256:22c2023cfc7e159aeb6ee5286ed90aa84b64bf2bbaa057e3a6d39bc6f57700fa" [label=""];
  "sha256:22c2023cfc7e159aeb6ee5286ed90aa84b64bf2bbaa057e3a6d39bc6f57700fa" -> "sha256:28166d11b21b4a12bbb8652068df2ad997383b2e7707d1a3cd8c44a6eb9f1b0a" [label=""];
  "sha256:28166d11b21b4a12bbb8652068df2ad997383b2e7707d1a3cd8c44a6eb9f1b0a" -> "sha256:5c21da46641f8c04a9543b7d94529874862854e44829468292699a107fbf26a9" [label=""];
  "sha256:5c21da46641f8c04a9543b7d94529874862854e44829468292699a107fbf26a9" -> "sha256:0ea68328723785c77f42d7636fcc643a09cdc430f65c7beb13a6ad7ffaa8ec3a" [label=""];
  "sha256:0ea68328723785c77f42d7636fcc643a09cdc430f65c7beb13a6ad7ffaa8ec3a" -> "sha256:b148f329ad98df42533023330c47b57a335dabe4d5ed8798f737880b6ad5d7e9" [label=""];
}

