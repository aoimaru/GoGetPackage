[app/sources/291180996.Dockerfile]
digraph {
  "sha256:e481548796cac3d0fc9e67bb281d4f4487a2a8266441f537640bdd4d91e26cbf" [label="docker-image://docker.io/library/mariadb:5.5.62-trusty" shape="ellipse"];
  "sha256:404d96793fe0384f1922e3d4e0792d8fd01090edd329259396258baad4b3ef33" [label="/bin/sh -c echo '\\n[mysqld]\\ncollation-server = utf8_unicode_ci\\ninit-connect=\"SET NAMES utf8\"\\ncharacter-set-server = utf8\\ninnodb_flush_log_at_trx_commit=2\\nsync_binlog=0\\ninnodb_use_native_aio=0\\n' >> /etc/mysql/my.cnf" shape="box"];
  "sha256:4907ee71a9c57267c4d1ba36fb5839462fb1784e3d0535264c7538981a17a830" [label="sha256:4907ee71a9c57267c4d1ba36fb5839462fb1784e3d0535264c7538981a17a830" shape="plaintext"];
  "sha256:e481548796cac3d0fc9e67bb281d4f4487a2a8266441f537640bdd4d91e26cbf" -> "sha256:404d96793fe0384f1922e3d4e0792d8fd01090edd329259396258baad4b3ef33" [label=""];
  "sha256:404d96793fe0384f1922e3d4e0792d8fd01090edd329259396258baad4b3ef33" -> "sha256:4907ee71a9c57267c4d1ba36fb5839462fb1784e3d0535264c7538981a17a830" [label=""];
}

