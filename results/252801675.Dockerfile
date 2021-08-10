[app/sources/252801675.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:d7dcd0d235d0e19f52da9ad135e440b6e756f708ba502b894fab6c6cd9fbddc7" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:419197111d63a21e01487760364cf9f88fd1705e8f872da4812fb03528fdf680" [label="/bin/sh -c yum install -y bind-license bind bind-utils" shape="box"];
  "sha256:03acba8d27560a8ae1c26e30156ed13cf2ff465ee8f0e9ca19bb84bf0bb73f16" [label="sha256:03acba8d27560a8ae1c26e30156ed13cf2ff465ee8f0e9ca19bb84bf0bb73f16" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:d7dcd0d235d0e19f52da9ad135e440b6e756f708ba502b894fab6c6cd9fbddc7" [label=""];
  "sha256:d7dcd0d235d0e19f52da9ad135e440b6e756f708ba502b894fab6c6cd9fbddc7" -> "sha256:419197111d63a21e01487760364cf9f88fd1705e8f872da4812fb03528fdf680" [label=""];
  "sha256:419197111d63a21e01487760364cf9f88fd1705e8f872da4812fb03528fdf680" -> "sha256:03acba8d27560a8ae1c26e30156ed13cf2ff465ee8f0e9ca19bb84bf0bb73f16" [label=""];
}

