[app/sources/291180920.Dockerfile]
digraph {
  "sha256:8c1935286a64a0b4b38a52fa34165b11e6044db8065b4b01bd760b4f90fb8139" [label="docker-image://docker.io/library/mariadb:10.2.16" shape="ellipse"];
  "sha256:806087604fc8cfa79541f8c0ed79a22fab1cb537e2a67cb0a469bd22541bc2d8" [label="/bin/sh -c echo '\\n[mysqld]\\ncollation-server = utf8_unicode_ci\\ninit-connect=\"SET NAMES utf8\"\\ncharacter-set-server = utf8\\ninnodb_flush_log_at_trx_commit=2\\nsync_binlog=0\\ninnodb_use_native_aio=0\\n' >> /etc/mysql/my.cnf" shape="box"];
  "sha256:d814077a327a6c77d2e1891f8624f14452c138212a5c8b398794f4398fc233f3" [label="sha256:d814077a327a6c77d2e1891f8624f14452c138212a5c8b398794f4398fc233f3" shape="plaintext"];
  "sha256:8c1935286a64a0b4b38a52fa34165b11e6044db8065b4b01bd760b4f90fb8139" -> "sha256:806087604fc8cfa79541f8c0ed79a22fab1cb537e2a67cb0a469bd22541bc2d8" [label=""];
  "sha256:806087604fc8cfa79541f8c0ed79a22fab1cb537e2a67cb0a469bd22541bc2d8" -> "sha256:d814077a327a6c77d2e1891f8624f14452c138212a5c8b398794f4398fc233f3" [label=""];
}

