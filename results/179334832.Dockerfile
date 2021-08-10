[app/sources/179334832.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:59468a7578d6a13f978e1046a84bc2b69ab292e3b3c1188fd7dd2af90bdbcfcd" [label="/bin/sh -c apk --no-cache add mariadb~${MARIADB_VERSION} mariadb-client net-tools pwgen curl bash;     rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*;     rm -rf /var/lib/mysql/* /etc/mysql/;     curl -sSL http://mysqltuner.pl/ -o mysqltuner.pl" shape="box"];
  "sha256:6e4ed340802d51d6f32204f414e95bfc33d00e1495d966dd9fc293e737f8dc0d" [label="local://context" shape="ellipse"];
  "sha256:831e305b3bd1e9dee2483a9b9164ba1f5328fe83158b4f91c40b96546c63db59" [label="copy{src=/container-files, dest=/}" shape="note"];
  "sha256:88940d6d99a3c60f53f99048c4149a374003423cb7058ca4b5b717550adae43a" [label="sha256:88940d6d99a3c60f53f99048c4149a374003423cb7058ca4b5b717550adae43a" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:59468a7578d6a13f978e1046a84bc2b69ab292e3b3c1188fd7dd2af90bdbcfcd" [label=""];
  "sha256:59468a7578d6a13f978e1046a84bc2b69ab292e3b3c1188fd7dd2af90bdbcfcd" -> "sha256:831e305b3bd1e9dee2483a9b9164ba1f5328fe83158b4f91c40b96546c63db59" [label=""];
  "sha256:6e4ed340802d51d6f32204f414e95bfc33d00e1495d966dd9fc293e737f8dc0d" -> "sha256:831e305b3bd1e9dee2483a9b9164ba1f5328fe83158b4f91c40b96546c63db59" [label=""];
  "sha256:831e305b3bd1e9dee2483a9b9164ba1f5328fe83158b4f91c40b96546c63db59" -> "sha256:88940d6d99a3c60f53f99048c4149a374003423cb7058ca4b5b717550adae43a" [label=""];
}

