[app/sources/285226363.Dockerfile]
digraph {
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:171531ea0f30505c8bf2da7303d8a9f2a09ea63ffa20c36b8df3d7e2c8edc65b" [label="local://context" shape="ellipse"];
  "sha256:ee341f2b2c8537fb5192e55853d3bdbd7fd4070cf33101ca7c8221b8cec124ce" [label="copy{src=/test-database.sql, dest=/etc/mysql/test-database.sql}" shape="note"];
  "sha256:6d59a973c220808cc2c2211e4f7a8c8271d1c54976f0daa12d39ea2188b5342a" [label="/bin/sh -c sed -i 's/MYSQL_DATABASE/'\"$MYSQL_DATABASE\"'/g' /etc/mysql/test-database.sql" shape="box"];
  "sha256:34b3c3bbde965546ce52d8d53c313c40164ce2c9dfaa1a261eff1359a6543e46" [label="/bin/sh -c sed -i 's/MYSQL_USER/'\"$MYSQL_USER\"'/g' /etc/mysql/test-database.sql" shape="box"];
  "sha256:c5b9bf12c1477c772b784994a99947f7664726923a99f9f92125c58381c48d64" [label="/bin/sh -c cp /etc/mysql/test-database.sql /docker-entrypoint-initdb.d/" shape="box"];
  "sha256:88c2fa2bf82b9223551fb513659edd8c3fdfad7d6044925108b0a0182b1722d2" [label="sha256:88c2fa2bf82b9223551fb513659edd8c3fdfad7d6044925108b0a0182b1722d2" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:ee341f2b2c8537fb5192e55853d3bdbd7fd4070cf33101ca7c8221b8cec124ce" [label=""];
  "sha256:171531ea0f30505c8bf2da7303d8a9f2a09ea63ffa20c36b8df3d7e2c8edc65b" -> "sha256:ee341f2b2c8537fb5192e55853d3bdbd7fd4070cf33101ca7c8221b8cec124ce" [label=""];
  "sha256:ee341f2b2c8537fb5192e55853d3bdbd7fd4070cf33101ca7c8221b8cec124ce" -> "sha256:6d59a973c220808cc2c2211e4f7a8c8271d1c54976f0daa12d39ea2188b5342a" [label=""];
  "sha256:6d59a973c220808cc2c2211e4f7a8c8271d1c54976f0daa12d39ea2188b5342a" -> "sha256:34b3c3bbde965546ce52d8d53c313c40164ce2c9dfaa1a261eff1359a6543e46" [label=""];
  "sha256:34b3c3bbde965546ce52d8d53c313c40164ce2c9dfaa1a261eff1359a6543e46" -> "sha256:c5b9bf12c1477c772b784994a99947f7664726923a99f9f92125c58381c48d64" [label=""];
  "sha256:c5b9bf12c1477c772b784994a99947f7664726923a99f9f92125c58381c48d64" -> "sha256:88c2fa2bf82b9223551fb513659edd8c3fdfad7d6044925108b0a0182b1722d2" [label=""];
}

