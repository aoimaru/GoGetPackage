[app/sources/345356331.Dockerfile]
digraph {
  "sha256:2673d403c863ba5dfe63f5dc2cd1c09b35d2e405ebe8f7ce1743a67f18414dc8" [label="docker-image://docker.io/balenalib/aarch64-ubuntu:cosmic-build" shape="ellipse"];
  "sha256:30a3e64c8e6645e2712a818d5dd2609c39b018f66b88b6ba546ca6e496a3d7e2" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2742f6f81212dcef9d6c2ac7f37bbec51d222e6a89f3baccec0153c4db29dcb5" [label="sha256:2742f6f81212dcef9d6c2ac7f37bbec51d222e6a89f3baccec0153c4db29dcb5" shape="plaintext"];
  "sha256:2673d403c863ba5dfe63f5dc2cd1c09b35d2e405ebe8f7ce1743a67f18414dc8" -> "sha256:30a3e64c8e6645e2712a818d5dd2609c39b018f66b88b6ba546ca6e496a3d7e2" [label=""];
  "sha256:30a3e64c8e6645e2712a818d5dd2609c39b018f66b88b6ba546ca6e496a3d7e2" -> "sha256:2742f6f81212dcef9d6c2ac7f37bbec51d222e6a89f3baccec0153c4db29dcb5" [label=""];
}

