[app/sources/291181324.Dockerfile]
digraph {
  "sha256:c6b4aee483c9270fc6cb5cc17daa00abe207dde5b3cfe27612ec6f2e24500117" [label="docker-image://docker.io/library/mysql:8.0.15" shape="ellipse"];
  "sha256:1ac3ac6b7f32df20152a782432386e49aa11a1e0996881e127ef7782fa08eb0d" [label="/bin/sh -c echo '\\n[mysqld]\\ncollation-server = utf8_unicode_ci\\ninit-connect=\"SET NAMES utf8\"\\ncharacter-set-server = utf8\\ninnodb_flush_log_at_trx_commit=2\\nsync_binlog=0\\ninnodb_use_native_aio=0\\n' >> /etc/mysql/my.cnf" shape="box"];
  "sha256:0d552c5be49609304196a28a972fa11499b444afe652141050892d9cfd35c56e" [label="sha256:0d552c5be49609304196a28a972fa11499b444afe652141050892d9cfd35c56e" shape="plaintext"];
  "sha256:c6b4aee483c9270fc6cb5cc17daa00abe207dde5b3cfe27612ec6f2e24500117" -> "sha256:1ac3ac6b7f32df20152a782432386e49aa11a1e0996881e127ef7782fa08eb0d" [label=""];
  "sha256:1ac3ac6b7f32df20152a782432386e49aa11a1e0996881e127ef7782fa08eb0d" -> "sha256:0d552c5be49609304196a28a972fa11499b444afe652141050892d9cfd35c56e" [label=""];
}

