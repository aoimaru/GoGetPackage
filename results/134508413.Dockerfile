[app/sources/134508413.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:f8341fae4a7eb6f8200fc5067fa98f975e3bd783960d877e15b3a0a288008a0f" [label="local://context" shape="ellipse"];
  "sha256:7955e2e0f86c1458a841f64bbc2c7153375eceff5440503f49ded75add52fe38" [label="copy{src=/patches, dest=/tmp}" shape="note"];
  "sha256:4d9a43ae046d056f2a23acb816b354ea88763d009b0d9e59c050b3976c9ff13a" [label="/bin/sh -c apk add --no-cache zlib openssl libstdc++ libpcap geoip libgcc tini" shape="box"];
  "sha256:62aeac89c222910e53d8c326b5c291e11c56aad32be71e22b24f8b2abc594a7c" [label="/bin/sh -c apk add --no-cache -t .build-deps   linux-headers   openssl-dev   libpcap-dev   python-dev   geoip-dev   zlib-dev   binutils   fts-dev   cmake   clang   bison   perl   make   flex   git   g++   fts   && cd /tmp   && git clone --recursive --branch v$BRO_VERSION git://git.bro.org/bro   && echo \"===> Applying patches...\"   && cd /tmp/bro   && patch -p1 < /tmp/bro-musl.patch   && cp /tmp/FindFTS.cmake cmake   && cd /tmp/bro/aux/binpac   && patch -p1 < /tmp/binpac-musl.patch   && echo \"===> Compiling bro...\"   && cd /tmp/bro   && CC=clang ./configure --disable-broker   --disable-broctl --disable-broccoli   --disable-auxtools --prefix=/usr/local   && make   && make install   && echo \"===> Compiling af_packet plugin...\"   && cd /tmp/bro/aux/plugins   && git clone https://github.com/J-Gras/bro-af_packet-plugin   && cd /tmp/bro/aux/plugins/bro-af_packet-plugin   && make distclean   && CC=clang ./configure --with-kernel=/usr   && make   && make install   && echo \"===> Shrinking image...\"   && strip -s /usr/local/bin/bro   && rm -rf /tmp/*   && apk del --purge .build-deps" shape="box"];
  "sha256:ff23e9e113de8a785f93c717cc9b0b6986f58cd48623047c65fdfc757408805e" [label="mkdir{path=/pcap}" shape="note"];
  "sha256:5909e312eb0853a2ee4606342d6c7cda10b16e05e8b49988250a0f2ad184c476" [label="copy{src=/local.bro, dest=/usr/local/share/bro/site/local.bro}" shape="note"];
  "sha256:a952b5fd3c70c6c82a77709bd79b3eb25aecf6f832473912be7100bf50b99865" [label="sha256:a952b5fd3c70c6c82a77709bd79b3eb25aecf6f832473912be7100bf50b99865" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:7955e2e0f86c1458a841f64bbc2c7153375eceff5440503f49ded75add52fe38" [label=""];
  "sha256:f8341fae4a7eb6f8200fc5067fa98f975e3bd783960d877e15b3a0a288008a0f" -> "sha256:7955e2e0f86c1458a841f64bbc2c7153375eceff5440503f49ded75add52fe38" [label=""];
  "sha256:7955e2e0f86c1458a841f64bbc2c7153375eceff5440503f49ded75add52fe38" -> "sha256:4d9a43ae046d056f2a23acb816b354ea88763d009b0d9e59c050b3976c9ff13a" [label=""];
  "sha256:4d9a43ae046d056f2a23acb816b354ea88763d009b0d9e59c050b3976c9ff13a" -> "sha256:62aeac89c222910e53d8c326b5c291e11c56aad32be71e22b24f8b2abc594a7c" [label=""];
  "sha256:62aeac89c222910e53d8c326b5c291e11c56aad32be71e22b24f8b2abc594a7c" -> "sha256:ff23e9e113de8a785f93c717cc9b0b6986f58cd48623047c65fdfc757408805e" [label=""];
  "sha256:ff23e9e113de8a785f93c717cc9b0b6986f58cd48623047c65fdfc757408805e" -> "sha256:5909e312eb0853a2ee4606342d6c7cda10b16e05e8b49988250a0f2ad184c476" [label=""];
  "sha256:f8341fae4a7eb6f8200fc5067fa98f975e3bd783960d877e15b3a0a288008a0f" -> "sha256:5909e312eb0853a2ee4606342d6c7cda10b16e05e8b49988250a0f2ad184c476" [label=""];
  "sha256:5909e312eb0853a2ee4606342d6c7cda10b16e05e8b49988250a0f2ad184c476" -> "sha256:a952b5fd3c70c6c82a77709bd79b3eb25aecf6f832473912be7100bf50b99865" [label=""];
}

