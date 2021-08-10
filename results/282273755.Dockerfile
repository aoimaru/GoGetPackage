[app/sources/282273755.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:cedc66182e7840371b56afa63e6454899d8c8cd8efd1921ae8e0fe7c92a2831a" [label="/bin/sh -c sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories" shape="box"];
  "sha256:77465bd921143ec6d0033abb383b9a8a4e79ccf888934135f185b40da072bfa0" [label="/bin/sh -c apk update &&     apk add ${APK_FLAGS_DEV} --virtual build-dependencies             alpine-sdk             autoconf             automake             openssl-dev             openldap-dev             pcre-dev             git             coreutils &&     cd /tmp/ &&     git clone ${ZBX_SOURCES} --branch ${ZBX_VERSION} --depth 1 --single-branch zabbix-${ZBX_VERSION} &&     cd /tmp/zabbix-${ZBX_VERSION} &&     zabbix_revision=`git rev-parse --short HEAD` &&     sed -i \"s/{ZABBIX_REVISION}/$zabbix_revision/g\" include/version.h &&     ./bootstrap.sh &&     export CFLAGS=\"-fPIC -pie -Wl,-z,relro -Wl,-z,now\" &&     ./configure             --datadir=/usr/lib             --libdir=/usr/lib/zabbix             --prefix=/usr             --sysconfdir=/etc/zabbix             --prefix=/usr             --enable-agent             --with-ldap             --with-openssl             --enable-ipv6             --silent &&     make -j\"$(nproc)\" -s &&     cd /tmp/ &&     git clone https://github.com/monitoringartist/zabbix-docker-monitoring.git &&     mv zabbix-docker-monitoring/src/modules/zabbix_module_docker zabbix-${ZBX_VERSION}/src/modules/ &&     cd zabbix-${ZBX_VERSION}/src/modules/zabbix_module_docker     make -j\"$(nproc)\"" shape="box"];
  "sha256:83b935492f79e9ef4a3bdfff2f4502b4d9f66e7eb0da23fa34d99a70ef58d7d9" [label="/bin/sh -c sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/' /etc/apk/repositories" shape="box"];
  "sha256:647d92f83acc6c3ad7639693d63a739e70be7971a8208edb111779d24ec9d070" [label="copy{src=/tmp/zabbix-4.2.1/src/zabbix_agent/zabbix_agentd, dest=/usr/sbin/zabbix_agentd}" shape="note"];
  "sha256:e680af2c6459475ff4c522bca883cd22f93ae127a69beee1399bca66bb2b7fa0" [label="copy{src=/tmp/zabbix-4.2.1/src/zabbix_get/zabbix_get, dest=/usr/bin/zabbix_get}" shape="note"];
  "sha256:366b0ccd03c2639bb681207a3bd8cf8ced2a5cb866258e393ddca19555831112" [label="copy{src=/tmp/zabbix-4.2.1/src/zabbix_sender/zabbix_sender, dest=/usr/bin/zabbix_sender}" shape="note"];
  "sha256:3371e6ad82fb3d92269bca81c12ee0032f4ed006b54b820a56fbf203320af181" [label="copy{src=/tmp/zabbix-4.2.1/conf/zabbix_agentd.conf, dest=/etc/zabbix/zabbix_agentd.conf}" shape="note"];
  "sha256:bdfbc491cc01a654cf26c236e8b21cc727f832d0acbf849666de6c76dad54f6e" [label="/bin/sh -c addgroup zabbix &&     adduser -S             -D -G zabbix             -h /var/lib/zabbix/         zabbix &&     mkdir -p /etc/zabbix &&     mkdir -p /etc/zabbix/zabbix_agentd.d &&     mkdir -p /var/lib/zabbix &&     mkdir -p /var/lib/zabbix/enc &&     mkdir -p /var/lib/zabbix/modules &&     chown --quiet -R zabbix:root /var/lib/zabbix &&     apk update &&     apk add ${APK_FLAGS_PERSISTANT}             tini             bash             coreutils             iputils             libldap             pcre &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:8a26ed3e8853032760831c25de02cbb38df071976398804aa64ee495a5bd73e9" [label="mkdir{path=/var/lib/zabbix}" shape="note"];
  "sha256:b214337eedebc257c5a3dab6e2ffc82948e60fc2d74b40fd3e5169fe7271ffe1" [label="local://context" shape="ellipse"];
  "sha256:9a0f1a48fa1d33e2c2d8fa932199ea4588a2a64ceec0805690fc13ce716738fe" [label="copy{src=/docker-entrypoint.sh, dest=/usr/bin/}" shape="note"];
  "sha256:41a8a5966f6eedeb0287352510c4f271207408598564eb7fbe2ba4a36626f886" [label="sha256:41a8a5966f6eedeb0287352510c4f271207408598564eb7fbe2ba4a36626f886" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:cedc66182e7840371b56afa63e6454899d8c8cd8efd1921ae8e0fe7c92a2831a" [label=""];
  "sha256:cedc66182e7840371b56afa63e6454899d8c8cd8efd1921ae8e0fe7c92a2831a" -> "sha256:77465bd921143ec6d0033abb383b9a8a4e79ccf888934135f185b40da072bfa0" [label=""];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:83b935492f79e9ef4a3bdfff2f4502b4d9f66e7eb0da23fa34d99a70ef58d7d9" [label=""];
  "sha256:83b935492f79e9ef4a3bdfff2f4502b4d9f66e7eb0da23fa34d99a70ef58d7d9" -> "sha256:647d92f83acc6c3ad7639693d63a739e70be7971a8208edb111779d24ec9d070" [label=""];
  "sha256:77465bd921143ec6d0033abb383b9a8a4e79ccf888934135f185b40da072bfa0" -> "sha256:647d92f83acc6c3ad7639693d63a739e70be7971a8208edb111779d24ec9d070" [label=""];
  "sha256:647d92f83acc6c3ad7639693d63a739e70be7971a8208edb111779d24ec9d070" -> "sha256:e680af2c6459475ff4c522bca883cd22f93ae127a69beee1399bca66bb2b7fa0" [label=""];
  "sha256:77465bd921143ec6d0033abb383b9a8a4e79ccf888934135f185b40da072bfa0" -> "sha256:e680af2c6459475ff4c522bca883cd22f93ae127a69beee1399bca66bb2b7fa0" [label=""];
  "sha256:e680af2c6459475ff4c522bca883cd22f93ae127a69beee1399bca66bb2b7fa0" -> "sha256:366b0ccd03c2639bb681207a3bd8cf8ced2a5cb866258e393ddca19555831112" [label=""];
  "sha256:77465bd921143ec6d0033abb383b9a8a4e79ccf888934135f185b40da072bfa0" -> "sha256:366b0ccd03c2639bb681207a3bd8cf8ced2a5cb866258e393ddca19555831112" [label=""];
  "sha256:366b0ccd03c2639bb681207a3bd8cf8ced2a5cb866258e393ddca19555831112" -> "sha256:3371e6ad82fb3d92269bca81c12ee0032f4ed006b54b820a56fbf203320af181" [label=""];
  "sha256:77465bd921143ec6d0033abb383b9a8a4e79ccf888934135f185b40da072bfa0" -> "sha256:3371e6ad82fb3d92269bca81c12ee0032f4ed006b54b820a56fbf203320af181" [label=""];
  "sha256:3371e6ad82fb3d92269bca81c12ee0032f4ed006b54b820a56fbf203320af181" -> "sha256:bdfbc491cc01a654cf26c236e8b21cc727f832d0acbf849666de6c76dad54f6e" [label=""];
  "sha256:bdfbc491cc01a654cf26c236e8b21cc727f832d0acbf849666de6c76dad54f6e" -> "sha256:8a26ed3e8853032760831c25de02cbb38df071976398804aa64ee495a5bd73e9" [label=""];
  "sha256:8a26ed3e8853032760831c25de02cbb38df071976398804aa64ee495a5bd73e9" -> "sha256:9a0f1a48fa1d33e2c2d8fa932199ea4588a2a64ceec0805690fc13ce716738fe" [label=""];
  "sha256:b214337eedebc257c5a3dab6e2ffc82948e60fc2d74b40fd3e5169fe7271ffe1" -> "sha256:9a0f1a48fa1d33e2c2d8fa932199ea4588a2a64ceec0805690fc13ce716738fe" [label=""];
  "sha256:9a0f1a48fa1d33e2c2d8fa932199ea4588a2a64ceec0805690fc13ce716738fe" -> "sha256:41a8a5966f6eedeb0287352510c4f271207408598564eb7fbe2ba4a36626f886" [label=""];
}

