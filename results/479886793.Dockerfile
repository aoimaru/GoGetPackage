[app/sources/479886793.Dockerfile]
digraph {
  "sha256:40158ffa491d9346788b3c527e895c3a834f96ccf0e31dea482d521b159dd2a3" [label="docker-image://docker.io/library/mysql:5.6" shape="ellipse"];
  "sha256:f66463684675aaeaa56e16c5a5c382df7d0f6f755dca9c74efd9556ae141635f" [label="/bin/sh -c usermod -u 1000 mysql && chown mysql.mysql /var/run/mysqld/" shape="box"];
  "sha256:8782596aa83a40956c7b5fa1cac543b2c9ba2e6e6241d5ef9530db4d14f3233c" [label="sha256:8782596aa83a40956c7b5fa1cac543b2c9ba2e6e6241d5ef9530db4d14f3233c" shape="plaintext"];
  "sha256:40158ffa491d9346788b3c527e895c3a834f96ccf0e31dea482d521b159dd2a3" -> "sha256:f66463684675aaeaa56e16c5a5c382df7d0f6f755dca9c74efd9556ae141635f" [label=""];
  "sha256:f66463684675aaeaa56e16c5a5c382df7d0f6f755dca9c74efd9556ae141635f" -> "sha256:8782596aa83a40956c7b5fa1cac543b2c9ba2e6e6241d5ef9530db4d14f3233c" [label=""];
}

