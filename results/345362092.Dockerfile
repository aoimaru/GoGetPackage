[app/sources/345362092.Dockerfile]
digraph {
  "sha256:0a0aa09325a0ef949b0ac324e825055a7a358fff839bc92f0baa684170861860" [label="docker-image://docker.io/balenalib/aarch64-ubuntu:artful-build" shape="ellipse"];
  "sha256:3d32aa2419af809ee986616f5751b5046c29f7b9f70b0d891b85b6d878534600" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:95a62889342037d5ecc670a5ae61f016a07a9a27c071bdcbfcf5f1bbac266a17" [label="sha256:95a62889342037d5ecc670a5ae61f016a07a9a27c071bdcbfcf5f1bbac266a17" shape="plaintext"];
  "sha256:0a0aa09325a0ef949b0ac324e825055a7a358fff839bc92f0baa684170861860" -> "sha256:3d32aa2419af809ee986616f5751b5046c29f7b9f70b0d891b85b6d878534600" [label=""];
  "sha256:3d32aa2419af809ee986616f5751b5046c29f7b9f70b0d891b85b6d878534600" -> "sha256:95a62889342037d5ecc670a5ae61f016a07a9a27c071bdcbfcf5f1bbac266a17" [label=""];
}

