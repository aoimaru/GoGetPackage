[app/sources/207551854.Dockerfile]
digraph {
  "sha256:ceb186f9e99e95b209d5237dbd65414da5dfad14f1d0b0cc5747d806e98f9c80" [label="docker-image://docker.io/rhscl/s2i-core-rhel7:1" shape="ellipse"];
  "sha256:5fa4d85567e4a6730a9bf4bba87010fd0a58574f77b55e9d9d1b482de4bba634" [label="/bin/sh -c yum install -y yum-utils &&     prepare-yum-repositories rhel-server-rhscl-7-rpms &&     INSTALL_PKGS=\"nss_wrapper bind-utils gettext hostname rh-nginx${NGINX_SHORT_VER} rh-nginx${NGINX_SHORT_VER}-nginx\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all" shape="box"];
  "sha256:db40ba73b9379d7d49c8337a6f1c18756f97b53ae1bf8e4b97f4e19c05723e49" [label="local://context" shape="ellipse"];
  "sha256:e0a1b842fcf458809c74c915d91e9db7be942950e8009ab2a307295f0fb3cf8c" [label="copy{src=/s2i/bin, dest=/}" shape="note"];
  "sha256:1685c1eb66cbab2558df11c646da639f5a7a1105ebee5062a4d4e88f2b647c46" [label="copy{src=/root, dest=/}" shape="note"];
  "sha256:0572d18dcfce43b0083d458ac42cd9dbe4dbb8a00d524d797b67816b930a863b" [label="/bin/sh -c sed -i -f ${NGINX_APP_ROOT}/nginxconf.sed ${NGINX_CONF_PATH} &&     chmod a+rwx ${NGINX_CONF_PATH} &&     mkdir -p ${NGINX_APP_ROOT}/etc/nginx.d/ &&     mkdir -p ${NGINX_APP_ROOT}/etc/nginx.default.d/ &&     mkdir -p ${NGINX_APP_ROOT}/src/nginx-start/ &&     mkdir -p ${NGINX_CONTAINER_SCRIPTS_PATH}/nginx-start &&     mkdir -p ${NGINX_LOG_PATH} &&     ln -s ${NGINX_LOG_PATH} /var/log/nginx &&     chmod -R a+rwx ${NGINX_APP_ROOT}/etc &&     chmod -R a+rwx /var/opt/rh/rh-nginx${NGINX_SHORT_VER} &&     chmod -R a+rwx ${NGINX_CONTAINER_SCRIPTS_PATH}/nginx-start &&     chown -R 1001:0 ${NGINX_APP_ROOT} &&     chown -R 1001:0 /var/opt/rh/rh-nginx${NGINX_SHORT_VER} &&     chown -R 1001:0 ${NGINX_CONTAINER_SCRIPTS_PATH}/nginx-start &&     rpm-file-permissions" shape="box"];
  "sha256:69b55968e66ca357353df6e8646782a907ee02c1078cc0ae740f515d94ba75d7" [label="sha256:69b55968e66ca357353df6e8646782a907ee02c1078cc0ae740f515d94ba75d7" shape="plaintext"];
  "sha256:ceb186f9e99e95b209d5237dbd65414da5dfad14f1d0b0cc5747d806e98f9c80" -> "sha256:5fa4d85567e4a6730a9bf4bba87010fd0a58574f77b55e9d9d1b482de4bba634" [label=""];
  "sha256:5fa4d85567e4a6730a9bf4bba87010fd0a58574f77b55e9d9d1b482de4bba634" -> "sha256:e0a1b842fcf458809c74c915d91e9db7be942950e8009ab2a307295f0fb3cf8c" [label=""];
  "sha256:db40ba73b9379d7d49c8337a6f1c18756f97b53ae1bf8e4b97f4e19c05723e49" -> "sha256:e0a1b842fcf458809c74c915d91e9db7be942950e8009ab2a307295f0fb3cf8c" [label=""];
  "sha256:e0a1b842fcf458809c74c915d91e9db7be942950e8009ab2a307295f0fb3cf8c" -> "sha256:1685c1eb66cbab2558df11c646da639f5a7a1105ebee5062a4d4e88f2b647c46" [label=""];
  "sha256:db40ba73b9379d7d49c8337a6f1c18756f97b53ae1bf8e4b97f4e19c05723e49" -> "sha256:1685c1eb66cbab2558df11c646da639f5a7a1105ebee5062a4d4e88f2b647c46" [label=""];
  "sha256:1685c1eb66cbab2558df11c646da639f5a7a1105ebee5062a4d4e88f2b647c46" -> "sha256:0572d18dcfce43b0083d458ac42cd9dbe4dbb8a00d524d797b67816b930a863b" [label=""];
  "sha256:0572d18dcfce43b0083d458ac42cd9dbe4dbb8a00d524d797b67816b930a863b" -> "sha256:69b55968e66ca357353df6e8646782a907ee02c1078cc0ae740f515d94ba75d7" [label=""];
}

