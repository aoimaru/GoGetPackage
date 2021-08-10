[app/sources/168271570.Dockerfile]
digraph {
  "sha256:c981ca584c8842cb27f5996a6a1855626c7b6e392f2ad75adcc9c90c1b984472" [label="local://context" shape="ellipse"];
  "sha256:d865beec0a6e6a7b94fce9273893faab92de0ffb657dabdfb480c958dd7658d0" [label="docker-image://docker.io/library/rhel:7.2-released" shape="ellipse"];
  "sha256:d94dd57e7cecdbfde06655a03a054ce1a2e9acdf6f2bdf135fb7794c0f12af92" [label="copy{src=/contrib/scl_enable, dest=/opt/app-root/etc/scl_enable}" shape="note"];
  "sha256:ad7d70a1296ba74c279b08c9ab03ea5011b0273a19a49d3ac68623132d2172e9" [label="/bin/sh -c yum-config-manager --enable rhel-7-server-optional-rpms &&   INSTALL_PKGS=\"autoconf   automake   bsdtar   findutils   gcc-c++   gd-devel   gdb   gettext   git   libcurl-devel   libxml2-devel   libxslt-devel   lsof   make   mariadb-devel   mariadb-libs   openssl-devel   patch   postgresql-devel   procps-ng   scl-utils   sqlite-devel   tar   unzip   wget   which   yum-utils   zlib-devel\" &&   mkdir -p ${HOME}/.pki/nssdb &&   chown -R 1001:0 ${HOME}/.pki &&   yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS &&   rpm -V $INSTALL_PKGS &&   yum clean all -y &&   useradd -u 1001 -r -g 0 -d ${HOME} -s /sbin/nologin       -c \"Default Application User\" default &&   chown -R 1001:0 /opt/app-root" shape="box"];
  "sha256:2497f02a1b0c38c55261cf5af5eaeb90986f4347cf2d3393b643b458c5f6d95a" [label="copy{src=/bin, dest=/usr/bin/}" shape="note"];
  "sha256:7a559408fb3f0d9190098c331641a6067328e0baa8c23969ad4349425d347f5a" [label="mkdir{path=/opt/app-root/src}" shape="note"];
  "sha256:0a959117027fd0f5028665b778cb118be265ba81f82bb332d06a8d5624282f68" [label="sha256:0a959117027fd0f5028665b778cb118be265ba81f82bb332d06a8d5624282f68" shape="plaintext"];
  "sha256:d865beec0a6e6a7b94fce9273893faab92de0ffb657dabdfb480c958dd7658d0" -> "sha256:d94dd57e7cecdbfde06655a03a054ce1a2e9acdf6f2bdf135fb7794c0f12af92" [label=""];
  "sha256:c981ca584c8842cb27f5996a6a1855626c7b6e392f2ad75adcc9c90c1b984472" -> "sha256:d94dd57e7cecdbfde06655a03a054ce1a2e9acdf6f2bdf135fb7794c0f12af92" [label=""];
  "sha256:d94dd57e7cecdbfde06655a03a054ce1a2e9acdf6f2bdf135fb7794c0f12af92" -> "sha256:ad7d70a1296ba74c279b08c9ab03ea5011b0273a19a49d3ac68623132d2172e9" [label=""];
  "sha256:ad7d70a1296ba74c279b08c9ab03ea5011b0273a19a49d3ac68623132d2172e9" -> "sha256:2497f02a1b0c38c55261cf5af5eaeb90986f4347cf2d3393b643b458c5f6d95a" [label=""];
  "sha256:c981ca584c8842cb27f5996a6a1855626c7b6e392f2ad75adcc9c90c1b984472" -> "sha256:2497f02a1b0c38c55261cf5af5eaeb90986f4347cf2d3393b643b458c5f6d95a" [label=""];
  "sha256:2497f02a1b0c38c55261cf5af5eaeb90986f4347cf2d3393b643b458c5f6d95a" -> "sha256:7a559408fb3f0d9190098c331641a6067328e0baa8c23969ad4349425d347f5a" [label=""];
  "sha256:7a559408fb3f0d9190098c331641a6067328e0baa8c23969ad4349425d347f5a" -> "sha256:0a959117027fd0f5028665b778cb118be265ba81f82bb332d06a8d5624282f68" [label=""];
}

