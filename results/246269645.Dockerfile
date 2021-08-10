[app/sources/246269645.Dockerfile]
digraph {
  "sha256:cee1261a3f1078b7d5826c96137cb60032d5fdda7199dcf38281fc93ec961ed9" [label="docker-image://docker.io/library/postgres:9.3" shape="ellipse"];
  "sha256:24ae0f7893d52b08c71a716a9b7bb45a3b43e72e2bc2285d40c6f10cca9c830c" [label="/bin/sh -c mkdir -p /var/lib/postgres_lock && chown -R postgres:postgres /var/lib/postgres_lock && chmod 777 /var/lib/postgres_lock" shape="box"];
  "sha256:378740925da2c68aefc0ed04b9d993cbd630b2e835650f4fa58744dba22d7f5d" [label="/bin/sh -c touch /var/lib/postgres_lock/db_lock" shape="box"];
  "sha256:b4a3c9be56c5d97d650406793103c0b26d281cfa1eeacf8787674f18caddbbb5" [label="local://context" shape="ellipse"];
  "sha256:26c43413441c7c9a4639c7cbe927775db0c9e7a30bd68511d16adb4797b6db21" [label="copy{src=/conf/uuid.sql, dest=/docker-entrypoint-initdb.d/10_uuid.sql}" shape="note"];
  "sha256:1642496c18e0d596eb862734be7992039bc82329fb086c990bcaa06b79d7a341" [label="copy{src=/dumps/empty.sql.gz, dest=/docker-entrypoint-initdb.d/20_dump.sql.gz}" shape="note"];
  "sha256:647b74f574d775b6a12bd3e954f81d44c7abd8a0db77cbc9376a3d19732d1037" [label="copy{src=/conf/unlock.sh, dest=/docker-entrypoint-initdb.d/30_unlock.sh}" shape="note"];
  "sha256:38c321764c7787ea8b7b0e98fa639df57746145f0fabeb6bcc7a49a0b00cb360" [label="sha256:38c321764c7787ea8b7b0e98fa639df57746145f0fabeb6bcc7a49a0b00cb360" shape="plaintext"];
  "sha256:cee1261a3f1078b7d5826c96137cb60032d5fdda7199dcf38281fc93ec961ed9" -> "sha256:24ae0f7893d52b08c71a716a9b7bb45a3b43e72e2bc2285d40c6f10cca9c830c" [label=""];
  "sha256:24ae0f7893d52b08c71a716a9b7bb45a3b43e72e2bc2285d40c6f10cca9c830c" -> "sha256:378740925da2c68aefc0ed04b9d993cbd630b2e835650f4fa58744dba22d7f5d" [label=""];
  "sha256:378740925da2c68aefc0ed04b9d993cbd630b2e835650f4fa58744dba22d7f5d" -> "sha256:26c43413441c7c9a4639c7cbe927775db0c9e7a30bd68511d16adb4797b6db21" [label=""];
  "sha256:b4a3c9be56c5d97d650406793103c0b26d281cfa1eeacf8787674f18caddbbb5" -> "sha256:26c43413441c7c9a4639c7cbe927775db0c9e7a30bd68511d16adb4797b6db21" [label=""];
  "sha256:26c43413441c7c9a4639c7cbe927775db0c9e7a30bd68511d16adb4797b6db21" -> "sha256:1642496c18e0d596eb862734be7992039bc82329fb086c990bcaa06b79d7a341" [label=""];
  "sha256:b4a3c9be56c5d97d650406793103c0b26d281cfa1eeacf8787674f18caddbbb5" -> "sha256:1642496c18e0d596eb862734be7992039bc82329fb086c990bcaa06b79d7a341" [label=""];
  "sha256:1642496c18e0d596eb862734be7992039bc82329fb086c990bcaa06b79d7a341" -> "sha256:647b74f574d775b6a12bd3e954f81d44c7abd8a0db77cbc9376a3d19732d1037" [label=""];
  "sha256:b4a3c9be56c5d97d650406793103c0b26d281cfa1eeacf8787674f18caddbbb5" -> "sha256:647b74f574d775b6a12bd3e954f81d44c7abd8a0db77cbc9376a3d19732d1037" [label=""];
  "sha256:647b74f574d775b6a12bd3e954f81d44c7abd8a0db77cbc9376a3d19732d1037" -> "sha256:38c321764c7787ea8b7b0e98fa639df57746145f0fabeb6bcc7a49a0b00cb360" [label=""];
}

