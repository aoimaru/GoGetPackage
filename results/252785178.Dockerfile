[app/sources/252785178.Dockerfile]
digraph {
  "sha256:2d635d4c2186bc1e7be9bd8dbe49be022836ac60345c7550c0242c929830598d" [label="docker-image://docker.io/cogfor/jdk-oracle:latest" shape="ellipse"];
  "sha256:2861820dc18f497bb1425923c2c76714d9f54f51d2eae3837d1835ced575980c" [label="/bin/sh -c /etc/my_init.d/00_regen_ssh_host_keys.sh" shape="box"];
  "sha256:f5b2a545e910c49128f7ac9d3a6568603c19003e067dcae297c60f067a316e57" [label="/bin/sh -c mkdir /hbase-setup" shape="box"];
  "sha256:693f1b48dcb43db40990e793dda85e6d33ea9eb07a99b04f6b1d5aa1712f6f90" [label="mkdir{path=/hbase-setup}" shape="note"];
  "sha256:677ccea4574a5d24937d002444944d7cd930eef429840766358d56a20595ba7a" [label="local://context" shape="ellipse"];
  "sha256:abae2291c65f825d2eacdc608749baeada11302a56764b513d4009375b851061" [label="copy{src=/install-hbase.sh, dest=/hbase-setup/}" shape="note"];
  "sha256:42f1d1ea81ee546cf60d67ab0a2d13901742841d0f936af038614bdd22c4fea1" [label="/bin/sh -c ./install-hbase.sh" shape="box"];
  "sha256:a583c74f004de295083fb0a946240ee62b676a1b6937fb051a15dbee22b8ef77" [label="/bin/sh -c /opt/hbase/bin/hbase-config.sh" shape="box"];
  "sha256:865f41b6298c5204e701075b4620023a4c1afb1f718d7c53e762dab43ecac06e" [label="copy{src=/hbase-site.xml, dest=/opt/hbase/conf/hbase-site.xml}" shape="note"];
  "sha256:923b4db2f050ad4a3a99e24390224c103cd6796bba4c0d2c26aa562b88e2da80" [label="/bin/sh -c mkdir /etc/service/hbase" shape="box"];
  "sha256:8a49d2aa42652cb2457a3154fdced3feed200955e6da3e2568cb82213b91494e" [label="copy{src=/start-pseudo-distributed.sh, dest=/etc/service/hbase/run}" shape="note"];
  "sha256:ef3e13f4efc3f6b26f151ace29ffb1babac5938076a2e1fa2f7775824fe02086" [label="/bin/sh -c chmod +x /etc/service/hbase/run" shape="box"];
  "sha256:fabd0a7f2a587ca0153db203e27b4560eb2636922dbd4d9ff7357f5e8861f794" [label="mkdir{path=/opt/hbase/bin}" shape="note"];
  "sha256:2bee68a4a1db5c155ffbba18fa868f3d6a2da8e27b200c6814357de41820a41b" [label="sha256:2bee68a4a1db5c155ffbba18fa868f3d6a2da8e27b200c6814357de41820a41b" shape="plaintext"];
  "sha256:2d635d4c2186bc1e7be9bd8dbe49be022836ac60345c7550c0242c929830598d" -> "sha256:2861820dc18f497bb1425923c2c76714d9f54f51d2eae3837d1835ced575980c" [label=""];
  "sha256:2861820dc18f497bb1425923c2c76714d9f54f51d2eae3837d1835ced575980c" -> "sha256:f5b2a545e910c49128f7ac9d3a6568603c19003e067dcae297c60f067a316e57" [label=""];
  "sha256:f5b2a545e910c49128f7ac9d3a6568603c19003e067dcae297c60f067a316e57" -> "sha256:693f1b48dcb43db40990e793dda85e6d33ea9eb07a99b04f6b1d5aa1712f6f90" [label=""];
  "sha256:693f1b48dcb43db40990e793dda85e6d33ea9eb07a99b04f6b1d5aa1712f6f90" -> "sha256:abae2291c65f825d2eacdc608749baeada11302a56764b513d4009375b851061" [label=""];
  "sha256:677ccea4574a5d24937d002444944d7cd930eef429840766358d56a20595ba7a" -> "sha256:abae2291c65f825d2eacdc608749baeada11302a56764b513d4009375b851061" [label=""];
  "sha256:abae2291c65f825d2eacdc608749baeada11302a56764b513d4009375b851061" -> "sha256:42f1d1ea81ee546cf60d67ab0a2d13901742841d0f936af038614bdd22c4fea1" [label=""];
  "sha256:42f1d1ea81ee546cf60d67ab0a2d13901742841d0f936af038614bdd22c4fea1" -> "sha256:a583c74f004de295083fb0a946240ee62b676a1b6937fb051a15dbee22b8ef77" [label=""];
  "sha256:a583c74f004de295083fb0a946240ee62b676a1b6937fb051a15dbee22b8ef77" -> "sha256:865f41b6298c5204e701075b4620023a4c1afb1f718d7c53e762dab43ecac06e" [label=""];
  "sha256:677ccea4574a5d24937d002444944d7cd930eef429840766358d56a20595ba7a" -> "sha256:865f41b6298c5204e701075b4620023a4c1afb1f718d7c53e762dab43ecac06e" [label=""];
  "sha256:865f41b6298c5204e701075b4620023a4c1afb1f718d7c53e762dab43ecac06e" -> "sha256:923b4db2f050ad4a3a99e24390224c103cd6796bba4c0d2c26aa562b88e2da80" [label=""];
  "sha256:923b4db2f050ad4a3a99e24390224c103cd6796bba4c0d2c26aa562b88e2da80" -> "sha256:8a49d2aa42652cb2457a3154fdced3feed200955e6da3e2568cb82213b91494e" [label=""];
  "sha256:677ccea4574a5d24937d002444944d7cd930eef429840766358d56a20595ba7a" -> "sha256:8a49d2aa42652cb2457a3154fdced3feed200955e6da3e2568cb82213b91494e" [label=""];
  "sha256:8a49d2aa42652cb2457a3154fdced3feed200955e6da3e2568cb82213b91494e" -> "sha256:ef3e13f4efc3f6b26f151ace29ffb1babac5938076a2e1fa2f7775824fe02086" [label=""];
  "sha256:ef3e13f4efc3f6b26f151ace29ffb1babac5938076a2e1fa2f7775824fe02086" -> "sha256:fabd0a7f2a587ca0153db203e27b4560eb2636922dbd4d9ff7357f5e8861f794" [label=""];
  "sha256:fabd0a7f2a587ca0153db203e27b4560eb2636922dbd4d9ff7357f5e8861f794" -> "sha256:2bee68a4a1db5c155ffbba18fa868f3d6a2da8e27b200c6814357de41820a41b" [label=""];
}

