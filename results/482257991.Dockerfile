[app/sources/482257991.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:cdec15ec1e1393eb5e220d09e9bae4b9d4b891bd13fb2fba4160b23fbccb1609" [label="/bin/sh -c yum -y update  && yum -y install epel-release  && yum -y install       gettext       hostname        nss_wrapper       procps-ng  && yum clean all -y" shape="box"];
  "sha256:9e27765a8ec1bc1275d49c90387cebc75b2487e0bae1bee7dd0ff926774cd74c" [label="/bin/sh -c mkdir -p /opt/cpm/bin /opt/cpm/conf /configs  && chown -R 2:2 /opt/cpm /configs" shape="box"];
  "sha256:9e1c0b8e42ff5a97178f754bf7d4ac79bbe0af8f46b39b3aedec8e4db604f1c2" [label="local://context" shape="ellipse"];
  "sha256:4078f021b7ff2c004f5514cd1b34d8659ffa98035ec4f09693fd02194bd95c08" [label="copy{src=/bin/scheduler, dest=/opt/cpm/bin}" shape="note"];
  "sha256:9a2b0f90f831e4ad052d4aae002569c5c597843a39609c31478dfa2c6e303cde" [label="copy{src=/bin/common, dest=/opt/cpm/bin}" shape="note"];
  "sha256:0c97362f1026c3b2cdf9fd477279a35d5fad236708f2473ac19a6c52faf71e56" [label="copy{src=/conf/scheduler, dest=/opt/cpm/conf}" shape="note"];
  "sha256:cad86347b3907d7cb9923e59f1c236643a1b630b9480e81b55ca08efb7a5690c" [label="sha256:cad86347b3907d7cb9923e59f1c236643a1b630b9480e81b55ca08efb7a5690c" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:cdec15ec1e1393eb5e220d09e9bae4b9d4b891bd13fb2fba4160b23fbccb1609" [label=""];
  "sha256:cdec15ec1e1393eb5e220d09e9bae4b9d4b891bd13fb2fba4160b23fbccb1609" -> "sha256:9e27765a8ec1bc1275d49c90387cebc75b2487e0bae1bee7dd0ff926774cd74c" [label=""];
  "sha256:9e27765a8ec1bc1275d49c90387cebc75b2487e0bae1bee7dd0ff926774cd74c" -> "sha256:4078f021b7ff2c004f5514cd1b34d8659ffa98035ec4f09693fd02194bd95c08" [label=""];
  "sha256:9e1c0b8e42ff5a97178f754bf7d4ac79bbe0af8f46b39b3aedec8e4db604f1c2" -> "sha256:4078f021b7ff2c004f5514cd1b34d8659ffa98035ec4f09693fd02194bd95c08" [label=""];
  "sha256:4078f021b7ff2c004f5514cd1b34d8659ffa98035ec4f09693fd02194bd95c08" -> "sha256:9a2b0f90f831e4ad052d4aae002569c5c597843a39609c31478dfa2c6e303cde" [label=""];
  "sha256:9e1c0b8e42ff5a97178f754bf7d4ac79bbe0af8f46b39b3aedec8e4db604f1c2" -> "sha256:9a2b0f90f831e4ad052d4aae002569c5c597843a39609c31478dfa2c6e303cde" [label=""];
  "sha256:9a2b0f90f831e4ad052d4aae002569c5c597843a39609c31478dfa2c6e303cde" -> "sha256:0c97362f1026c3b2cdf9fd477279a35d5fad236708f2473ac19a6c52faf71e56" [label=""];
  "sha256:9e1c0b8e42ff5a97178f754bf7d4ac79bbe0af8f46b39b3aedec8e4db604f1c2" -> "sha256:0c97362f1026c3b2cdf9fd477279a35d5fad236708f2473ac19a6c52faf71e56" [label=""];
  "sha256:0c97362f1026c3b2cdf9fd477279a35d5fad236708f2473ac19a6c52faf71e56" -> "sha256:cad86347b3907d7cb9923e59f1c236643a1b630b9480e81b55ca08efb7a5690c" [label=""];
}

