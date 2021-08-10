[app/sources/386556707.Dockerfile]
digraph {
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" [label="docker-image://docker.io/library/fedora:25" shape="ellipse"];
  "sha256:22c2023cfc7e159aeb6ee5286ed90aa84b64bf2bbaa057e3a6d39bc6f57700fa" [label="/bin/sh -c dnf -y upgrade" shape="box"];
  "sha256:28166d11b21b4a12bbb8652068df2ad997383b2e7707d1a3cd8c44a6eb9f1b0a" [label="/bin/sh -c dnf install -y @development-tools fedora-packager" shape="box"];
  "sha256:4f3d5829a52317f8939a25d93b538ffda023b8dc1c77dc0e012986db96f6880e" [label="/bin/sh -c dnf install -y btrfs-progs-devel device-mapper-devel glibc-static libseccomp-devel libselinux-devel pkgconfig selinux-policy selinux-policy-devel systemd-devel tar git cmake vim-common" shape="box"];
  "sha256:5b07ff75b4f1ee2266f6ff574172d82829fc04366c263fae86bd3a7162eb83b5" [label="/bin/sh -c curl -fSL \"https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz\" | tar xzC /usr/local" shape="box"];
  "sha256:f97edc2d693b01c515f9a8a4eb48f4fbcb77e9eaf73e1baccfd930b5848033f1" [label="sha256:f97edc2d693b01c515f9a8a4eb48f4fbcb77e9eaf73e1baccfd930b5848033f1" shape="plaintext"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" -> "sha256:22c2023cfc7e159aeb6ee5286ed90aa84b64bf2bbaa057e3a6d39bc6f57700fa" [label=""];
  "sha256:22c2023cfc7e159aeb6ee5286ed90aa84b64bf2bbaa057e3a6d39bc6f57700fa" -> "sha256:28166d11b21b4a12bbb8652068df2ad997383b2e7707d1a3cd8c44a6eb9f1b0a" [label=""];
  "sha256:28166d11b21b4a12bbb8652068df2ad997383b2e7707d1a3cd8c44a6eb9f1b0a" -> "sha256:4f3d5829a52317f8939a25d93b538ffda023b8dc1c77dc0e012986db96f6880e" [label=""];
  "sha256:4f3d5829a52317f8939a25d93b538ffda023b8dc1c77dc0e012986db96f6880e" -> "sha256:5b07ff75b4f1ee2266f6ff574172d82829fc04366c263fae86bd3a7162eb83b5" [label=""];
  "sha256:5b07ff75b4f1ee2266f6ff574172d82829fc04366c263fae86bd3a7162eb83b5" -> "sha256:f97edc2d693b01c515f9a8a4eb48f4fbcb77e9eaf73e1baccfd930b5848033f1" [label=""];
}

