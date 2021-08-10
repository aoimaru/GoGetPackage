[app/sources/385434312.Dockerfile]
digraph {
  "sha256:0e79ed4c8befd7079c742a2d75f9229f9d1fdb7054e96dccf69403a4e207a0b8" [label="local://context" shape="ellipse"];
  "sha256:38306fd4f8f32c713dd2bab8e074b01ff170c12f8403d057a18399cece05a9e6" [label="docker-image://docker.io/linagora/fpm-centos-7:latest" shape="ellipse"];
  "sha256:adff9cf82df0b00c65ace67f516f472ad7b7986e373e812748a5a53da3541579" [label="/bin/sh -c yum install -y rpm-build" shape="box"];
  "sha256:f89378e6b5c52ce0a11eadbc326a9ee1e7c8da31236ecf7b7f45ad6ca417510d" [label="copy{src=/common/openpaas-james/package, dest=/package}" shape="note"];
  "sha256:29ee7c674a510e5b20995026a23d672e0fee7aeec3c1273c7e9e7ba8c3034234" [label="copy{src=/redhat/7/openpaas-james/package, dest=/package}" shape="note"];
  "sha256:798aacc9fa39cae8c691843c393ddec97ce80a8eeaf529465d66b98af8cbd670" [label="copy{src=/common/openpaas-james/openpaas-james.preinst, dest=/root/}" shape="note"];
  "sha256:9a7e143af9260e00e33c552a5ef1d34dc6d7d5db42c473462444a04b435fd40e" [label="copy{src=/common/openpaas-james/openpaas-james.postinst, dest=/root/}" shape="note"];
  "sha256:05e0ba9b3214344057c87607e5a62ea49bd5cc7e7dbe4ecb86e3aaded2bf7b41" [label="copy{src=/common/openpaas-james/openpaas-james.postrm, dest=/root/}" shape="note"];
  "sha256:bf2765b9e6babb4e8312ebea4eb9676ab5f4c2b33b1c72c1fa44b09e7db420cd" [label="mkdir{path=/package}" shape="note"];
  "sha256:24c9cfa92bc133cd1a4f8574b8750a544694eaf87003ebdc3b75477a0508a1e2" [label="/bin/sh -c fpm   -s dir   -t rpm   --name openpaas-james   --version $VERSION   --iteration $ITERATION   --license AGPLv3   --vendor Linagora   --maintainer \"Linagora Folks <lgs-openpaas-dev@linagora.com>\"   --description \"OpenPaas Enterprise Social Network - *DAV Server\"   --url \"http://open-paas.org\"   --architecture x86_64   --directories /var/log/openpaas/james   --rpm-user openpaas   --rpm-group openpaas   --rpm-dist el7   --depends nginx   --depends james   --depends cassandra   --config-files etc/james   --before-install /root/openpaas-james.preinst   --after-install /root/openpaas-james.postinst   --after-remove /root/openpaas-james.postrm   ." shape="box"];
  "sha256:7adaa5e838f358b220a7b04f42174c81a648b3c43d51cda9f027679af04226b1" [label="sha256:7adaa5e838f358b220a7b04f42174c81a648b3c43d51cda9f027679af04226b1" shape="plaintext"];
  "sha256:38306fd4f8f32c713dd2bab8e074b01ff170c12f8403d057a18399cece05a9e6" -> "sha256:adff9cf82df0b00c65ace67f516f472ad7b7986e373e812748a5a53da3541579" [label=""];
  "sha256:adff9cf82df0b00c65ace67f516f472ad7b7986e373e812748a5a53da3541579" -> "sha256:f89378e6b5c52ce0a11eadbc326a9ee1e7c8da31236ecf7b7f45ad6ca417510d" [label=""];
  "sha256:0e79ed4c8befd7079c742a2d75f9229f9d1fdb7054e96dccf69403a4e207a0b8" -> "sha256:f89378e6b5c52ce0a11eadbc326a9ee1e7c8da31236ecf7b7f45ad6ca417510d" [label=""];
  "sha256:f89378e6b5c52ce0a11eadbc326a9ee1e7c8da31236ecf7b7f45ad6ca417510d" -> "sha256:29ee7c674a510e5b20995026a23d672e0fee7aeec3c1273c7e9e7ba8c3034234" [label=""];
  "sha256:0e79ed4c8befd7079c742a2d75f9229f9d1fdb7054e96dccf69403a4e207a0b8" -> "sha256:29ee7c674a510e5b20995026a23d672e0fee7aeec3c1273c7e9e7ba8c3034234" [label=""];
  "sha256:29ee7c674a510e5b20995026a23d672e0fee7aeec3c1273c7e9e7ba8c3034234" -> "sha256:798aacc9fa39cae8c691843c393ddec97ce80a8eeaf529465d66b98af8cbd670" [label=""];
  "sha256:0e79ed4c8befd7079c742a2d75f9229f9d1fdb7054e96dccf69403a4e207a0b8" -> "sha256:798aacc9fa39cae8c691843c393ddec97ce80a8eeaf529465d66b98af8cbd670" [label=""];
  "sha256:798aacc9fa39cae8c691843c393ddec97ce80a8eeaf529465d66b98af8cbd670" -> "sha256:9a7e143af9260e00e33c552a5ef1d34dc6d7d5db42c473462444a04b435fd40e" [label=""];
  "sha256:0e79ed4c8befd7079c742a2d75f9229f9d1fdb7054e96dccf69403a4e207a0b8" -> "sha256:9a7e143af9260e00e33c552a5ef1d34dc6d7d5db42c473462444a04b435fd40e" [label=""];
  "sha256:9a7e143af9260e00e33c552a5ef1d34dc6d7d5db42c473462444a04b435fd40e" -> "sha256:05e0ba9b3214344057c87607e5a62ea49bd5cc7e7dbe4ecb86e3aaded2bf7b41" [label=""];
  "sha256:0e79ed4c8befd7079c742a2d75f9229f9d1fdb7054e96dccf69403a4e207a0b8" -> "sha256:05e0ba9b3214344057c87607e5a62ea49bd5cc7e7dbe4ecb86e3aaded2bf7b41" [label=""];
  "sha256:05e0ba9b3214344057c87607e5a62ea49bd5cc7e7dbe4ecb86e3aaded2bf7b41" -> "sha256:bf2765b9e6babb4e8312ebea4eb9676ab5f4c2b33b1c72c1fa44b09e7db420cd" [label=""];
  "sha256:bf2765b9e6babb4e8312ebea4eb9676ab5f4c2b33b1c72c1fa44b09e7db420cd" -> "sha256:24c9cfa92bc133cd1a4f8574b8750a544694eaf87003ebdc3b75477a0508a1e2" [label=""];
  "sha256:24c9cfa92bc133cd1a4f8574b8750a544694eaf87003ebdc3b75477a0508a1e2" -> "sha256:7adaa5e838f358b220a7b04f42174c81a648b3c43d51cda9f027679af04226b1" [label=""];
}

