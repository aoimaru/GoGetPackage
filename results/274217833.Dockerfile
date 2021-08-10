[app/sources/274217833.Dockerfile]
digraph {
  "sha256:888c7f876e92451237081d2b3e2c88ec1e8eaf58b2b8f936daf3f0eb5ac6cd05" [label="docker-image://docker.io/library/mariadb:latest" shape="ellipse"];
  "sha256:d73b8d90b945b0717a2311f48d490c062113c91088de4ed3e8b2272c59f8f1ac" [label="local://context" shape="ellipse"];
  "sha256:c6beb5c6299c459f23301ec8fc38e25a8238462d172a1c5d11ff41f456c1cc4a" [label="copy{src=/setup.sql, dest=/docker-entrypoint-initdb.d/setup_0.sql}" shape="note"];
  "sha256:e6a95518737205a8f010952ddef1b006e7ea4f9b2367423f5917ae0df58c84ca" [label="/bin/sh -c sed -i \"s/max_connections.*/max_connections = 2048/g\" /etc/mysql/my.cnf" shape="box"];
  "sha256:cdf09a65ccab233dd51a8a511bac62cf1c1b9586a85f5b9a43d188424b3be62b" [label="sha256:cdf09a65ccab233dd51a8a511bac62cf1c1b9586a85f5b9a43d188424b3be62b" shape="plaintext"];
  "sha256:888c7f876e92451237081d2b3e2c88ec1e8eaf58b2b8f936daf3f0eb5ac6cd05" -> "sha256:c6beb5c6299c459f23301ec8fc38e25a8238462d172a1c5d11ff41f456c1cc4a" [label=""];
  "sha256:d73b8d90b945b0717a2311f48d490c062113c91088de4ed3e8b2272c59f8f1ac" -> "sha256:c6beb5c6299c459f23301ec8fc38e25a8238462d172a1c5d11ff41f456c1cc4a" [label=""];
  "sha256:c6beb5c6299c459f23301ec8fc38e25a8238462d172a1c5d11ff41f456c1cc4a" -> "sha256:e6a95518737205a8f010952ddef1b006e7ea4f9b2367423f5917ae0df58c84ca" [label=""];
  "sha256:e6a95518737205a8f010952ddef1b006e7ea4f9b2367423f5917ae0df58c84ca" -> "sha256:cdf09a65ccab233dd51a8a511bac62cf1c1b9586a85f5b9a43d188424b3be62b" [label=""];
}

