[app/sources/211399132.Dockerfile]
digraph {
  "sha256:502dfa1c6b2a3d7f8a17e7d8b544eb20d63420609bbbca2c5ec9a3312e0591fa" [label="local://context" shape="ellipse"];
  "sha256:316ede46d95a7f73b36e9ebe3e463792d61d07dcd5b5d799431b8e1da50e1bd9" [label="docker-image://docker.io/centos/s2i-core-centos7:latest" shape="ellipse"];
  "sha256:1e0ff9863846fd51f21da9b569002e8fa3bb6fecf3a915f49c4c75b7b9aea414" [label="/bin/sh -c yum install -y centos-release-scl-rh &&     INSTALL_PKGS=\"rsync tar gettext hostname bind-utils groff-base shadow-utils rh-mariadb101\" &&     yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all &&     mkdir -p /var/lib/mysql/data && chown -R mysql.0 /var/lib/mysql &&     test \"$(id mysql)\" = \"uid=27(mysql) gid=27(mysql) groups=27(mysql)\"" shape="box"];
  "sha256:dab765f8c3ad6beadcf2d231a7a4a4f9e6979643efcb32102a56caecfebaa056" [label="copy{src=/10.1/root-common, dest=/}" shape="note"];
  "sha256:340f720906202422b24d7b05a5695a941e5d78899100ca16d6a514c8d1373b13" [label="copy{src=/10.1/s2i-common/bin, dest=/}" shape="note"];
  "sha256:26bfad36cba7a630a233b99d70a8ff3ef022a73d013f22535435e3033620c9dc" [label="copy{src=/10.1/root, dest=/}" shape="note"];
  "sha256:be627b9fe4b0f4075d0c1c36535f14a440b7be0926530ff38fbc575ec29bbf7c" [label="/bin/sh -c rm -rf /etc/my.cnf.d/* &&     /usr/libexec/container-setup &&     rpm-file-permissions" shape="box"];
  "sha256:7a1dfa2b938393cf94390762f0ba47c5992bfdcf6c137a6cb692cf05d1e0704a" [label="sha256:7a1dfa2b938393cf94390762f0ba47c5992bfdcf6c137a6cb692cf05d1e0704a" shape="plaintext"];
  "sha256:316ede46d95a7f73b36e9ebe3e463792d61d07dcd5b5d799431b8e1da50e1bd9" -> "sha256:1e0ff9863846fd51f21da9b569002e8fa3bb6fecf3a915f49c4c75b7b9aea414" [label=""];
  "sha256:1e0ff9863846fd51f21da9b569002e8fa3bb6fecf3a915f49c4c75b7b9aea414" -> "sha256:dab765f8c3ad6beadcf2d231a7a4a4f9e6979643efcb32102a56caecfebaa056" [label=""];
  "sha256:502dfa1c6b2a3d7f8a17e7d8b544eb20d63420609bbbca2c5ec9a3312e0591fa" -> "sha256:dab765f8c3ad6beadcf2d231a7a4a4f9e6979643efcb32102a56caecfebaa056" [label=""];
  "sha256:dab765f8c3ad6beadcf2d231a7a4a4f9e6979643efcb32102a56caecfebaa056" -> "sha256:340f720906202422b24d7b05a5695a941e5d78899100ca16d6a514c8d1373b13" [label=""];
  "sha256:502dfa1c6b2a3d7f8a17e7d8b544eb20d63420609bbbca2c5ec9a3312e0591fa" -> "sha256:340f720906202422b24d7b05a5695a941e5d78899100ca16d6a514c8d1373b13" [label=""];
  "sha256:340f720906202422b24d7b05a5695a941e5d78899100ca16d6a514c8d1373b13" -> "sha256:26bfad36cba7a630a233b99d70a8ff3ef022a73d013f22535435e3033620c9dc" [label=""];
  "sha256:502dfa1c6b2a3d7f8a17e7d8b544eb20d63420609bbbca2c5ec9a3312e0591fa" -> "sha256:26bfad36cba7a630a233b99d70a8ff3ef022a73d013f22535435e3033620c9dc" [label=""];
  "sha256:26bfad36cba7a630a233b99d70a8ff3ef022a73d013f22535435e3033620c9dc" -> "sha256:be627b9fe4b0f4075d0c1c36535f14a440b7be0926530ff38fbc575ec29bbf7c" [label=""];
  "sha256:be627b9fe4b0f4075d0c1c36535f14a440b7be0926530ff38fbc575ec29bbf7c" -> "sha256:7a1dfa2b938393cf94390762f0ba47c5992bfdcf6c137a6cb692cf05d1e0704a" [label=""];
}

