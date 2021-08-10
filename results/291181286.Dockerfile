[app/sources/291181286.Dockerfile]
digraph {
  "sha256:91c93bc42c8eefffd6c20051878f9df0bb0cd40de194e74a8ff6c0a3c22aba9a" [label="docker-image://docker.io/library/mysql:5.5.62" shape="ellipse"];
  "sha256:206fc84f6aa0df5dcafe8a2ff9531a78e7a4c62c780712df618407e20a45294c" [label="/bin/sh -c echo '\\n[mysqld]\\ncollation-server = utf8_unicode_ci\\ninit-connect=\"SET NAMES utf8\"\\ncharacter-set-server = utf8\\ninnodb_flush_log_at_trx_commit=2\\nsync_binlog=0\\ninnodb_use_native_aio=0\\n' >> /etc/mysql/my.cnf" shape="box"];
  "sha256:5b771d01d723b38e47e477b0455cb9fe99cb0087c37c52cfd18ed5fa4173bb81" [label="sha256:5b771d01d723b38e47e477b0455cb9fe99cb0087c37c52cfd18ed5fa4173bb81" shape="plaintext"];
  "sha256:91c93bc42c8eefffd6c20051878f9df0bb0cd40de194e74a8ff6c0a3c22aba9a" -> "sha256:206fc84f6aa0df5dcafe8a2ff9531a78e7a4c62c780712df618407e20a45294c" [label=""];
  "sha256:206fc84f6aa0df5dcafe8a2ff9531a78e7a4c62c780712df618407e20a45294c" -> "sha256:5b771d01d723b38e47e477b0455cb9fe99cb0087c37c52cfd18ed5fa4173bb81" [label=""];
}

