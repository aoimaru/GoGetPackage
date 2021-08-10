[app/sources/169509267.Dockerfile]
digraph {
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" [label="docker-image://docker.io/tutum/nginx:latest" shape="ellipse"];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:ac21d8c8b1abdf294228deca91415edd4a60271d5e1694bb71cb72e767735fdb" [label="local://context" shape="ellipse"];
  "sha256:849d70772b05963de020eddcdcfcfd589d70a437d0b098b3640952b61cdf7023" [label="copy{src=/sites-enabled, dest=/etc/nginx/sites-enabled}" shape="note"];
  "sha256:4928f1ac7d2d455532ff1cea261db69b0f910c963e482ddc4386d27ae4d8e95a" [label="sha256:4928f1ac7d2d455532ff1cea261db69b0f910c963e482ddc4386d27ae4d8e95a" shape="plaintext"];
  "sha256:16a5e0ddb5074fb64c2955f4c2c52818a4ace91f5bfe0db82508bce6186610cb" -> "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" [label=""];
  "sha256:f653126b955b965914cb54e4bcf303fda31ea295e60ead3fb67756fee998017b" -> "sha256:849d70772b05963de020eddcdcfcfd589d70a437d0b098b3640952b61cdf7023" [label=""];
  "sha256:ac21d8c8b1abdf294228deca91415edd4a60271d5e1694bb71cb72e767735fdb" -> "sha256:849d70772b05963de020eddcdcfcfd589d70a437d0b098b3640952b61cdf7023" [label=""];
  "sha256:849d70772b05963de020eddcdcfcfd589d70a437d0b098b3640952b61cdf7023" -> "sha256:4928f1ac7d2d455532ff1cea261db69b0f910c963e482ddc4386d27ae4d8e95a" [label=""];
}

