[app/sources/172481600.Dockerfile]
digraph {
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" [label="docker-image://docker.io/library/mysql:5.7" shape="ellipse"];
  "sha256:a6a499062c617021ff0ad7442c8d1223403eb3fc530efb0d780d054036ca5fbb" [label="local://context" shape="ellipse"];
  "sha256:53e6e2e9a9d2e48f59b1b52d67ac756d58fe16c5d58e59599e03802bfba877e7" [label="copy{src=/wlox.sql, dest=/docker-entrypoint-initdb.d/01_wlox.sql}" shape="note"];
  "sha256:b6ef256ebe14137b0bee29e74bcd136cca475e5872d9368e8449993f88201889" [label="copy{src=/docker.sql, dest=/docker-entrypoint-initdb.d/02_docker.sql}" shape="note"];
  "sha256:6a04b7b21c77a9e13262bb30f97f6ea6d26e9e224ebc949feb501bd47ab54253" [label="copy{src=/docker_db.sh, dest=/docker-entrypoint-initdb.d/03_dockerdb.sh}" shape="note"];
  "sha256:5cf0b8d417366b45863a8dbbfd44d12b8bef859caac011fe61a94b3c133120c2" [label="copy{src=/docker_my.cnf, dest=/etc/mysql/conf.d/wlox.cnf}" shape="note"];
  "sha256:4b642ce8514bf24cceae0eea71512b2ffa032c91be600ad0366abe1703f85985" [label="sha256:4b642ce8514bf24cceae0eea71512b2ffa032c91be600ad0366abe1703f85985" shape="plaintext"];
  "sha256:35a9fd5f760d2b90d030c37766257a29fa1b6c8f91945b42dd16eb8d2fc2c867" -> "sha256:53e6e2e9a9d2e48f59b1b52d67ac756d58fe16c5d58e59599e03802bfba877e7" [label=""];
  "sha256:a6a499062c617021ff0ad7442c8d1223403eb3fc530efb0d780d054036ca5fbb" -> "sha256:53e6e2e9a9d2e48f59b1b52d67ac756d58fe16c5d58e59599e03802bfba877e7" [label=""];
  "sha256:53e6e2e9a9d2e48f59b1b52d67ac756d58fe16c5d58e59599e03802bfba877e7" -> "sha256:b6ef256ebe14137b0bee29e74bcd136cca475e5872d9368e8449993f88201889" [label=""];
  "sha256:a6a499062c617021ff0ad7442c8d1223403eb3fc530efb0d780d054036ca5fbb" -> "sha256:b6ef256ebe14137b0bee29e74bcd136cca475e5872d9368e8449993f88201889" [label=""];
  "sha256:b6ef256ebe14137b0bee29e74bcd136cca475e5872d9368e8449993f88201889" -> "sha256:6a04b7b21c77a9e13262bb30f97f6ea6d26e9e224ebc949feb501bd47ab54253" [label=""];
  "sha256:a6a499062c617021ff0ad7442c8d1223403eb3fc530efb0d780d054036ca5fbb" -> "sha256:6a04b7b21c77a9e13262bb30f97f6ea6d26e9e224ebc949feb501bd47ab54253" [label=""];
  "sha256:6a04b7b21c77a9e13262bb30f97f6ea6d26e9e224ebc949feb501bd47ab54253" -> "sha256:5cf0b8d417366b45863a8dbbfd44d12b8bef859caac011fe61a94b3c133120c2" [label=""];
  "sha256:a6a499062c617021ff0ad7442c8d1223403eb3fc530efb0d780d054036ca5fbb" -> "sha256:5cf0b8d417366b45863a8dbbfd44d12b8bef859caac011fe61a94b3c133120c2" [label=""];
  "sha256:5cf0b8d417366b45863a8dbbfd44d12b8bef859caac011fe61a94b3c133120c2" -> "sha256:4b642ce8514bf24cceae0eea71512b2ffa032c91be600ad0366abe1703f85985" [label=""];
}

