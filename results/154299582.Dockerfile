[app/sources/154299582.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:89f6e7451478cc81393f91f0111d593f25fb1592a1494af84fb39ac762b19294" [label="/bin/sh -c groupadd -r mysql && useradd -r -g mysql mysql" shape="box"];
  "sha256:aca935c161c2ae24de1c1c0521d95f82559d75b7222fff880f1dc12e6fe1d7ea" [label="/bin/sh -c set -x \t&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \t&& wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\" \t&& wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\" \t&& export GNUPGHOME=\"$(mktemp -d)\" \t&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \t&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \t&& rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu \t&& gosu nobody true \t&& apt-get purge -y --auto-remove ca-certificates wget" shape="box"];
  "sha256:b6f4aac6196c960d09d851f8b5ecd2e47431d2721dcb547652cb4b861053b60c" [label="/bin/sh -c apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:25fdabc8b692f2d018dd824242b58e97e3a8dc9ca5e2af9fba12bd6820cb6796" [label="/bin/sh -c apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5" shape="box"];
  "sha256:36eb17b19462a34a4d83e7ad05f90c10aefa9d38f2098e95e1fe7eb6a613008b" [label="/bin/sh -c echo \"deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}\" > /etc/apt/sources.list.d/mysql.list" shape="box"];
  "sha256:9f1ffd9e9e7e7c46c3fba262434d9b1cf003961814a2fcec8c731a79e228369f" [label="/bin/sh -c { \t\techo mysql-community-server mysql-community-server/data-dir select ''; \t\techo mysql-community-server mysql-community-server/root-pass password ''; \t\techo mysql-community-server mysql-community-server/re-root-pass password ''; \t\techo mysql-community-server mysql-community-server/remove-test-db select false; \t} | debconf-set-selections \t&& apt-get update && apt-get install -y mysql-server-\"${MYSQL_MAJOR}\" && rm -rf /var/lib/apt/lists/* \t&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld \t&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld \t&& chmod 777 /var/run/mysqld" shape="box"];
  "sha256:7f9e171c8fa02a6697d5a4a7f8d31415eaeab546d0e7716a392dd32f6aaa274f" [label="/bin/sh -c sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/my.cnf \t&& echo 'skip-host-cache\\nskip-name-resolve' | awk '{ print } $1 == \"[mysqld]\" && c == 0 { c = 1; system(\"cat\") }' /etc/mysql/my.cnf > /tmp/my.cnf \t&& mv /tmp/my.cnf /etc/mysql/my.cnf" shape="box"];
  "sha256:88dcfba887e0bb24cebbc5e7ad09f7de6cc663312c2a75e3913f0cd705101a9f" [label="/bin/sh -c gosu mysql mysqld --initialize-insecure" shape="box"];
  "sha256:a881678d575f90256392acb2f01dc276d85f717fe21d68858a4f8a2a1c99dc9b" [label="local://context" shape="ellipse"];
  "sha256:46224bc91e20542749172ce5b2ee57db2c76294f12f967e2d7331b201e69f0a3" [label="copy{src=/init.sh, dest=/}" shape="note"];
  "sha256:a68b9a14dac39ca5401255d3360e58010d41cc8f66a329e82564e2e501d3636c" [label="/bin/sh -c chmod +x /init.sh" shape="box"];
  "sha256:391c29ee4eb295b5923482e542c40e9c99c491701d7dbde9f864e91d762bc4cb" [label="sha256:391c29ee4eb295b5923482e542c40e9c99c491701d7dbde9f864e91d762bc4cb" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:89f6e7451478cc81393f91f0111d593f25fb1592a1494af84fb39ac762b19294" [label=""];
  "sha256:89f6e7451478cc81393f91f0111d593f25fb1592a1494af84fb39ac762b19294" -> "sha256:aca935c161c2ae24de1c1c0521d95f82559d75b7222fff880f1dc12e6fe1d7ea" [label=""];
  "sha256:aca935c161c2ae24de1c1c0521d95f82559d75b7222fff880f1dc12e6fe1d7ea" -> "sha256:b6f4aac6196c960d09d851f8b5ecd2e47431d2721dcb547652cb4b861053b60c" [label=""];
  "sha256:b6f4aac6196c960d09d851f8b5ecd2e47431d2721dcb547652cb4b861053b60c" -> "sha256:25fdabc8b692f2d018dd824242b58e97e3a8dc9ca5e2af9fba12bd6820cb6796" [label=""];
  "sha256:25fdabc8b692f2d018dd824242b58e97e3a8dc9ca5e2af9fba12bd6820cb6796" -> "sha256:36eb17b19462a34a4d83e7ad05f90c10aefa9d38f2098e95e1fe7eb6a613008b" [label=""];
  "sha256:36eb17b19462a34a4d83e7ad05f90c10aefa9d38f2098e95e1fe7eb6a613008b" -> "sha256:9f1ffd9e9e7e7c46c3fba262434d9b1cf003961814a2fcec8c731a79e228369f" [label=""];
  "sha256:9f1ffd9e9e7e7c46c3fba262434d9b1cf003961814a2fcec8c731a79e228369f" -> "sha256:7f9e171c8fa02a6697d5a4a7f8d31415eaeab546d0e7716a392dd32f6aaa274f" [label=""];
  "sha256:7f9e171c8fa02a6697d5a4a7f8d31415eaeab546d0e7716a392dd32f6aaa274f" -> "sha256:88dcfba887e0bb24cebbc5e7ad09f7de6cc663312c2a75e3913f0cd705101a9f" [label=""];
  "sha256:88dcfba887e0bb24cebbc5e7ad09f7de6cc663312c2a75e3913f0cd705101a9f" -> "sha256:46224bc91e20542749172ce5b2ee57db2c76294f12f967e2d7331b201e69f0a3" [label=""];
  "sha256:a881678d575f90256392acb2f01dc276d85f717fe21d68858a4f8a2a1c99dc9b" -> "sha256:46224bc91e20542749172ce5b2ee57db2c76294f12f967e2d7331b201e69f0a3" [label=""];
  "sha256:46224bc91e20542749172ce5b2ee57db2c76294f12f967e2d7331b201e69f0a3" -> "sha256:a68b9a14dac39ca5401255d3360e58010d41cc8f66a329e82564e2e501d3636c" [label=""];
  "sha256:a68b9a14dac39ca5401255d3360e58010d41cc8f66a329e82564e2e501d3636c" -> "sha256:391c29ee4eb295b5923482e542c40e9c99c491701d7dbde9f864e91d762bc4cb" [label=""];
}

