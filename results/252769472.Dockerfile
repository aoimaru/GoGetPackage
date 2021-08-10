[app/sources/252769472.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:c30900346707cc13d7045429f290636da28f6ad1f53059e26a9206935b237761" [label="/bin/sh -c mkdir -p /usr/src/hello-world" shape="box"];
  "sha256:af6fbe26b29095776a2ab718eefe7b470101a8734aea726f2463413ee4b8b5c3" [label="local://context" shape="ellipse"];
  "sha256:6576079883c97fa2ea191fd4eb19ccb022c125f89470e774b8b836d352ebcbd6" [label="copy{src=/requirements.txt, dest=/usr/src/hello-world}" shape="note"];
  "sha256:cbc799b95fb746e7f8f8e0aac19d0394bcb96afd6abededa3254cac481d24b59" [label="mkdir{path=/usr/src/hello-world}" shape="note"];
  "sha256:8f7c8716022112aa6a3402802164687f8cfba1698b1849c6f9aefd82dfe62fd4" [label="/bin/sh -c yum -y install centos-release-scl && yum -y install --setopt=tsflags=nodocs rh-python35-python-pip && source scl_source enable rh-python35 && pip install --no-cache-dir -U pip setuptools && pip install --no-cache-dir -r requirements.txt && python -m pip uninstall -y pip setuptools && yum clean all" shape="box"];
  "sha256:04dc573ffe3ab0af18c55b154d6b00fa29283a8ca0e2b8f3080356bf2f31bec3" [label="/bin/sh -c echo $'#!/bin/sh\\nsource scl_source enable rh-python35\\nexec \"$@\"' > /usr/bin/entrypoint.sh && chmod +x /usr/bin/entrypoint.sh" shape="box"];
  "sha256:507796f4c2665e7edbc425dfcc949cb333d551d59915236a04cbcd40b7c8d174" [label="copy{src=/src, dest=/usr/src/hello-world/src}" shape="note"];
  "sha256:b4390985c66b96fa548736cb906ae0daa65e7db1f41a6916d402b8dfda112057" [label="mkdir{path=/usr/src/hello-world/src}" shape="note"];
  "sha256:2bb6e97c5d4b16edf9c356dba97e0ea5a65006f8879bc17710c63534855229a3" [label="sha256:2bb6e97c5d4b16edf9c356dba97e0ea5a65006f8879bc17710c63534855229a3" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:c30900346707cc13d7045429f290636da28f6ad1f53059e26a9206935b237761" [label=""];
  "sha256:c30900346707cc13d7045429f290636da28f6ad1f53059e26a9206935b237761" -> "sha256:6576079883c97fa2ea191fd4eb19ccb022c125f89470e774b8b836d352ebcbd6" [label=""];
  "sha256:af6fbe26b29095776a2ab718eefe7b470101a8734aea726f2463413ee4b8b5c3" -> "sha256:6576079883c97fa2ea191fd4eb19ccb022c125f89470e774b8b836d352ebcbd6" [label=""];
  "sha256:6576079883c97fa2ea191fd4eb19ccb022c125f89470e774b8b836d352ebcbd6" -> "sha256:cbc799b95fb746e7f8f8e0aac19d0394bcb96afd6abededa3254cac481d24b59" [label=""];
  "sha256:cbc799b95fb746e7f8f8e0aac19d0394bcb96afd6abededa3254cac481d24b59" -> "sha256:8f7c8716022112aa6a3402802164687f8cfba1698b1849c6f9aefd82dfe62fd4" [label=""];
  "sha256:8f7c8716022112aa6a3402802164687f8cfba1698b1849c6f9aefd82dfe62fd4" -> "sha256:04dc573ffe3ab0af18c55b154d6b00fa29283a8ca0e2b8f3080356bf2f31bec3" [label=""];
  "sha256:04dc573ffe3ab0af18c55b154d6b00fa29283a8ca0e2b8f3080356bf2f31bec3" -> "sha256:507796f4c2665e7edbc425dfcc949cb333d551d59915236a04cbcd40b7c8d174" [label=""];
  "sha256:af6fbe26b29095776a2ab718eefe7b470101a8734aea726f2463413ee4b8b5c3" -> "sha256:507796f4c2665e7edbc425dfcc949cb333d551d59915236a04cbcd40b7c8d174" [label=""];
  "sha256:507796f4c2665e7edbc425dfcc949cb333d551d59915236a04cbcd40b7c8d174" -> "sha256:b4390985c66b96fa548736cb906ae0daa65e7db1f41a6916d402b8dfda112057" [label=""];
  "sha256:b4390985c66b96fa548736cb906ae0daa65e7db1f41a6916d402b8dfda112057" -> "sha256:2bb6e97c5d4b16edf9c356dba97e0ea5a65006f8879bc17710c63534855229a3" [label=""];
}

