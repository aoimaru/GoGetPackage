[app/sources/248152998.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:747cd99f59e5d5aded872613bde30f6c7946a02e3820399e6a7d18e7329f32bb" [label="/bin/sh -c set -eux &&     yum --quiet makecache &&     yum ${YUM_FLAGS_DEV} install             autoconf             automake             make             openssl-devel             openldap-devel             git             gcc &&     cd /tmp/ &&     git clone ${ZBX_SOURCES} --branch ${ZBX_VERSION} --depth 1 --single-branch zabbix-${ZBX_VERSION} &&     cd /tmp/zabbix-${ZBX_VERSION} &&     zabbix_revision=`git rev-parse --short HEAD` &&     sed -i \"s/{ZABBIX_REVISION}/$zabbix_revision/g\" include/version.h &&     ./bootstrap.sh &&     export CFLAGS=\"-fPIC -pie -Wl,-z,relro -Wl,-z,now\" &&     ./configure             --datadir=/usr/lib             --libdir=/usr/lib/zabbix             --prefix=/usr             --sysconfdir=/etc/zabbix             --prefix=/usr             --enable-agent             --with-ldap             --with-openssl             --enable-ipv6             --silent &&     make -j\"$(nproc)\" -s" shape="box"];
  "sha256:54f72e58e60c6d2542c5c8da5e1080419289ba729607e32ccb7bf2b1299a549e" [label="copy{src=/tmp/zabbix-4.2.3/src/zabbix_agent/zabbix_agentd, dest=/usr/sbin/zabbix_agentd}" shape="note"];
  "sha256:1159772002634a516cff4bd064efc91d35e4ef70812f22f2fc288c7c7e73a5e0" [label="copy{src=/tmp/zabbix-4.2.3/src/zabbix_get/zabbix_get, dest=/usr/bin/zabbix_get}" shape="note"];
  "sha256:65be52e5fbab0b88c7780563905f73380555b092e35a40a9633645267dd5ae9d" [label="copy{src=/tmp/zabbix-4.2.3/src/zabbix_sender/zabbix_sender, dest=/usr/bin/zabbix_sender}" shape="note"];
  "sha256:b843ebce2e834c2558120a89d56444217de80ad89f229077948e8647de1d1b91" [label="copy{src=/tmp/zabbix-4.2.3/conf/zabbix_agentd.conf, dest=/etc/zabbix/zabbix_agentd.conf}" shape="note"];
  "sha256:926a1cc4b10247bc9686839aa034030394e419f79bb0d18ee15c18ccd0bb6973" [label="https://github.com/krallin/tini/releases/download/v0.18.0/tini" shape="ellipse"];
  "sha256:659028d3f8eb7c07bc6bf4039baba4368796c2b17a5ec502ca7068873ff9a98d" [label="copy{src=/tini, dest=/sbin/tini}" shape="note"];
  "sha256:1ea4f7e65b9721f964dfac891f4ddeacb4228a04190626b0a8354d32ce2ecc87" [label="/bin/sh -c set -eux &&     groupadd --system zabbix &&     adduser -r --shell /sbin/nologin             -g zabbix             -d /var/lib/zabbix/         zabbix &&     mkdir -p /etc/zabbix &&     mkdir -p /etc/zabbix/zabbix_agentd.d &&     mkdir -p /var/lib/zabbix &&     mkdir -p /var/lib/zabbix/enc &&     mkdir -p /var/lib/zabbix/modules &&     chown --quiet -R zabbix:root /var/lib/zabbix &&     yum ${YUM_FLAGS_COMMON} makecache &&     yum ${YUM_FLAGS_PERSISTENT} install             libldap             openssl-libs &&     yum ${YUM_FLAGS_PERSISTENT} clean all &&     rm -rf /var/cache/yum &&     chmod +x /sbin/tini" shape="box"];
  "sha256:2e9d483c1f5fc208cdab9da0d960cfac85c27add27fd96e090733c08060271ca" [label="mkdir{path=/var/lib/zabbix}" shape="note"];
  "sha256:66e0bd291a12a2429b15349353bbcea8a2b473a2c2fd736c7d97bce62d33f004" [label="local://context" shape="ellipse"];
  "sha256:098c7e1ccf7ad2dcaa7740ad9847aa385262290708e924dcc2b4798169caeb7a" [label="copy{src=/docker-entrypoint.sh, dest=/usr/bin/}" shape="note"];
  "sha256:3738d54d835610246e8247fdefd7540de728886c266235dbb79908fe3c92612b" [label="sha256:3738d54d835610246e8247fdefd7540de728886c266235dbb79908fe3c92612b" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:747cd99f59e5d5aded872613bde30f6c7946a02e3820399e6a7d18e7329f32bb" [label=""];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:54f72e58e60c6d2542c5c8da5e1080419289ba729607e32ccb7bf2b1299a549e" [label=""];
  "sha256:747cd99f59e5d5aded872613bde30f6c7946a02e3820399e6a7d18e7329f32bb" -> "sha256:54f72e58e60c6d2542c5c8da5e1080419289ba729607e32ccb7bf2b1299a549e" [label=""];
  "sha256:54f72e58e60c6d2542c5c8da5e1080419289ba729607e32ccb7bf2b1299a549e" -> "sha256:1159772002634a516cff4bd064efc91d35e4ef70812f22f2fc288c7c7e73a5e0" [label=""];
  "sha256:747cd99f59e5d5aded872613bde30f6c7946a02e3820399e6a7d18e7329f32bb" -> "sha256:1159772002634a516cff4bd064efc91d35e4ef70812f22f2fc288c7c7e73a5e0" [label=""];
  "sha256:1159772002634a516cff4bd064efc91d35e4ef70812f22f2fc288c7c7e73a5e0" -> "sha256:65be52e5fbab0b88c7780563905f73380555b092e35a40a9633645267dd5ae9d" [label=""];
  "sha256:747cd99f59e5d5aded872613bde30f6c7946a02e3820399e6a7d18e7329f32bb" -> "sha256:65be52e5fbab0b88c7780563905f73380555b092e35a40a9633645267dd5ae9d" [label=""];
  "sha256:65be52e5fbab0b88c7780563905f73380555b092e35a40a9633645267dd5ae9d" -> "sha256:b843ebce2e834c2558120a89d56444217de80ad89f229077948e8647de1d1b91" [label=""];
  "sha256:747cd99f59e5d5aded872613bde30f6c7946a02e3820399e6a7d18e7329f32bb" -> "sha256:b843ebce2e834c2558120a89d56444217de80ad89f229077948e8647de1d1b91" [label=""];
  "sha256:b843ebce2e834c2558120a89d56444217de80ad89f229077948e8647de1d1b91" -> "sha256:659028d3f8eb7c07bc6bf4039baba4368796c2b17a5ec502ca7068873ff9a98d" [label=""];
  "sha256:926a1cc4b10247bc9686839aa034030394e419f79bb0d18ee15c18ccd0bb6973" -> "sha256:659028d3f8eb7c07bc6bf4039baba4368796c2b17a5ec502ca7068873ff9a98d" [label=""];
  "sha256:659028d3f8eb7c07bc6bf4039baba4368796c2b17a5ec502ca7068873ff9a98d" -> "sha256:1ea4f7e65b9721f964dfac891f4ddeacb4228a04190626b0a8354d32ce2ecc87" [label=""];
  "sha256:1ea4f7e65b9721f964dfac891f4ddeacb4228a04190626b0a8354d32ce2ecc87" -> "sha256:2e9d483c1f5fc208cdab9da0d960cfac85c27add27fd96e090733c08060271ca" [label=""];
  "sha256:2e9d483c1f5fc208cdab9da0d960cfac85c27add27fd96e090733c08060271ca" -> "sha256:098c7e1ccf7ad2dcaa7740ad9847aa385262290708e924dcc2b4798169caeb7a" [label=""];
  "sha256:66e0bd291a12a2429b15349353bbcea8a2b473a2c2fd736c7d97bce62d33f004" -> "sha256:098c7e1ccf7ad2dcaa7740ad9847aa385262290708e924dcc2b4798169caeb7a" [label=""];
  "sha256:098c7e1ccf7ad2dcaa7740ad9847aa385262290708e924dcc2b4798169caeb7a" -> "sha256:3738d54d835610246e8247fdefd7540de728886c266235dbb79908fe3c92612b" [label=""];
}

