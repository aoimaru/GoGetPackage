[app/sources/254830913.Dockerfile]
digraph {
  "sha256:7758875aa1bbb1197a5d7d809a9cf9587b69dc93efc8461053e1399deb4432a5" [label="docker-image://docker.io/snapcraft/ubuntu-base:amd64-16.04.1" shape="ellipse"];
  "sha256:16aefe0dbaf9de158e1c2f0ca70da74e62da7fe21ae4d41b498f2da2ac78329b" [label="/bin/sh -c sed -i \"/^# deb.*universe/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:7df77738a88f998c768f902b794f2473daf644415c42f64f1268b74027e8f5ff" [label="/bin/sh -c sed -i \"/^# deb.*multiverse/ s/^# //\" /etc/apt/sources.list" shape="box"];
  "sha256:75570ecee44e0edd9b2824c586a5fbed283ebe45d190e9c78560a94878332676" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e4a1abfa7afcb552786b8d06faf55b4f7dc51a351722ec954e6c91039848e51d" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:2b4e209ea5e9b7d9e9066533964bfccd801039890086c3b0b1d9465f0e99f76e" [label="/bin/sh -c apt-get install -y --no-install-recommends         devscripts         equivs         git         ca-certificates         curl" shape="box"];
  "sha256:84f98e947e0e593c0dea597d0ca37fb8f387425483487350a7e32256318252bc" [label="/bin/sh -c git clone --depth 1 --branch ${SNAPCRAFT_VERSION} https://github.com/snapcore/snapcraft  && cd snapcraft  && mk-build-deps debian/control -i --tool 'apt-get -y --no-install-recommends'  && dpkg-buildpackage -us -uc  && apt-get install -y ../*.deb  && apt-get remove --purge -y devscripts equivs git python3-fixtures python3-responses python3-setuptools python3-testscenarios python3-testtools  && apt-get autoremove -y  && apt-get clean -y" shape="box"];
  "sha256:91cb99ca0932749388d2bc685a68e7ea6965d01347fac618c5213daf729ab69d" [label="/bin/sh -c rm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:483fb9648f082e91900f4df0b5fd3444d97130e39304ca8098aada026940780e" [label="/bin/sh -c apt-get install -y sudo" shape="box"];
  "sha256:8767edc6ef906f9407c3d2e95f133b21a292c212a7ecdb4eafd19cba4fd724ab" [label="/bin/sh -c echo \"ALL ALL=NOPASSWD: /usr/bin/apt-get\" >> /etc/sudoers.d/apt-get  && chmod 0440 /etc/sudoers.d/apt-get" shape="box"];
  "sha256:a2f138416cd0e16bb5d3a247c722c2d3d5c7c341b483ded7805ef11db7bf48e5" [label="/bin/sh -c for i in $(seq 500 1100); do echo snapper:x:$i:100:a build user:/build:/bin/bash ; done | tee -a /etc/passwd" shape="box"];
  "sha256:8518db831359896e045a7cb56bf99357aeabce74415ee1301031a07255c26d67" [label="/bin/sh -c apt-get clean" shape="box"];
  "sha256:610f87562ed4adea6434c3d9a40481e57dca2fa9d83d79e82ccbed11e514707b" [label="/bin/sh -c chgrp -R 100 /home  && chmod g+rwx /home" shape="box"];
  "sha256:632afc68074ccd898f13343618b291fb47c0fcc2304f238b5b12ce4a0fc221cf" [label="mkdir{path=/build}" shape="note"];
  "sha256:4539c36c2249cb4d20d08edb2daa5f2cf0fff61ecd501df98d93d9b03a3f62a6" [label="local://context" shape="ellipse"];
  "sha256:1422534f31e53a5eb1185daeb35a1dfe343bdba7ffbccb15f418b433cece67ca" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin}" shape="note"];
  "sha256:f50ca784e4d8a0a7a75757f1c9c485b38283c88d11469235718dbbe41f409dee" [label="/bin/sh -c chmod 755 /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:892fd0a71a7fef31723277077f1929546a8c04506a2a48a69a98f8354ffa22b9" [label="sha256:892fd0a71a7fef31723277077f1929546a8c04506a2a48a69a98f8354ffa22b9" shape="plaintext"];
  "sha256:7758875aa1bbb1197a5d7d809a9cf9587b69dc93efc8461053e1399deb4432a5" -> "sha256:16aefe0dbaf9de158e1c2f0ca70da74e62da7fe21ae4d41b498f2da2ac78329b" [label=""];
  "sha256:16aefe0dbaf9de158e1c2f0ca70da74e62da7fe21ae4d41b498f2da2ac78329b" -> "sha256:7df77738a88f998c768f902b794f2473daf644415c42f64f1268b74027e8f5ff" [label=""];
  "sha256:7df77738a88f998c768f902b794f2473daf644415c42f64f1268b74027e8f5ff" -> "sha256:75570ecee44e0edd9b2824c586a5fbed283ebe45d190e9c78560a94878332676" [label=""];
  "sha256:75570ecee44e0edd9b2824c586a5fbed283ebe45d190e9c78560a94878332676" -> "sha256:e4a1abfa7afcb552786b8d06faf55b4f7dc51a351722ec954e6c91039848e51d" [label=""];
  "sha256:e4a1abfa7afcb552786b8d06faf55b4f7dc51a351722ec954e6c91039848e51d" -> "sha256:2b4e209ea5e9b7d9e9066533964bfccd801039890086c3b0b1d9465f0e99f76e" [label=""];
  "sha256:2b4e209ea5e9b7d9e9066533964bfccd801039890086c3b0b1d9465f0e99f76e" -> "sha256:84f98e947e0e593c0dea597d0ca37fb8f387425483487350a7e32256318252bc" [label=""];
  "sha256:84f98e947e0e593c0dea597d0ca37fb8f387425483487350a7e32256318252bc" -> "sha256:91cb99ca0932749388d2bc685a68e7ea6965d01347fac618c5213daf729ab69d" [label=""];
  "sha256:91cb99ca0932749388d2bc685a68e7ea6965d01347fac618c5213daf729ab69d" -> "sha256:483fb9648f082e91900f4df0b5fd3444d97130e39304ca8098aada026940780e" [label=""];
  "sha256:483fb9648f082e91900f4df0b5fd3444d97130e39304ca8098aada026940780e" -> "sha256:8767edc6ef906f9407c3d2e95f133b21a292c212a7ecdb4eafd19cba4fd724ab" [label=""];
  "sha256:8767edc6ef906f9407c3d2e95f133b21a292c212a7ecdb4eafd19cba4fd724ab" -> "sha256:a2f138416cd0e16bb5d3a247c722c2d3d5c7c341b483ded7805ef11db7bf48e5" [label=""];
  "sha256:a2f138416cd0e16bb5d3a247c722c2d3d5c7c341b483ded7805ef11db7bf48e5" -> "sha256:8518db831359896e045a7cb56bf99357aeabce74415ee1301031a07255c26d67" [label=""];
  "sha256:8518db831359896e045a7cb56bf99357aeabce74415ee1301031a07255c26d67" -> "sha256:610f87562ed4adea6434c3d9a40481e57dca2fa9d83d79e82ccbed11e514707b" [label=""];
  "sha256:610f87562ed4adea6434c3d9a40481e57dca2fa9d83d79e82ccbed11e514707b" -> "sha256:632afc68074ccd898f13343618b291fb47c0fcc2304f238b5b12ce4a0fc221cf" [label=""];
  "sha256:632afc68074ccd898f13343618b291fb47c0fcc2304f238b5b12ce4a0fc221cf" -> "sha256:1422534f31e53a5eb1185daeb35a1dfe343bdba7ffbccb15f418b433cece67ca" [label=""];
  "sha256:4539c36c2249cb4d20d08edb2daa5f2cf0fff61ecd501df98d93d9b03a3f62a6" -> "sha256:1422534f31e53a5eb1185daeb35a1dfe343bdba7ffbccb15f418b433cece67ca" [label=""];
  "sha256:1422534f31e53a5eb1185daeb35a1dfe343bdba7ffbccb15f418b433cece67ca" -> "sha256:f50ca784e4d8a0a7a75757f1c9c485b38283c88d11469235718dbbe41f409dee" [label=""];
  "sha256:f50ca784e4d8a0a7a75757f1c9c485b38283c88d11469235718dbbe41f409dee" -> "sha256:892fd0a71a7fef31723277077f1929546a8c04506a2a48a69a98f8354ffa22b9" [label=""];
}

