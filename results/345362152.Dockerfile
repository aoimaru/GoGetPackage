[app/sources/345362152.Dockerfile]
digraph {
  "sha256:cea1421192b2e2c3d8f8acc9360a7c11d23afdc5b8b4a6d191d76e61a74765af" [label="docker-image://docker.io/balenalib/amd64-fedora:26-build" shape="ellipse"];
  "sha256:6af80bf614c6663f97a1771528a3b2aa7a24e4b30e0d6697c92797c391d955ea" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:9bc84b9d2c4f2fa27a7a48b980b1b458ed0f0a962329902468f2cea5d2532586" [label="sha256:9bc84b9d2c4f2fa27a7a48b980b1b458ed0f0a962329902468f2cea5d2532586" shape="plaintext"];
  "sha256:cea1421192b2e2c3d8f8acc9360a7c11d23afdc5b8b4a6d191d76e61a74765af" -> "sha256:6af80bf614c6663f97a1771528a3b2aa7a24e4b30e0d6697c92797c391d955ea" [label=""];
  "sha256:6af80bf614c6663f97a1771528a3b2aa7a24e4b30e0d6697c92797c391d955ea" -> "sha256:9bc84b9d2c4f2fa27a7a48b980b1b458ed0f0a962329902468f2cea5d2532586" [label=""];
}

