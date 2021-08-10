[app/sources/295096523.Dockerfile]
digraph {
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" [label="docker-image://docker.io/library/php:7.0-apache" shape="ellipse"];
  "sha256:ccc9bde659c1e4c8d0be417f89bf66f76e146a366eb56b6fa980d47f47ac348e" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:9a46333b9d0dcf11ef8abf89a17767eae4f7f69601dd70d43c9e0ddbd86fc96d" [label="/bin/sh -c a2enmod headers" shape="box"];
  "sha256:cdbecba3fd74ec7365ee9ebe18583ad5e81774017e5d52f2a551f5bb5932820a" [label="sha256:cdbecba3fd74ec7365ee9ebe18583ad5e81774017e5d52f2a551f5bb5932820a" shape="plaintext"];
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" -> "sha256:ccc9bde659c1e4c8d0be417f89bf66f76e146a366eb56b6fa980d47f47ac348e" [label=""];
  "sha256:ccc9bde659c1e4c8d0be417f89bf66f76e146a366eb56b6fa980d47f47ac348e" -> "sha256:9a46333b9d0dcf11ef8abf89a17767eae4f7f69601dd70d43c9e0ddbd86fc96d" [label=""];
  "sha256:9a46333b9d0dcf11ef8abf89a17767eae4f7f69601dd70d43c9e0ddbd86fc96d" -> "sha256:cdbecba3fd74ec7365ee9ebe18583ad5e81774017e5d52f2a551f5bb5932820a" [label=""];
}

