[app/sources/345356247.Dockerfile]
digraph {
  "sha256:4b54eea9609d559b4631dd503718854bbfec09ae00c8e57fc81885cedbe29533" [label="docker-image://docker.io/balenalib/armv7hf-fedora:26-build" shape="ellipse"];
  "sha256:33584618ea1685a2a8414771e49950ac0c72d504bac4723216fdcdd641f18623" [label="/bin/sh -c dnf install -y \t\tless \t\tnano \t\tnet-tools \t\tusbutils \t\tgnupg \t\ti2c-tools \t&& dnf clean all" shape="box"];
  "sha256:3bc8414721643f26ae6206d2d757bdf6abc0a45b0dec45ba8b08b91cd8bf7db2" [label="sha256:3bc8414721643f26ae6206d2d757bdf6abc0a45b0dec45ba8b08b91cd8bf7db2" shape="plaintext"];
  "sha256:4b54eea9609d559b4631dd503718854bbfec09ae00c8e57fc81885cedbe29533" -> "sha256:33584618ea1685a2a8414771e49950ac0c72d504bac4723216fdcdd641f18623" [label=""];
  "sha256:33584618ea1685a2a8414771e49950ac0c72d504bac4723216fdcdd641f18623" -> "sha256:3bc8414721643f26ae6206d2d757bdf6abc0a45b0dec45ba8b08b91cd8bf7db2" [label=""];
}

