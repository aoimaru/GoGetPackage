[app/sources/345356822.Dockerfile]
digraph {
  "sha256:e44b53c1c8b839d29a5e35d8eca02c1ee955a2fa3c2e01e4a4e0341b45bfb04c" [label="docker-image://docker.io/balenalib/aarch64-fedora:29-run" shape="ellipse"];
  "sha256:87d4701bf013f8a160d8380841cc74da34f7593790169a6f2e716dfaa3d68619" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:f49e7a513be5210ba37ffca1de131e177dd147123a084ab86adb68bef783bd50" [label="sha256:f49e7a513be5210ba37ffca1de131e177dd147123a084ab86adb68bef783bd50" shape="plaintext"];
  "sha256:e44b53c1c8b839d29a5e35d8eca02c1ee955a2fa3c2e01e4a4e0341b45bfb04c" -> "sha256:87d4701bf013f8a160d8380841cc74da34f7593790169a6f2e716dfaa3d68619" [label=""];
  "sha256:87d4701bf013f8a160d8380841cc74da34f7593790169a6f2e716dfaa3d68619" -> "sha256:f49e7a513be5210ba37ffca1de131e177dd147123a084ab86adb68bef783bd50" [label=""];
}

