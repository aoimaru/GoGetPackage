[app/sources/291179776.Dockerfile]
digraph {
  "sha256:fdf40432ceae7e874184cf369607edef127b94dea582d01667d3ec335b07f472" [label="docker-image://docker.io/library/mariadb:10.1.36-bionic" shape="ellipse"];
  "sha256:56285f0eb9e79a748112a9a8b1edf95c7f43d8f7f52a29cb44fd7f55d4e99a3a" [label="/bin/sh -c echo '\\n[mysqld]\\ncollation-server = utf8_unicode_ci\\ninit-connect=\"SET NAMES utf8\"\\ncharacter-set-server = utf8\\ninnodb_flush_log_at_trx_commit=2\\nsync_binlog=0\\ninnodb_use_native_aio=0\\n' >> /etc/mysql/my.cnf" shape="box"];
  "sha256:cf36b91e18d51e66455ffd603483fe57ec40b95b86d93bbdd22e22af150dc736" [label="sha256:cf36b91e18d51e66455ffd603483fe57ec40b95b86d93bbdd22e22af150dc736" shape="plaintext"];
  "sha256:fdf40432ceae7e874184cf369607edef127b94dea582d01667d3ec335b07f472" -> "sha256:56285f0eb9e79a748112a9a8b1edf95c7f43d8f7f52a29cb44fd7f55d4e99a3a" [label=""];
  "sha256:56285f0eb9e79a748112a9a8b1edf95c7f43d8f7f52a29cb44fd7f55d4e99a3a" -> "sha256:cf36b91e18d51e66455ffd603483fe57ec40b95b86d93bbdd22e22af150dc736" [label=""];
}

