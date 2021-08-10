[app/sources/150350422.Dockerfile]
digraph {
  "sha256:4bbd0d0a01a2241fb90168152748d1bb94172115b6886d9d1e50db6b7942f74b" [label="local://context" shape="ellipse"];
  "sha256:16e6bc6f71b4c8201ef26029d859952de1fba3344a3051a26276bae5370762e7" [label="docker-image://docker.io/mojodna/cedar-14-stack:latest" shape="ellipse"];
  "sha256:f418831c359cc784f36d3718e89a65bdc238aa3d46336bb8d54b1d7842d9e3f8" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:94493cb4589d9ae797dee0f64131931ea6b36b8d34f037261b23014f593efe42" [label="copy{src=/harfbuzz.tar.bz2, dest=/tmp}" shape="note"];
  "sha256:1456a9472aec6726154002a5cbb516a3293319b459afde88d4d19794783cbffb" [label="copy{src=/freetype.tar.bz2, dest=/tmp}" shape="note"];
  "sha256:01595d94112d3c24fa160584ff74a8db503a8e60ea618381ee50642d81d338ab" [label="copy{src=/pixman.tar.gz, dest=/tmp}" shape="note"];
  "sha256:5acd10071c38990e3a36a0e51decf06af051c96aae8a1be3ffa43e9be3613fd0" [label="copy{src=/giflib.tar.bz2, dest=/tmp}" shape="note"];
  "sha256:0a53feea160fd451f9886fd7c802504653d09975bc9bb41a04c43bf6a43da691" [label="copy{src=/fontconfig.tar.bz2, dest=/tmp}" shape="note"];
  "sha256:1e3925e76e6bc613e14e588d0b4875703b8f73c61719b59185e6cb0096be50c6" [label="copy{src=/cairo.tar.xz, dest=/tmp}" shape="note"];
  "sha256:d7534f6e3b2ea71c1e3dbfbe5df5b283d48f641863bad56bad81fc3355848aae" [label="copy{src=/pango.tar.xz, dest=/tmp}" shape="note"];
  "sha256:5e77523958a8aa8d947f38dbf79b029f17097c584ef21b491270ba1333b3e13e" [label="/bin/sh -c cd /tmp/harfbuzz-* &&   ./configure --prefix=/app/vendor/harfbuzz &&   make install" shape="box"];
  "sha256:876c83e36095732d82386a260fc4b487c568a3ca1f786f4d6042e379b3a06da8" [label="/bin/sh -c cd /tmp/freetype-* &&   ./configure --prefix=/app/vendor/freetype &&   make &&   make install" shape="box"];
  "sha256:c0bdfe891e0c3ee99435e8b1277323400879758de8853830d260d1b0d0dcf56c" [label="/bin/sh -c cd /tmp/pixman-* &&   ./configure --prefix=/app/vendor/pixman &&   make install" shape="box"];
  "sha256:b56a0f96a8f5d9e93d770f851563b52267cbbe0d670ef54d21f87f6e995d6bd7" [label="/bin/sh -c cd /tmp/giflib-* &&   ./configure --prefix=/app/vendor/giflib &&   make install-exec install-data" shape="box"];
  "sha256:1335f1697822d07a607b2731a8b0b4efa0b52c203c97e1a8a0a62b3366302a45" [label="/bin/sh -c cd /tmp/fontconfig-* &&   ./configure --prefix=/app/vendor/fontconfig &&   make install" shape="box"];
  "sha256:71f07c0744a852d9efb9c289a4d0dc397de99d88e7b7527df7856b19a4b37d0c" [label="/bin/sh -c cd /tmp/cairo-* &&   ./configure --prefix=/app/vendor/cairo &&   make install" shape="box"];
  "sha256:e87e6914539a9fad277b2b8e4a4f76ebeb45db8c9612f00b084f00616bd2f1c1" [label="/bin/sh -c cd /tmp/pango-* &&   ./configure --prefix=/app/vendor/pango &&   make install" shape="box"];
  "sha256:5579b2425dc5ddb2aa758a65f394fdd844467c6073c325e1bf408282c5bdc970" [label="/bin/sh -c cd /app/vendor/pixman &&   tar zcf /tmp/pixman-cedar-14.tar.gz . &&   cd /app/vendor/freetype &&   tar zcf /tmp/freetype-cedar-14.tar.gz . &&   cd /app/vendor/giflib &&   tar zcf /tmp/giflib-cedar-14.tar.gz . &&   cd /app/vendor/fontconfig &&   tar zcf /tmp/fontconfig-cedar-14.tar.gz . &&   cd /app/vendor/cairo &&   tar zcf /tmp/cairo-cedar-14.tar.gz . &&   cd /app/vendor/harfbuzz &&   tar zcf /tmp/harfbuzz-cedar-14.tar.gz . &&   cd /app/vendor/pango &&   tar zcf /tmp/pango-cedar-14.tar.gz ." shape="box"];
  "sha256:4cd2fc9a3bca8e62227e810874614d7e8a2fc9d5617ab52d0be2f6c6484acba4" [label="sha256:4cd2fc9a3bca8e62227e810874614d7e8a2fc9d5617ab52d0be2f6c6484acba4" shape="plaintext"];
  "sha256:16e6bc6f71b4c8201ef26029d859952de1fba3344a3051a26276bae5370762e7" -> "sha256:f418831c359cc784f36d3718e89a65bdc238aa3d46336bb8d54b1d7842d9e3f8" [label=""];
  "sha256:f418831c359cc784f36d3718e89a65bdc238aa3d46336bb8d54b1d7842d9e3f8" -> "sha256:94493cb4589d9ae797dee0f64131931ea6b36b8d34f037261b23014f593efe42" [label=""];
  "sha256:4bbd0d0a01a2241fb90168152748d1bb94172115b6886d9d1e50db6b7942f74b" -> "sha256:94493cb4589d9ae797dee0f64131931ea6b36b8d34f037261b23014f593efe42" [label=""];
  "sha256:94493cb4589d9ae797dee0f64131931ea6b36b8d34f037261b23014f593efe42" -> "sha256:1456a9472aec6726154002a5cbb516a3293319b459afde88d4d19794783cbffb" [label=""];
  "sha256:4bbd0d0a01a2241fb90168152748d1bb94172115b6886d9d1e50db6b7942f74b" -> "sha256:1456a9472aec6726154002a5cbb516a3293319b459afde88d4d19794783cbffb" [label=""];
  "sha256:1456a9472aec6726154002a5cbb516a3293319b459afde88d4d19794783cbffb" -> "sha256:01595d94112d3c24fa160584ff74a8db503a8e60ea618381ee50642d81d338ab" [label=""];
  "sha256:4bbd0d0a01a2241fb90168152748d1bb94172115b6886d9d1e50db6b7942f74b" -> "sha256:01595d94112d3c24fa160584ff74a8db503a8e60ea618381ee50642d81d338ab" [label=""];
  "sha256:01595d94112d3c24fa160584ff74a8db503a8e60ea618381ee50642d81d338ab" -> "sha256:5acd10071c38990e3a36a0e51decf06af051c96aae8a1be3ffa43e9be3613fd0" [label=""];
  "sha256:4bbd0d0a01a2241fb90168152748d1bb94172115b6886d9d1e50db6b7942f74b" -> "sha256:5acd10071c38990e3a36a0e51decf06af051c96aae8a1be3ffa43e9be3613fd0" [label=""];
  "sha256:5acd10071c38990e3a36a0e51decf06af051c96aae8a1be3ffa43e9be3613fd0" -> "sha256:0a53feea160fd451f9886fd7c802504653d09975bc9bb41a04c43bf6a43da691" [label=""];
  "sha256:4bbd0d0a01a2241fb90168152748d1bb94172115b6886d9d1e50db6b7942f74b" -> "sha256:0a53feea160fd451f9886fd7c802504653d09975bc9bb41a04c43bf6a43da691" [label=""];
  "sha256:0a53feea160fd451f9886fd7c802504653d09975bc9bb41a04c43bf6a43da691" -> "sha256:1e3925e76e6bc613e14e588d0b4875703b8f73c61719b59185e6cb0096be50c6" [label=""];
  "sha256:4bbd0d0a01a2241fb90168152748d1bb94172115b6886d9d1e50db6b7942f74b" -> "sha256:1e3925e76e6bc613e14e588d0b4875703b8f73c61719b59185e6cb0096be50c6" [label=""];
  "sha256:1e3925e76e6bc613e14e588d0b4875703b8f73c61719b59185e6cb0096be50c6" -> "sha256:d7534f6e3b2ea71c1e3dbfbe5df5b283d48f641863bad56bad81fc3355848aae" [label=""];
  "sha256:4bbd0d0a01a2241fb90168152748d1bb94172115b6886d9d1e50db6b7942f74b" -> "sha256:d7534f6e3b2ea71c1e3dbfbe5df5b283d48f641863bad56bad81fc3355848aae" [label=""];
  "sha256:d7534f6e3b2ea71c1e3dbfbe5df5b283d48f641863bad56bad81fc3355848aae" -> "sha256:5e77523958a8aa8d947f38dbf79b029f17097c584ef21b491270ba1333b3e13e" [label=""];
  "sha256:5e77523958a8aa8d947f38dbf79b029f17097c584ef21b491270ba1333b3e13e" -> "sha256:876c83e36095732d82386a260fc4b487c568a3ca1f786f4d6042e379b3a06da8" [label=""];
  "sha256:876c83e36095732d82386a260fc4b487c568a3ca1f786f4d6042e379b3a06da8" -> "sha256:c0bdfe891e0c3ee99435e8b1277323400879758de8853830d260d1b0d0dcf56c" [label=""];
  "sha256:c0bdfe891e0c3ee99435e8b1277323400879758de8853830d260d1b0d0dcf56c" -> "sha256:b56a0f96a8f5d9e93d770f851563b52267cbbe0d670ef54d21f87f6e995d6bd7" [label=""];
  "sha256:b56a0f96a8f5d9e93d770f851563b52267cbbe0d670ef54d21f87f6e995d6bd7" -> "sha256:1335f1697822d07a607b2731a8b0b4efa0b52c203c97e1a8a0a62b3366302a45" [label=""];
  "sha256:1335f1697822d07a607b2731a8b0b4efa0b52c203c97e1a8a0a62b3366302a45" -> "sha256:71f07c0744a852d9efb9c289a4d0dc397de99d88e7b7527df7856b19a4b37d0c" [label=""];
  "sha256:71f07c0744a852d9efb9c289a4d0dc397de99d88e7b7527df7856b19a4b37d0c" -> "sha256:e87e6914539a9fad277b2b8e4a4f76ebeb45db8c9612f00b084f00616bd2f1c1" [label=""];
  "sha256:e87e6914539a9fad277b2b8e4a4f76ebeb45db8c9612f00b084f00616bd2f1c1" -> "sha256:5579b2425dc5ddb2aa758a65f394fdd844467c6073c325e1bf408282c5bdc970" [label=""];
  "sha256:5579b2425dc5ddb2aa758a65f394fdd844467c6073c325e1bf408282c5bdc970" -> "sha256:4cd2fc9a3bca8e62227e810874614d7e8a2fc9d5617ab52d0be2f6c6484acba4" [label=""];
}

