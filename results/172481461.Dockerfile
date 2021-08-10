[app/sources/172481461.Dockerfile]
digraph {
  "sha256:5fd74a9662fc6d5b61bf956b3fa7f5d69a0106eb929b66ffd8abfdd1a40c8231" [label="local://context" shape="ellipse"];
  "sha256:30ce057aca7a42126358c6987cc2239f1c038e6d668a9f50bdb32aafe130420b" [label="docker-image://docker.io/library/php:5.6-cli" shape="ellipse"];
  "sha256:c8dd6e849a33288a46a1582b81de6c5eec0f630dfc5d6e118517b74264760ba9" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:11e9b668023db2f0cac5c3703653ece3ed94ef925aed30c620e86db757b5625c" [label="/bin/sh -c apt-get install -y openssl libcurl4-openssl-dev libgd-dev libmcrypt-dev     && docker-php-ext-install curl gd mcrypt json pdo_mysql" shape="box"];
  "sha256:cba9bb666bf7332b6a29434c433164c8816b8fdb37cfdabdc90e900a62561e7d" [label="/bin/sh -c apt-get install -y cron" shape="box"];
  "sha256:60e8e97842d28ff48de3071dc3cd1dc167d9af6a1f6efce10fa78e84af9d1461" [label="mkdir{path=/app}" shape="note"];
  "sha256:6866af331c4db31e989f60093bc406fb08cb6951c377aac1126855a1207dae5c" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:395701b6043cb0541da052b863a7a8b36825286b940cac3c4ce28b604ce22b54" [label="copy{src=/docker_cfg.php, dest=/app/cfg.php}" shape="note"];
  "sha256:4103f608fdf11b734d06cfd0ebf8dfe2585ce34f56d62de8d7e4d5f93eb9a5d0" [label="sha256:4103f608fdf11b734d06cfd0ebf8dfe2585ce34f56d62de8d7e4d5f93eb9a5d0" shape="plaintext"];
  "sha256:30ce057aca7a42126358c6987cc2239f1c038e6d668a9f50bdb32aafe130420b" -> "sha256:c8dd6e849a33288a46a1582b81de6c5eec0f630dfc5d6e118517b74264760ba9" [label=""];
  "sha256:c8dd6e849a33288a46a1582b81de6c5eec0f630dfc5d6e118517b74264760ba9" -> "sha256:11e9b668023db2f0cac5c3703653ece3ed94ef925aed30c620e86db757b5625c" [label=""];
  "sha256:11e9b668023db2f0cac5c3703653ece3ed94ef925aed30c620e86db757b5625c" -> "sha256:cba9bb666bf7332b6a29434c433164c8816b8fdb37cfdabdc90e900a62561e7d" [label=""];
  "sha256:cba9bb666bf7332b6a29434c433164c8816b8fdb37cfdabdc90e900a62561e7d" -> "sha256:60e8e97842d28ff48de3071dc3cd1dc167d9af6a1f6efce10fa78e84af9d1461" [label=""];
  "sha256:60e8e97842d28ff48de3071dc3cd1dc167d9af6a1f6efce10fa78e84af9d1461" -> "sha256:6866af331c4db31e989f60093bc406fb08cb6951c377aac1126855a1207dae5c" [label=""];
  "sha256:5fd74a9662fc6d5b61bf956b3fa7f5d69a0106eb929b66ffd8abfdd1a40c8231" -> "sha256:6866af331c4db31e989f60093bc406fb08cb6951c377aac1126855a1207dae5c" [label=""];
  "sha256:6866af331c4db31e989f60093bc406fb08cb6951c377aac1126855a1207dae5c" -> "sha256:395701b6043cb0541da052b863a7a8b36825286b940cac3c4ce28b604ce22b54" [label=""];
  "sha256:5fd74a9662fc6d5b61bf956b3fa7f5d69a0106eb929b66ffd8abfdd1a40c8231" -> "sha256:395701b6043cb0541da052b863a7a8b36825286b940cac3c4ce28b604ce22b54" [label=""];
  "sha256:395701b6043cb0541da052b863a7a8b36825286b940cac3c4ce28b604ce22b54" -> "sha256:4103f608fdf11b734d06cfd0ebf8dfe2585ce34f56d62de8d7e4d5f93eb9a5d0" [label=""];
}

