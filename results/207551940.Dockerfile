[app/sources/207551940.Dockerfile]
digraph {
  "sha256:ceb186f9e99e95b209d5237dbd65414da5dfad14f1d0b0cc5747d806e98f9c80" [label="docker-image://docker.io/rhscl/s2i-core-rhel7:1" shape="ellipse"];
  "sha256:8915f3a289a6846ff0926d3763515a2c6e7e84b21a883dc7c433e939ea6bc8ee" [label="/bin/sh -c yum install -y yum-utils &&     prepare-yum-repositories rhel-server-rhscl-7-rpms &&     INSTALL_PKGS=\"nss_wrapper bind-utils gettext hostname rh-nginx18 rh-nginx18-nginx\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all" shape="box"];
  "sha256:8e0116e7f390258409f6b7c8b1b7b10f0172326c8ec15031c4a67da1b066253e" [label="local://context" shape="ellipse"];
  "sha256:bdd873acf770b947245b7b5dc4df95f3bfbbc612d82ee911512b9a26e5d59974" [label="copy{src=/s2i/bin, dest=/}" shape="note"];
  "sha256:96e14f76d13bdfa8657623adb1002ae38bf34abf161a19ac2a2aeb8894d4f168" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:cf82576a143b23c2d9ef8c990651ec76f6a683350ef44b2c4884ba40f5065422" [label="/bin/sh -c sed -i -f ${NGINX_APP_ROOT}/nginxconf.sed /etc/opt/rh/rh-nginx18/nginx/nginx.conf &&     mkdir -p ${NGINX_APP_ROOT}/etc/nginx.d/ &&     mkdir -p ${NGINX_APP_ROOT}/etc/nginx.default.d/ &&     mkdir -p ${NGINX_APP_ROOT}/src/nginx-start/ &&     mkdir -p ${NGINX_CONTAINER_SCRIPTS_PATH}/nginx-start &&     chmod -R a+rwx ${NGINX_APP_ROOT}/etc &&     chmod -R a+rwx /var/opt/rh/rh-nginx18 &&     chmod -R a+rwx ${NGINX_CONTAINER_SCRIPTS_PATH}/nginx-start &&     chown -R 1001:0 ${NGINX_APP_ROOT} &&     chown -R 1001:0 /var/opt/rh/rh-nginx18 &&     chown -R 1001:0 ${NGINX_CONTAINER_SCRIPTS_PATH}/nginx-start &&     rpm-file-permissions" shape="box"];
  "sha256:758453bac8b63a85a61a3d089310196c11b5853b271ef5c1989e67368929febc" [label="sha256:758453bac8b63a85a61a3d089310196c11b5853b271ef5c1989e67368929febc" shape="plaintext"];
  "sha256:ceb186f9e99e95b209d5237dbd65414da5dfad14f1d0b0cc5747d806e98f9c80" -> "sha256:8915f3a289a6846ff0926d3763515a2c6e7e84b21a883dc7c433e939ea6bc8ee" [label=""];
  "sha256:8915f3a289a6846ff0926d3763515a2c6e7e84b21a883dc7c433e939ea6bc8ee" -> "sha256:bdd873acf770b947245b7b5dc4df95f3bfbbc612d82ee911512b9a26e5d59974" [label=""];
  "sha256:8e0116e7f390258409f6b7c8b1b7b10f0172326c8ec15031c4a67da1b066253e" -> "sha256:bdd873acf770b947245b7b5dc4df95f3bfbbc612d82ee911512b9a26e5d59974" [label=""];
  "sha256:bdd873acf770b947245b7b5dc4df95f3bfbbc612d82ee911512b9a26e5d59974" -> "sha256:96e14f76d13bdfa8657623adb1002ae38bf34abf161a19ac2a2aeb8894d4f168" [label=""];
  "sha256:8e0116e7f390258409f6b7c8b1b7b10f0172326c8ec15031c4a67da1b066253e" -> "sha256:96e14f76d13bdfa8657623adb1002ae38bf34abf161a19ac2a2aeb8894d4f168" [label=""];
  "sha256:96e14f76d13bdfa8657623adb1002ae38bf34abf161a19ac2a2aeb8894d4f168" -> "sha256:cf82576a143b23c2d9ef8c990651ec76f6a683350ef44b2c4884ba40f5065422" [label=""];
  "sha256:cf82576a143b23c2d9ef8c990651ec76f6a683350ef44b2c4884ba40f5065422" -> "sha256:758453bac8b63a85a61a3d089310196c11b5853b271ef5c1989e67368929febc" [label=""];
}

