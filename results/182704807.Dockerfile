[app/sources/182704807.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" [label="/bin/sh -c yum -y install /usr/bin/ps nfs-utils && yum clean all" shape="box"];
  "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" [label="/bin/sh -c mkdir -p /exports" shape="box"];
  "sha256:aeb86a4e77a90906de9b2ce0868d0fa8e55945c115c8e8aa8d4e7f150d3c597f" [label="local://context" shape="ellipse"];
  "sha256:c81af7d2f55fb451185a8fef7612c0aba2b54e82373621dc216e37a7d24a7115" [label="copy{src=/run_nfs.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:b56d4b7d7a703fbf7d851b86a2b034ce02b00b50072c5c8a2b89e90de4d9786b" [label="copy{src=/index.html, dest=/tmp/index.html}" shape="note"];
  "sha256:fef758d07b2475f8d256d9867bda77742baaac638abd9adea3debae439d8f2e1" [label="/bin/sh -c chmod 644 /tmp/index.html" shape="box"];
  "sha256:3d3489230b76ae2706a90ecd0cc0fab1be2613fda6659abaab6cc11beae2b3fe" [label="sha256:3d3489230b76ae2706a90ecd0cc0fab1be2613fda6659abaab6cc11beae2b3fe" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" [label=""];
  "sha256:cd36076d87a65194d6216935bc29585b4949a91b69f7c92a8f4a4349148d29e8" -> "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" [label=""];
  "sha256:73e4b14be90ce29f56dc25be90d31acbc94a197a9b09a9454db1abc631a6cce4" -> "sha256:c81af7d2f55fb451185a8fef7612c0aba2b54e82373621dc216e37a7d24a7115" [label=""];
  "sha256:aeb86a4e77a90906de9b2ce0868d0fa8e55945c115c8e8aa8d4e7f150d3c597f" -> "sha256:c81af7d2f55fb451185a8fef7612c0aba2b54e82373621dc216e37a7d24a7115" [label=""];
  "sha256:c81af7d2f55fb451185a8fef7612c0aba2b54e82373621dc216e37a7d24a7115" -> "sha256:b56d4b7d7a703fbf7d851b86a2b034ce02b00b50072c5c8a2b89e90de4d9786b" [label=""];
  "sha256:aeb86a4e77a90906de9b2ce0868d0fa8e55945c115c8e8aa8d4e7f150d3c597f" -> "sha256:b56d4b7d7a703fbf7d851b86a2b034ce02b00b50072c5c8a2b89e90de4d9786b" [label=""];
  "sha256:b56d4b7d7a703fbf7d851b86a2b034ce02b00b50072c5c8a2b89e90de4d9786b" -> "sha256:fef758d07b2475f8d256d9867bda77742baaac638abd9adea3debae439d8f2e1" [label=""];
  "sha256:fef758d07b2475f8d256d9867bda77742baaac638abd9adea3debae439d8f2e1" -> "sha256:3d3489230b76ae2706a90ecd0cc0fab1be2613fda6659abaab6cc11beae2b3fe" [label=""];
}

