[app/sources/345356711.Dockerfile]
digraph {
  "sha256:1916f8be83571e14409f4860955ee67c74a04344903e72bcf16837883bd67e31" [label="docker-image://docker.io/balenalib/aarch64-fedora:29-build@sha256:2ec53239ec210eb6049c3045621f35bcfbc8b17f3b018066a5d01b06dce7ac8e" shape="ellipse"];
  "sha256:0b5f1a81d38e9ace79d9dd199e648ac7086e3a4184d0f4d3fcc4a4c2b7abf1b5" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:b7a6c00cd5a4a89e3d7bede61b0979e783203a6e7dccaf408b3ed91fd2a92d90" [label="sha256:b7a6c00cd5a4a89e3d7bede61b0979e783203a6e7dccaf408b3ed91fd2a92d90" shape="plaintext"];
  "sha256:1916f8be83571e14409f4860955ee67c74a04344903e72bcf16837883bd67e31" -> "sha256:0b5f1a81d38e9ace79d9dd199e648ac7086e3a4184d0f4d3fcc4a4c2b7abf1b5" [label=""];
  "sha256:0b5f1a81d38e9ace79d9dd199e648ac7086e3a4184d0f4d3fcc4a4c2b7abf1b5" -> "sha256:b7a6c00cd5a4a89e3d7bede61b0979e783203a6e7dccaf408b3ed91fd2a92d90" [label=""];
}

