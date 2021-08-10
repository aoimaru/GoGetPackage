[app/sources/345066902.Dockerfile]
digraph {
  "sha256:4c2818372f2700ea69df01c6dd69d0e6ea63a7630f59183d1be5bdbf10a495f4" [label="docker-image://docker.io/bitnami/oraclelinux-runtimes:7-r349@sha256:81fd1916a2145c26ba154b1357d1365b0a2c39afd89de3b04909b0527f0efdc0" shape="ellipse"];
  "sha256:6167d12bdb9c4356ba300098f315d6167b856135c58438fb0f58474c788ca238" [label="/bin/sh -c install_packages ca-certificates glibc keyutils-libs krb5-libs libcom_err libselinux ncurses-libs nss-softokn-freebl openssl-libs pcre readline wget zlib" shape="box"];
  "sha256:81ec6e1869359197814c8173c52b79b75b9164ab884f373b9061a7c47e2e441d" [label="docker-image://docker.io/bitnami/ruby:2.6.3-ol-7-r59@sha256:3aa5cc3e430f8e1ecb01920df8b00eb167dd53fc25f53f928b60c6056fd4ba3a" shape="ellipse"];
  "sha256:98d1fea04cb7e3d12f8445b5af1fdc5a621e70f68be895e0f05008ccd4682b3c" [label="copy{src=/opt/bitnami/ruby, dest=/opt/bitnami/ruby}" shape="note"];
  "sha256:7ed82fb2437d7af3801822eb05b557548ef592b95a3d72489ffa571b9d9fc5cb" [label="sha256:7ed82fb2437d7af3801822eb05b557548ef592b95a3d72489ffa571b9d9fc5cb" shape="plaintext"];
  "sha256:4c2818372f2700ea69df01c6dd69d0e6ea63a7630f59183d1be5bdbf10a495f4" -> "sha256:6167d12bdb9c4356ba300098f315d6167b856135c58438fb0f58474c788ca238" [label=""];
  "sha256:6167d12bdb9c4356ba300098f315d6167b856135c58438fb0f58474c788ca238" -> "sha256:98d1fea04cb7e3d12f8445b5af1fdc5a621e70f68be895e0f05008ccd4682b3c" [label=""];
  "sha256:81ec6e1869359197814c8173c52b79b75b9164ab884f373b9061a7c47e2e441d" -> "sha256:98d1fea04cb7e3d12f8445b5af1fdc5a621e70f68be895e0f05008ccd4682b3c" [label=""];
  "sha256:98d1fea04cb7e3d12f8445b5af1fdc5a621e70f68be895e0f05008ccd4682b3c" -> "sha256:7ed82fb2437d7af3801822eb05b557548ef592b95a3d72489ffa571b9d9fc5cb" [label=""];
}

