[app/sources/304790052.Dockerfile]
digraph {
  "sha256:542daf83d4c1aff66118dbfc06ddc729da6efe90f8bbcbabfda4bf3e7f395c82" [label="docker-image://docker.io/plabedan/gentoo-minimal:latest" shape="ellipse"];
  "sha256:da6f80e8507b0553ef405f95a1c1a217313add0dad6f0424ca85e982894bb626" [label="/bin/sh -c emerge --sync" shape="box"];
  "sha256:e4a92b677b4e1b0613d70d51d55b60287728f638c394291aced04d60299ec7e2" [label="/bin/sh -c emerge dev-db/mysql" shape="box"];
  "sha256:c2a357dff1a7e2fd0515f3e970638404536f63e48b4444da28cf4ccdd0d709cb" [label="/bin/sh -c ( echo '@DB_PASSWORD@' ; echo '@DB_PASSWORD@' ) | emerge dev-db/mysql --config" shape="box"];
  "sha256:f733c546e585e922c1a52921c84280e0e6ab756c700c1c17cbf33048a237d069" [label="/bin/sh -c /usr/bin/mysqld_safe &   while ! mysqladmin -uroot -p'@DB_PASSWORD@' ping 2>/dev/null ; do sleep 1; done &&   mysqladmin -uroot -p'@DB_PASSWORD@' create '@DB_DATABASE@' &&   mysql -uroot -p'@DB_PASSWORD@' --execute=\"GRANT ALL ON \\`@DB_DATABASE@\\`.* TO \\`@DB_USER@\\`@\\`%\\` IDENTIFIED BY '@DB_PASSWORD@'\" &&   sed -i -e \"s/^bind-address/#&/\" /etc/mysql/my.cnf" shape="box"];
  "sha256:100213367b3460c38bd027b2fc585a9776c9a15e6511b89c3ece84df102253bb" [label="sha256:100213367b3460c38bd027b2fc585a9776c9a15e6511b89c3ece84df102253bb" shape="plaintext"];
  "sha256:542daf83d4c1aff66118dbfc06ddc729da6efe90f8bbcbabfda4bf3e7f395c82" -> "sha256:da6f80e8507b0553ef405f95a1c1a217313add0dad6f0424ca85e982894bb626" [label=""];
  "sha256:da6f80e8507b0553ef405f95a1c1a217313add0dad6f0424ca85e982894bb626" -> "sha256:e4a92b677b4e1b0613d70d51d55b60287728f638c394291aced04d60299ec7e2" [label=""];
  "sha256:e4a92b677b4e1b0613d70d51d55b60287728f638c394291aced04d60299ec7e2" -> "sha256:c2a357dff1a7e2fd0515f3e970638404536f63e48b4444da28cf4ccdd0d709cb" [label=""];
  "sha256:c2a357dff1a7e2fd0515f3e970638404536f63e48b4444da28cf4ccdd0d709cb" -> "sha256:f733c546e585e922c1a52921c84280e0e6ab756c700c1c17cbf33048a237d069" [label=""];
  "sha256:f733c546e585e922c1a52921c84280e0e6ab756c700c1c17cbf33048a237d069" -> "sha256:100213367b3460c38bd027b2fc585a9776c9a15e6511b89c3ece84df102253bb" [label=""];
}

