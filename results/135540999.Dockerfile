[app/sources/135540999.Dockerfile]
digraph {
  "sha256:53b53206d3e7931369c8c8da5b6085fdc3ba54d09460251bb7e9497639be7bd9" [label="local://context" shape="ellipse"];
  "sha256:1b228f025a58a99338b15101c7209cb825d6f56bd9d0722c12b59d6e0194dd1f" [label="docker-image://docker.io/library/registry:latest" shape="ellipse"];
  "sha256:d1348ed2aefa5354309e4f133330cd496ac04db7a755df76ea07d5b5e1911109" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6f28ef5de202a2e590fcc60b6bafc4d67040ab5baac794502e1b63ad64b51127" [label="/bin/sh -c apt-get -y upgrade" shape="box"];
  "sha256:a279dc2fa7fcfde8d489a7d63452b85d1dd2e5651ce2def89f74d219f0c5de60" [label="/bin/sh -c apt-get install -y apache2-utils supervisor python-setuptools nginx redis-server libssl-dev wget curl" shape="box"];
  "sha256:0ed33be525f27b5160f0709077de32eca391b47bb127987ac09abdcaa3371f11" [label="/bin/sh -c rm /etc/rc*.d/*nginx" shape="box"];
  "sha256:43f1556dd98c3d739c253cf6023a5be268b77a7c39424075cdb3b6709e7dca92" [label="/bin/sh -c wget --no-check-certificate https://github.com/kelseyhightower/confd/releases/download/v0.3.0/confd_0.3.0_linux_amd64.tar.gz -O confd_0.3.0_linux_amd64.tar.gz 2>/dev/null" shape="box"];
  "sha256:d475ff7377604722a0538021920f1b45ee45c68590ad18c6fceaf9bd47f61b87" [label="/bin/sh -c tar -zxf confd_0.3.0_linux_amd64.tar.gz" shape="box"];
  "sha256:dc66af63f78f603779e7b65ee81308a5dc218eb2b045a0f3cd83bab441e211c9" [label="/bin/sh -c mv confd /usr/local/bin/confd" shape="box"];
  "sha256:e7414bec973cc663d6cf9f3af185be9bd3d2f8b52a8deb0517a0f1be7f01f464" [label="copy{src=/registry.users.tmpl, dest=/etc/confd/templates/}" shape="note"];
  "sha256:e47cabcbdd14229ccd4bb279fc837525884276cc6435a7d99603ef0cc705fc1a" [label="copy{src=/registry.users.toml, dest=/etc/confd/conf.d/}" shape="note"];
  "sha256:f31e38e0aedba59883a1e593acf34fba2ceea14bb1ba57602d1a9b0f1408af56" [label="copy{src=/run.sh, dest=/usr/local/bin/run}" shape="note"];
  "sha256:58ab0a2f352819d5d19413417b2ee02eaf2f2f0ad0cf1326e73c5ac77dfc372a" [label="sha256:58ab0a2f352819d5d19413417b2ee02eaf2f2f0ad0cf1326e73c5ac77dfc372a" shape="plaintext"];
  "sha256:1b228f025a58a99338b15101c7209cb825d6f56bd9d0722c12b59d6e0194dd1f" -> "sha256:d1348ed2aefa5354309e4f133330cd496ac04db7a755df76ea07d5b5e1911109" [label=""];
  "sha256:d1348ed2aefa5354309e4f133330cd496ac04db7a755df76ea07d5b5e1911109" -> "sha256:6f28ef5de202a2e590fcc60b6bafc4d67040ab5baac794502e1b63ad64b51127" [label=""];
  "sha256:6f28ef5de202a2e590fcc60b6bafc4d67040ab5baac794502e1b63ad64b51127" -> "sha256:a279dc2fa7fcfde8d489a7d63452b85d1dd2e5651ce2def89f74d219f0c5de60" [label=""];
  "sha256:a279dc2fa7fcfde8d489a7d63452b85d1dd2e5651ce2def89f74d219f0c5de60" -> "sha256:0ed33be525f27b5160f0709077de32eca391b47bb127987ac09abdcaa3371f11" [label=""];
  "sha256:0ed33be525f27b5160f0709077de32eca391b47bb127987ac09abdcaa3371f11" -> "sha256:43f1556dd98c3d739c253cf6023a5be268b77a7c39424075cdb3b6709e7dca92" [label=""];
  "sha256:43f1556dd98c3d739c253cf6023a5be268b77a7c39424075cdb3b6709e7dca92" -> "sha256:d475ff7377604722a0538021920f1b45ee45c68590ad18c6fceaf9bd47f61b87" [label=""];
  "sha256:d475ff7377604722a0538021920f1b45ee45c68590ad18c6fceaf9bd47f61b87" -> "sha256:dc66af63f78f603779e7b65ee81308a5dc218eb2b045a0f3cd83bab441e211c9" [label=""];
  "sha256:dc66af63f78f603779e7b65ee81308a5dc218eb2b045a0f3cd83bab441e211c9" -> "sha256:e7414bec973cc663d6cf9f3af185be9bd3d2f8b52a8deb0517a0f1be7f01f464" [label=""];
  "sha256:53b53206d3e7931369c8c8da5b6085fdc3ba54d09460251bb7e9497639be7bd9" -> "sha256:e7414bec973cc663d6cf9f3af185be9bd3d2f8b52a8deb0517a0f1be7f01f464" [label=""];
  "sha256:e7414bec973cc663d6cf9f3af185be9bd3d2f8b52a8deb0517a0f1be7f01f464" -> "sha256:e47cabcbdd14229ccd4bb279fc837525884276cc6435a7d99603ef0cc705fc1a" [label=""];
  "sha256:53b53206d3e7931369c8c8da5b6085fdc3ba54d09460251bb7e9497639be7bd9" -> "sha256:e47cabcbdd14229ccd4bb279fc837525884276cc6435a7d99603ef0cc705fc1a" [label=""];
  "sha256:e47cabcbdd14229ccd4bb279fc837525884276cc6435a7d99603ef0cc705fc1a" -> "sha256:f31e38e0aedba59883a1e593acf34fba2ceea14bb1ba57602d1a9b0f1408af56" [label=""];
  "sha256:53b53206d3e7931369c8c8da5b6085fdc3ba54d09460251bb7e9497639be7bd9" -> "sha256:f31e38e0aedba59883a1e593acf34fba2ceea14bb1ba57602d1a9b0f1408af56" [label=""];
  "sha256:f31e38e0aedba59883a1e593acf34fba2ceea14bb1ba57602d1a9b0f1408af56" -> "sha256:58ab0a2f352819d5d19413417b2ee02eaf2f2f0ad0cf1326e73c5ac77dfc372a" [label=""];
}

