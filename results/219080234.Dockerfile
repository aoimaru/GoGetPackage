[app/sources/219080234.Dockerfile]
digraph {
  "sha256:e03feedcc6cb130a783f9feb9b5d570d920e244959260e30ea345fe150c26330" [label="docker-image://docker.io/rhscl/s2i-core-rhel7:latest" shape="ellipse"];
  "sha256:0d368173435922c68e67baa6a3038b510074a99dcc4e8f84bfa0dc24b6df7091" [label="/bin/sh -c yum install -y yum-utils &&     prepare-yum-repositories rhel-server-rhscl-7-rpms &&     INSTALL_PKGS=\"rsync tar gettext hostname bind-utils groff-base shadow-utils rh-mysql57\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all &&     mkdir -p /var/lib/mysql/data && chown -R mysql.0 /var/lib/mysql &&     test \"$(id mysql)\" = \"uid=27(mysql) gid=27(mysql) groups=27(mysql)\"" shape="box"];
  "sha256:cd27dde9db8da83e8090d35cb6ddd800f124fcb409f6014ec010c1565eeb496c" [label="local://context" shape="ellipse"];
  "sha256:a199f06813afb919a3899d354029d322934a21d22f52ccc335b5e44a6af9eab9" [label="copy{src=/5.7/root-common, dest=/}" shape="note"];
  "sha256:fade04978f412f2a45cd43748a0f01b28c21dcf7a4ddb7b194a152d1ff4ba936" [label="copy{src=/5.7/s2i-common/bin, dest=/}" shape="note"];
  "sha256:a9d631725b25bd10487d4a4aa5830b67405a2b3e8c65f95103f50c709b30b922" [label="copy{src=/5.7/root, dest=/}" shape="note"];
  "sha256:81e17747ba45715f8c9722a04c9c2581302d006dbf2adf97b26e2b7d7e0e18f4" [label="/bin/sh -c rm -rf /etc/my.cnf.d/* &&     /usr/libexec/container-setup &&     rpm-file-permissions" shape="box"];
  "sha256:729114a4a5f3110079634ee9c6b2ac8582fe8e7f79be6da32ac948a0122dfd26" [label="sha256:729114a4a5f3110079634ee9c6b2ac8582fe8e7f79be6da32ac948a0122dfd26" shape="plaintext"];
  "sha256:e03feedcc6cb130a783f9feb9b5d570d920e244959260e30ea345fe150c26330" -> "sha256:0d368173435922c68e67baa6a3038b510074a99dcc4e8f84bfa0dc24b6df7091" [label=""];
  "sha256:0d368173435922c68e67baa6a3038b510074a99dcc4e8f84bfa0dc24b6df7091" -> "sha256:a199f06813afb919a3899d354029d322934a21d22f52ccc335b5e44a6af9eab9" [label=""];
  "sha256:cd27dde9db8da83e8090d35cb6ddd800f124fcb409f6014ec010c1565eeb496c" -> "sha256:a199f06813afb919a3899d354029d322934a21d22f52ccc335b5e44a6af9eab9" [label=""];
  "sha256:a199f06813afb919a3899d354029d322934a21d22f52ccc335b5e44a6af9eab9" -> "sha256:fade04978f412f2a45cd43748a0f01b28c21dcf7a4ddb7b194a152d1ff4ba936" [label=""];
  "sha256:cd27dde9db8da83e8090d35cb6ddd800f124fcb409f6014ec010c1565eeb496c" -> "sha256:fade04978f412f2a45cd43748a0f01b28c21dcf7a4ddb7b194a152d1ff4ba936" [label=""];
  "sha256:fade04978f412f2a45cd43748a0f01b28c21dcf7a4ddb7b194a152d1ff4ba936" -> "sha256:a9d631725b25bd10487d4a4aa5830b67405a2b3e8c65f95103f50c709b30b922" [label=""];
  "sha256:cd27dde9db8da83e8090d35cb6ddd800f124fcb409f6014ec010c1565eeb496c" -> "sha256:a9d631725b25bd10487d4a4aa5830b67405a2b3e8c65f95103f50c709b30b922" [label=""];
  "sha256:a9d631725b25bd10487d4a4aa5830b67405a2b3e8c65f95103f50c709b30b922" -> "sha256:81e17747ba45715f8c9722a04c9c2581302d006dbf2adf97b26e2b7d7e0e18f4" [label=""];
  "sha256:81e17747ba45715f8c9722a04c9c2581302d006dbf2adf97b26e2b7d7e0e18f4" -> "sha256:729114a4a5f3110079634ee9c6b2ac8582fe8e7f79be6da32ac948a0122dfd26" [label=""];
}

