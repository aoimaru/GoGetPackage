[app/sources/248153222.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:acb2ad4f49d740b78af36f805c1ecc21ae2a7b3946b944b1c13d799a5b7fc75d" [label="/bin/sh -c set -eux &&     addgroup zabbix &&     adduser -S             -D -G zabbix             -h /var/lib/zabbix/             -H         zabbix &&     mkdir -p /etc/zabbix &&     mkdir -p /etc/zabbix/web &&     chown --quiet -R zabbix:root /etc/zabbix &&     apk update &&     apk add ${APK_FLAGS_PERSISTENT}             bash             curl             nginx             php7-bcmath             php7-ctype             php7-fpm             php7-gd             php7-gettext             php7-json             php7-ldap             php7-mbstring             php7-pgsql             php7-session             php7-simplexml             php7-sockets             php7-xmlreader             php7-xmlwriter             postgresql-client             supervisor &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:4d803411622691d6f5120d680096cc3d5e1caf2e58497b177c9ecbd5e05765e7" [label="/bin/sh -c set -eux &&     apk add ${APK_FLAGS_DEV} --virtual build-dependencies             coreutils             gettext             git &&     cd /usr/share/ &&     git clone ${ZBX_SOURCES} --branch ${ZBX_VERSION} --depth 1 --single-branch zabbix-${ZBX_VERSION} &&     mkdir /usr/share/zabbix/ &&     cp -R /usr/share/zabbix-${ZBX_VERSION}/frontends/php/* /usr/share/zabbix/ &&     rm -rf /usr/share/zabbix-${ZBX_VERSION}/ &&     cd /usr/share/zabbix/ &&     rm -f conf/zabbix.conf.php &&     rm -rf tests &&     ./locale/make_mo.sh &&     chown --quiet -R nginx:nginx /usr/share/zabbix &&     apk del ${APK_FLAGS_COMMON} --purge             build-dependencies &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:50ea9723e38f2f47c8bbc7b68041e9707e29826978b9c2f9a2e19d3c7c195f60" [label="mkdir{path=/usr/share/zabbix}" shape="note"];
  "sha256:005110c440ac21b1b9a5e0eff92fc14b45a594c4ac9b5728230bac57045fa103" [label="local://context" shape="ellipse"];
  "sha256:a1dd31ca6b710d75eed8022a116fd7eb4ba5f6d0aae36b18297701851570f0a3" [label="copy{src=/conf/etc/supervisor, dest=/etc/supervisor/}" shape="note"];
  "sha256:841f2c0138b461ec324ac13d40140a2e100e9fd451a93d106c7bea534e0c4cb6" [label="copy{src=/conf/etc/zabbix/nginx.conf, dest=/etc/zabbix/}" shape="note"];
  "sha256:31a0fefe88b2da1661f5185937042db3233e0a65a39a082e83e1a25d9bcb68ea" [label="copy{src=/conf/etc/zabbix/nginx_ssl.conf, dest=/etc/zabbix/}" shape="note"];
  "sha256:ece3ba53abff06c51acf2a16998aadb37022d9122ec29983f126f364e9b725a7" [label="copy{src=/conf/etc/zabbix/web/zabbix.conf.php, dest=/etc/zabbix/web/}" shape="note"];
  "sha256:2523bc54901a29efccb7a7f02bac0b0d2ce8ba853cbec90e864ce4bf79866222" [label="copy{src=/conf/etc/nginx/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:37f0743f9ed198edcc56746415af36c81b496db8b9c59f93488e808e17ccbd05" [label="copy{src=/conf/etc/php7/php-fpm.conf, dest=/etc/php7/}" shape="note"];
  "sha256:a5a77cbc6bca857ec2bc5e7871804b8704c0dbda90dc69c1bc3c1c2ca8405cb2" [label="copy{src=/conf/etc/php7/conf.d/99-zabbix.ini, dest=/etc/php7/conf.d/}" shape="note"];
  "sha256:9502714988e93450cf911b8028b0b3df958f81c8c2330b1a480bf0dcc97be9bd" [label="copy{src=/docker-entrypoint.sh, dest=/usr/bin/}" shape="note"];
  "sha256:edae5eaa8e64c28492949702e0e9462b2e843e2e7c4bfcb5a8a0e70d237369a7" [label="sha256:edae5eaa8e64c28492949702e0e9462b2e843e2e7c4bfcb5a8a0e70d237369a7" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:acb2ad4f49d740b78af36f805c1ecc21ae2a7b3946b944b1c13d799a5b7fc75d" [label=""];
  "sha256:acb2ad4f49d740b78af36f805c1ecc21ae2a7b3946b944b1c13d799a5b7fc75d" -> "sha256:4d803411622691d6f5120d680096cc3d5e1caf2e58497b177c9ecbd5e05765e7" [label=""];
  "sha256:4d803411622691d6f5120d680096cc3d5e1caf2e58497b177c9ecbd5e05765e7" -> "sha256:50ea9723e38f2f47c8bbc7b68041e9707e29826978b9c2f9a2e19d3c7c195f60" [label=""];
  "sha256:50ea9723e38f2f47c8bbc7b68041e9707e29826978b9c2f9a2e19d3c7c195f60" -> "sha256:a1dd31ca6b710d75eed8022a116fd7eb4ba5f6d0aae36b18297701851570f0a3" [label=""];
  "sha256:005110c440ac21b1b9a5e0eff92fc14b45a594c4ac9b5728230bac57045fa103" -> "sha256:a1dd31ca6b710d75eed8022a116fd7eb4ba5f6d0aae36b18297701851570f0a3" [label=""];
  "sha256:a1dd31ca6b710d75eed8022a116fd7eb4ba5f6d0aae36b18297701851570f0a3" -> "sha256:841f2c0138b461ec324ac13d40140a2e100e9fd451a93d106c7bea534e0c4cb6" [label=""];
  "sha256:005110c440ac21b1b9a5e0eff92fc14b45a594c4ac9b5728230bac57045fa103" -> "sha256:841f2c0138b461ec324ac13d40140a2e100e9fd451a93d106c7bea534e0c4cb6" [label=""];
  "sha256:841f2c0138b461ec324ac13d40140a2e100e9fd451a93d106c7bea534e0c4cb6" -> "sha256:31a0fefe88b2da1661f5185937042db3233e0a65a39a082e83e1a25d9bcb68ea" [label=""];
  "sha256:005110c440ac21b1b9a5e0eff92fc14b45a594c4ac9b5728230bac57045fa103" -> "sha256:31a0fefe88b2da1661f5185937042db3233e0a65a39a082e83e1a25d9bcb68ea" [label=""];
  "sha256:31a0fefe88b2da1661f5185937042db3233e0a65a39a082e83e1a25d9bcb68ea" -> "sha256:ece3ba53abff06c51acf2a16998aadb37022d9122ec29983f126f364e9b725a7" [label=""];
  "sha256:005110c440ac21b1b9a5e0eff92fc14b45a594c4ac9b5728230bac57045fa103" -> "sha256:ece3ba53abff06c51acf2a16998aadb37022d9122ec29983f126f364e9b725a7" [label=""];
  "sha256:ece3ba53abff06c51acf2a16998aadb37022d9122ec29983f126f364e9b725a7" -> "sha256:2523bc54901a29efccb7a7f02bac0b0d2ce8ba853cbec90e864ce4bf79866222" [label=""];
  "sha256:005110c440ac21b1b9a5e0eff92fc14b45a594c4ac9b5728230bac57045fa103" -> "sha256:2523bc54901a29efccb7a7f02bac0b0d2ce8ba853cbec90e864ce4bf79866222" [label=""];
  "sha256:2523bc54901a29efccb7a7f02bac0b0d2ce8ba853cbec90e864ce4bf79866222" -> "sha256:37f0743f9ed198edcc56746415af36c81b496db8b9c59f93488e808e17ccbd05" [label=""];
  "sha256:005110c440ac21b1b9a5e0eff92fc14b45a594c4ac9b5728230bac57045fa103" -> "sha256:37f0743f9ed198edcc56746415af36c81b496db8b9c59f93488e808e17ccbd05" [label=""];
  "sha256:37f0743f9ed198edcc56746415af36c81b496db8b9c59f93488e808e17ccbd05" -> "sha256:a5a77cbc6bca857ec2bc5e7871804b8704c0dbda90dc69c1bc3c1c2ca8405cb2" [label=""];
  "sha256:005110c440ac21b1b9a5e0eff92fc14b45a594c4ac9b5728230bac57045fa103" -> "sha256:a5a77cbc6bca857ec2bc5e7871804b8704c0dbda90dc69c1bc3c1c2ca8405cb2" [label=""];
  "sha256:a5a77cbc6bca857ec2bc5e7871804b8704c0dbda90dc69c1bc3c1c2ca8405cb2" -> "sha256:9502714988e93450cf911b8028b0b3df958f81c8c2330b1a480bf0dcc97be9bd" [label=""];
  "sha256:005110c440ac21b1b9a5e0eff92fc14b45a594c4ac9b5728230bac57045fa103" -> "sha256:9502714988e93450cf911b8028b0b3df958f81c8c2330b1a480bf0dcc97be9bd" [label=""];
  "sha256:9502714988e93450cf911b8028b0b3df958f81c8c2330b1a480bf0dcc97be9bd" -> "sha256:edae5eaa8e64c28492949702e0e9462b2e843e2e7c4bfcb5a8a0e70d237369a7" [label=""];
}

