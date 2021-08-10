[app/sources/177319211.Dockerfile]
digraph {
  "sha256:3bc780459d5c6f5f679b044eb94450ecd26c81436b6ca363f54cf2b292081bab" [label="docker-image://docker.io/oracle/serverjre:8" shape="ellipse"];
  "sha256:803e7a440e037a88d882299dac2b3aa7eb74e20a0a744d909ff4dddddeaa5fc9" [label="/bin/sh -c groupadd --gid 1000 oracle &&     groupadd --gid 1010 oinstall &&     useradd --create-home --gid oracle --groups oracle,oinstall         --shell /bin/bash oracle &&     install --owner oracle --group oracle --mode=775 --verbose --directory         ${ORACLE_ROOT}         ${ORACLE_BASE}         ${ORACLE_DATA}         ${DOWNLOAD}         ${DOCKER_SCRIPTS} &&     ln -s ${ORACLE_DATA}/scripts /docker-entrypoint-initdb.d &&     chown oracle:oinstall ${DOWNLOAD} &&     sed -i 's/, 3DES_EDE_CBC//' $(find /usr/java -name java.security)" shape="box"];
  "sha256:619ae93f8d26afc06ce898d023e6ff00fb0505851b1ceabc8c4477e25b58dba4" [label="/bin/sh -c echo \"%_install_langs   en\" >/etc/rpm/macros.lang &&     [ -f /usr/bin/tar -a -f /usr/bin/gzip -a -f /lib64/libaio.so.? ] ||     yum install -y libaio gzip tar &&     rm -rf /var/cache/yum" shape="box"];
  "sha256:199f9dc8b9168e9d073f62ec75cf7e1fe99b0e1443e65f9666b3397195c87c34" [label="local://context" shape="ellipse"];
  "sha256:efa2d94d91190da6cd003507160d88667717d8f5b6f34e4d673d2d4e7e7c69ac" [label="copy{src=/scripts/*, dest=/opt/docker/bin/}" shape="note"];
  "sha256:69863f7575a93039adfd637e1be104c607e38e0972e5a454301fa2cf688e006d" [label="copy{src=/*zip*, dest=/tmp/download/},copy{src=/install.rsp, dest=/tmp/download/},copy{src=/oraInst.loc, dest=/tmp/download/}" shape="note"];
  "sha256:30d2021aeb9d9a8108ca17504d67103007a4f69a928167f13f1b1648e4fe0e05" [label="/bin/sh -c \"${DOCKER_SCRIPTS}/${INSTALL_SCRIPT}\" ${FMW_OUD_PKG}" shape="box"];
  "sha256:d181c058a4ecf072fdee73f8eb49ab4d45e07d1e47fa1e3864c62d8596ee7bff" [label="/bin/sh -c \"${DOCKER_SCRIPTS}/setup_oudbase.sh\"" shape="box"];
  "sha256:c4b93e341557de56d78ab1d0724c5f268e9ddcf2cc37509bb5275e7cd9a1fd62" [label="mkdir{path=/u00/app/oracle}" shape="note"];
  "sha256:22ee7aa52a4a835a500194926442c46fe9001ecaa7cd80e7fbd9b6b25f4f8f40" [label="sha256:22ee7aa52a4a835a500194926442c46fe9001ecaa7cd80e7fbd9b6b25f4f8f40" shape="plaintext"];
  "sha256:3bc780459d5c6f5f679b044eb94450ecd26c81436b6ca363f54cf2b292081bab" -> "sha256:803e7a440e037a88d882299dac2b3aa7eb74e20a0a744d909ff4dddddeaa5fc9" [label=""];
  "sha256:803e7a440e037a88d882299dac2b3aa7eb74e20a0a744d909ff4dddddeaa5fc9" -> "sha256:619ae93f8d26afc06ce898d023e6ff00fb0505851b1ceabc8c4477e25b58dba4" [label=""];
  "sha256:619ae93f8d26afc06ce898d023e6ff00fb0505851b1ceabc8c4477e25b58dba4" -> "sha256:efa2d94d91190da6cd003507160d88667717d8f5b6f34e4d673d2d4e7e7c69ac" [label=""];
  "sha256:199f9dc8b9168e9d073f62ec75cf7e1fe99b0e1443e65f9666b3397195c87c34" -> "sha256:efa2d94d91190da6cd003507160d88667717d8f5b6f34e4d673d2d4e7e7c69ac" [label=""];
  "sha256:efa2d94d91190da6cd003507160d88667717d8f5b6f34e4d673d2d4e7e7c69ac" -> "sha256:69863f7575a93039adfd637e1be104c607e38e0972e5a454301fa2cf688e006d" [label=""];
  "sha256:199f9dc8b9168e9d073f62ec75cf7e1fe99b0e1443e65f9666b3397195c87c34" -> "sha256:69863f7575a93039adfd637e1be104c607e38e0972e5a454301fa2cf688e006d" [label=""];
  "sha256:69863f7575a93039adfd637e1be104c607e38e0972e5a454301fa2cf688e006d" -> "sha256:30d2021aeb9d9a8108ca17504d67103007a4f69a928167f13f1b1648e4fe0e05" [label=""];
  "sha256:30d2021aeb9d9a8108ca17504d67103007a4f69a928167f13f1b1648e4fe0e05" -> "sha256:d181c058a4ecf072fdee73f8eb49ab4d45e07d1e47fa1e3864c62d8596ee7bff" [label=""];
  "sha256:d181c058a4ecf072fdee73f8eb49ab4d45e07d1e47fa1e3864c62d8596ee7bff" -> "sha256:c4b93e341557de56d78ab1d0724c5f268e9ddcf2cc37509bb5275e7cd9a1fd62" [label=""];
  "sha256:c4b93e341557de56d78ab1d0724c5f268e9ddcf2cc37509bb5275e7cd9a1fd62" -> "sha256:22ee7aa52a4a835a500194926442c46fe9001ecaa7cd80e7fbd9b6b25f4f8f40" [label=""];
}

