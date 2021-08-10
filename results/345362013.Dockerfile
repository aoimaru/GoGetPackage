[app/sources/345362013.Dockerfile]
digraph {
  "sha256:89693aa1ca6d4e72b72278cf1b851c1c74572883269cc7e6a8710002e61483f4" [label="docker-image://docker.io/balenalib/armv7hf-fedora:26-run" shape="ellipse"];
  "sha256:37983991c25f7ad55fdd3fb0a1156ac9c1f7cf8f0f0db78559d18878a0377c00" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:f83503053804a8e46a5b2d5dbd793113ce318c6fd04d8722ee696697b68833ca" [label="sha256:f83503053804a8e46a5b2d5dbd793113ce318c6fd04d8722ee696697b68833ca" shape="plaintext"];
  "sha256:89693aa1ca6d4e72b72278cf1b851c1c74572883269cc7e6a8710002e61483f4" -> "sha256:37983991c25f7ad55fdd3fb0a1156ac9c1f7cf8f0f0db78559d18878a0377c00" [label=""];
  "sha256:37983991c25f7ad55fdd3fb0a1156ac9c1f7cf8f0f0db78559d18878a0377c00" -> "sha256:f83503053804a8e46a5b2d5dbd793113ce318c6fd04d8722ee696697b68833ca" [label=""];
}

