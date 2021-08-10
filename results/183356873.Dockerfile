[app/sources/183356873.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:edcc09adaabe95469b1ad1dc38450210f78ec5fe76720bd5b3159fc6dc5cc0ab" [label="/bin/sh -c apt-get update && apt-get -y install php-cli php-xml mariadb-server mariadb-client php-mysql postgresql php-pgsql postgresql-9.5-postgis-2.2 git wget curl apt-transport-https debconf-utils sudo" shape="box"];
  "sha256:69f0d55e856913f0b2ab5ce7de191a1c238db731a6975692845aa0acb371591b" [label="/bin/sh -c curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -" shape="box"];
  "sha256:898e96f1e0be26d6cd0c5286b500bd8ad4554677613124694c57245592d59191" [label="/bin/sh -c curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list" shape="box"];
  "sha256:582939330bfdebf7c4a3ca382a70b82639c4ff64a63da2e6855bac1bedc19de3" [label="/bin/sh -c curl https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list > /etc/apt/sources.list.d/mssql-server-2017.list" shape="box"];
  "sha256:5cd27d609af8231a34bcf731a22bfa7483c6cef632cc6c6df224b9340d73b9aa" [label="/bin/sh -c apt-get update && apt-get -y install mssql-server" shape="box"];
  "sha256:0e28378cae716c4e5f6fa1e86eeaa7a43de52d17299cd1eb110dd594c324b5c4" [label="/bin/sh -c ACCEPT_EULA=Y MSSQL_PID=Express MSSQL_SA_PASSWORD=sapwd123! /opt/mssql/bin/mssql-conf setup || true" shape="box"];
  "sha256:3eb6c9ccec3eb945a7d0ce79097a879cda05da0f6fa7c922b2e8736073c832cc" [label="/bin/sh -c ACCEPT_EULA=Y apt-get install -y msodbcsql mssql-tools" shape="box"];
  "sha256:843958ccc8c6d8308a63c634f4c38cf484e252107b6ab69ff0ae5510733752c7" [label="/bin/sh -c apt-get -y install php-pear build-essential unixodbc-dev php-dev" shape="box"];
  "sha256:bcd2f24fcd9bab09ec02d8dab256be60dab4e9b7359064557c8416640d3489fc" [label="/bin/sh -c pecl install pdo_sqlsrv-5.3.0" shape="box"];
  "sha256:75ba1b64a95597f71054e1ffd613446998c94f88d45a35f8eae651330ccaaff0" [label="/bin/sh -c echo extension=pdo_sqlsrv.so > /etc/php/7.0/mods-available/pdo_sqlsrv.ini" shape="box"];
  "sha256:991faeb90fa5b41244737cf5153d9d50cd15f5f9d27f2197041137d5b25b8f41" [label="/bin/sh -c phpenmod pdo_sqlsrv" shape="box"];
  "sha256:a5cede7939891260080a9e09b2c86d444de7caffc5a5ee953551bea78e5943c8" [label="/bin/sh -c apt-get -y install locales" shape="box"];
  "sha256:fa4daa85ad00300696c1c25dee591c6407f8d27c8c17c255419eb9c98f5ff3ce" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:9d8876cd78edff8703433a69a15419882ce74177607d235bdcd09fdaeeb63a2f" [label="/bin/sh -c update-locale LANG=en_US.UTF-8" shape="box"];
  "sha256:c7823fe67b2e98c582273b8ad380e05fe645882e30b7c92c5ee73e1c8a2a35b7" [label="local://context" shape="ellipse"];
  "sha256:4efb9bb1bf386159b05d4f8ab1806f9b22730aeb2fdbed5503615d3403e63034" [label="copy{src=/run.sh, dest=/usr/sbin/docker-run}" shape="note"];
  "sha256:ac4e3851b23f7fd269931bb14f70fa3d9f0ece9b496d8827cd3f511aa664f1b8" [label="sha256:ac4e3851b23f7fd269931bb14f70fa3d9f0ece9b496d8827cd3f511aa664f1b8" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:edcc09adaabe95469b1ad1dc38450210f78ec5fe76720bd5b3159fc6dc5cc0ab" [label=""];
  "sha256:edcc09adaabe95469b1ad1dc38450210f78ec5fe76720bd5b3159fc6dc5cc0ab" -> "sha256:69f0d55e856913f0b2ab5ce7de191a1c238db731a6975692845aa0acb371591b" [label=""];
  "sha256:69f0d55e856913f0b2ab5ce7de191a1c238db731a6975692845aa0acb371591b" -> "sha256:898e96f1e0be26d6cd0c5286b500bd8ad4554677613124694c57245592d59191" [label=""];
  "sha256:898e96f1e0be26d6cd0c5286b500bd8ad4554677613124694c57245592d59191" -> "sha256:582939330bfdebf7c4a3ca382a70b82639c4ff64a63da2e6855bac1bedc19de3" [label=""];
  "sha256:582939330bfdebf7c4a3ca382a70b82639c4ff64a63da2e6855bac1bedc19de3" -> "sha256:5cd27d609af8231a34bcf731a22bfa7483c6cef632cc6c6df224b9340d73b9aa" [label=""];
  "sha256:5cd27d609af8231a34bcf731a22bfa7483c6cef632cc6c6df224b9340d73b9aa" -> "sha256:0e28378cae716c4e5f6fa1e86eeaa7a43de52d17299cd1eb110dd594c324b5c4" [label=""];
  "sha256:0e28378cae716c4e5f6fa1e86eeaa7a43de52d17299cd1eb110dd594c324b5c4" -> "sha256:3eb6c9ccec3eb945a7d0ce79097a879cda05da0f6fa7c922b2e8736073c832cc" [label=""];
  "sha256:3eb6c9ccec3eb945a7d0ce79097a879cda05da0f6fa7c922b2e8736073c832cc" -> "sha256:843958ccc8c6d8308a63c634f4c38cf484e252107b6ab69ff0ae5510733752c7" [label=""];
  "sha256:843958ccc8c6d8308a63c634f4c38cf484e252107b6ab69ff0ae5510733752c7" -> "sha256:bcd2f24fcd9bab09ec02d8dab256be60dab4e9b7359064557c8416640d3489fc" [label=""];
  "sha256:bcd2f24fcd9bab09ec02d8dab256be60dab4e9b7359064557c8416640d3489fc" -> "sha256:75ba1b64a95597f71054e1ffd613446998c94f88d45a35f8eae651330ccaaff0" [label=""];
  "sha256:75ba1b64a95597f71054e1ffd613446998c94f88d45a35f8eae651330ccaaff0" -> "sha256:991faeb90fa5b41244737cf5153d9d50cd15f5f9d27f2197041137d5b25b8f41" [label=""];
  "sha256:991faeb90fa5b41244737cf5153d9d50cd15f5f9d27f2197041137d5b25b8f41" -> "sha256:a5cede7939891260080a9e09b2c86d444de7caffc5a5ee953551bea78e5943c8" [label=""];
  "sha256:a5cede7939891260080a9e09b2c86d444de7caffc5a5ee953551bea78e5943c8" -> "sha256:fa4daa85ad00300696c1c25dee591c6407f8d27c8c17c255419eb9c98f5ff3ce" [label=""];
  "sha256:fa4daa85ad00300696c1c25dee591c6407f8d27c8c17c255419eb9c98f5ff3ce" -> "sha256:9d8876cd78edff8703433a69a15419882ce74177607d235bdcd09fdaeeb63a2f" [label=""];
  "sha256:9d8876cd78edff8703433a69a15419882ce74177607d235bdcd09fdaeeb63a2f" -> "sha256:4efb9bb1bf386159b05d4f8ab1806f9b22730aeb2fdbed5503615d3403e63034" [label=""];
  "sha256:c7823fe67b2e98c582273b8ad380e05fe645882e30b7c92c5ee73e1c8a2a35b7" -> "sha256:4efb9bb1bf386159b05d4f8ab1806f9b22730aeb2fdbed5503615d3403e63034" [label=""];
  "sha256:4efb9bb1bf386159b05d4f8ab1806f9b22730aeb2fdbed5503615d3403e63034" -> "sha256:ac4e3851b23f7fd269931bb14f70fa3d9f0ece9b496d8827cd3f511aa664f1b8" [label=""];
}

