[app/sources/291180942.Dockerfile]
digraph {
  "sha256:c2be31c4a5a091323932a8ded237aba131812bf485ea144b778ccfca3538c49e" [label="docker-image://docker.io/library/mariadb:10.3.11-bionic" shape="ellipse"];
  "sha256:6e513c873f2b3985125c0cd793befae23e54ea77cc783a723ee3d422073cfa97" [label="/bin/sh -c echo '\\n[mysqld]\\ncollation-server = utf8_unicode_ci\\ninit-connect=\"SET NAMES utf8\"\\ncharacter-set-server = utf8\\ninnodb_flush_log_at_trx_commit=2\\nsync_binlog=0\\ninnodb_use_native_aio=0\\n' >> /etc/mysql/my.cnf" shape="box"];
  "sha256:55516d5803575ed51dc89e1fb06237d5d1b8dea8e58072c5d2cef7b5637c3920" [label="sha256:55516d5803575ed51dc89e1fb06237d5d1b8dea8e58072c5d2cef7b5637c3920" shape="plaintext"];
  "sha256:c2be31c4a5a091323932a8ded237aba131812bf485ea144b778ccfca3538c49e" -> "sha256:6e513c873f2b3985125c0cd793befae23e54ea77cc783a723ee3d422073cfa97" [label=""];
  "sha256:6e513c873f2b3985125c0cd793befae23e54ea77cc783a723ee3d422073cfa97" -> "sha256:55516d5803575ed51dc89e1fb06237d5d1b8dea8e58072c5d2cef7b5637c3920" [label=""];
}

