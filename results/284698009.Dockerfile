[app/sources/284698009.Dockerfile]
digraph {
  "sha256:5c2ecddf61311cce862ca55ea822e98b4410c268b0af722d4ee8968fa233bf7e" [label="docker-image://docker.io/ansible/ubuntu-ssh:latest" shape="ellipse"];
  "sha256:0e18a8044271a345b4345c3efe434504b5a3d294c17917d8b90d63a43bf136de" [label="/bin/sh -c echo \"TrustedUserCAKeys /etc/ssh/ca-user-certificate-key.pub\" >> /etc/ssh/sshd_config" shape="box"];
  "sha256:88e17fd0c6b574e4a48ede34c79369d8e5d1287d5aa9d2cdc2603800109e91ab" [label="local://context" shape="ellipse"];
  "sha256:59b12ba8b8b169c4ad5e994721d677f63e361b6550e0edf2f1b121fbc87c5d2b" [label="copy{src=/config/certificate_authority/keys/ca-user-certificate-key.pub, dest=/etc/ssh/ca-user-certificate-key.pub}" shape="note"];
  "sha256:79986aba95714dc6c7a4bbd67c610ac26ca2498dc84661e0cf6b85f41f9f39c7" [label="/bin/sh -c sed -i '$ a LANG=\"en_US.UTF-8\"' /etc/profile" shape="box"];
  "sha256:0c66840f52dd74e0719ee9e2e4203a284a28edb8b9387a28143c84440407e0c7" [label="sha256:0c66840f52dd74e0719ee9e2e4203a284a28edb8b9387a28143c84440407e0c7" shape="plaintext"];
  "sha256:5c2ecddf61311cce862ca55ea822e98b4410c268b0af722d4ee8968fa233bf7e" -> "sha256:0e18a8044271a345b4345c3efe434504b5a3d294c17917d8b90d63a43bf136de" [label=""];
  "sha256:0e18a8044271a345b4345c3efe434504b5a3d294c17917d8b90d63a43bf136de" -> "sha256:59b12ba8b8b169c4ad5e994721d677f63e361b6550e0edf2f1b121fbc87c5d2b" [label=""];
  "sha256:88e17fd0c6b574e4a48ede34c79369d8e5d1287d5aa9d2cdc2603800109e91ab" -> "sha256:59b12ba8b8b169c4ad5e994721d677f63e361b6550e0edf2f1b121fbc87c5d2b" [label=""];
  "sha256:59b12ba8b8b169c4ad5e994721d677f63e361b6550e0edf2f1b121fbc87c5d2b" -> "sha256:79986aba95714dc6c7a4bbd67c610ac26ca2498dc84661e0cf6b85f41f9f39c7" [label=""];
  "sha256:79986aba95714dc6c7a4bbd67c610ac26ca2498dc84661e0cf6b85f41f9f39c7" -> "sha256:0c66840f52dd74e0719ee9e2e4203a284a28edb8b9387a28143c84440407e0c7" [label=""];
}

