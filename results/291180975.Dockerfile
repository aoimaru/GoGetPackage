[app/sources/291180975.Dockerfile]
digraph {
  "sha256:ef088f04ecafb4009c2170dcec6af4d3cbe4bb93fc3e1e9be056dd29e6ea8a4b" [label="docker-image://docker.io/circleci/mariadb:10.4.1-bionic@sha256:32e8d8778a852b3615a0de0f00ad0101114f897d3a6e942406dee14e63081289" shape="ellipse"];
  "sha256:a4949dd0add2ad9585a89bc85d929ad0cd65aa69b5666c484b24e6ec052c26f1" [label="/bin/sh -c echo '\\n[mysqld]\\ndatadir = /dev/shm/mysql\\n' >> /etc/mysql/my.cnf" shape="box"];
  "sha256:6802912aa8eedb29c158967685b87215a8adedef7a9173879ec1710cd123a819" [label="sha256:6802912aa8eedb29c158967685b87215a8adedef7a9173879ec1710cd123a819" shape="plaintext"];
  "sha256:ef088f04ecafb4009c2170dcec6af4d3cbe4bb93fc3e1e9be056dd29e6ea8a4b" -> "sha256:a4949dd0add2ad9585a89bc85d929ad0cd65aa69b5666c484b24e6ec052c26f1" [label=""];
  "sha256:a4949dd0add2ad9585a89bc85d929ad0cd65aa69b5666c484b24e6ec052c26f1" -> "sha256:6802912aa8eedb29c158967685b87215a8adedef7a9173879ec1710cd123a819" [label=""];
}

