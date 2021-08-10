[app/sources/254020590.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:3e6bf21d55f5ff39230502c80274f6e39df122230390c848f856f5fd2f82079e" [label="/bin/sh -c groupadd -r mysql && useradd -r -g mysql mysql" shape="box"];
  "sha256:f4fc8a143bf5f80d52cddd19b6aabc0fa7e63d7478dee264f6ee952a3f47885f" [label="/bin/sh -c set -x \t&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \t&& wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\" \t&& wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\" \t&& export GNUPGHOME=\"$(mktemp -d)\" \t&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \t&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \t&& rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu \t&& gosu nobody true \t&& apt-get purge -y --auto-remove ca-certificates wget" shape="box"];
  "sha256:827a80d75f9e34339628c37c08601e381877843f73d148b4e1252177949609d6" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:258545abe0baeb6cde18b38ef22b065c60fcfdb9cf7227cb317ab95228f3dfc2" [label="/bin/sh -c apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:838187c3c9f08ebd07d7056138e4993c01aa54fece5e64f64ef2b74bd87d8470" [label="/bin/sh -c apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5" shape="box"];
  "sha256:f2fd16c779c741b7435f7b9bb4733386c34e447126804d4822e4e061f06c6232" [label="/bin/sh -c echo \"deb http://repo.mysql.com/apt/ubuntu/ xenial mysql-${MYSQL_MAJOR}\" > /etc/apt/sources.list.d/mysql.list" shape="box"];
  "sha256:31621620b4c5a2015d002859269874bb32bb2232149549e983bf69eb8d27c4b2" [label="/bin/sh -c { \t\techo mysql-community-server mysql-community-server/data-dir select ''; \t\techo mysql-community-server mysql-community-server/root-pass password ''; \t\techo mysql-community-server mysql-community-server/re-root-pass password ''; \t\techo mysql-community-server mysql-community-server/remove-test-db select false; \t} | debconf-set-selections \t&& apt-get update && apt-get install -y mysql-server=\"${MYSQL_VERSION}\" && rm -rf /var/lib/apt/lists/* \t&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld \t&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld \t&& chmod 777 /var/run/mysqld" shape="box"];
  "sha256:5c101744b99418fcdf7307b0267617d12b923b7afe6349589a26ff2e6b1be432" [label="/bin/sh -c sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf \t&& echo 'skip-host-cache\\nskip-name-resolve' | awk '{ print } $1 == \"[mysqld]\" && c == 0 { c = 1; system(\"cat\") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf \t&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf" shape="box"];
  "sha256:fe67ce3cb3bd57d1f6b3a5881ab6cf8d0c7bff78f54b616e976eb0fcbb0fe7d1" [label="local://context" shape="ellipse"];
  "sha256:f119cd872ed60d4a9e78b22325ec8f45defa5d960dc5cba1c8a00e69ab928613" [label="copy{src=/conf/my.cnf, dest=/etc/mysql/mysql.conf.d/zzzz-my.cnf}" shape="note"];
  "sha256:82e21e01a99225326d1a169b459f4021dbe9126a715319f7a544b7a58b70122b" [label="copy{src=/bin/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:d40f986fe81ce5e68843f27e61f269dce18556539aecbf21dd9dd13bdb196252" [label="/bin/sh -c ln -s usr/local/bin/docker-entrypoint.sh /docker-entryoint.sh # backwards compat" shape="box"];
  "sha256:4f8a954a5a65b792643129bf2ac98e9a74156bad57488b48d6034ddd94e6f060" [label="/bin/sh -c apt-get clean && \trm -rfv \t/tmp/* \t/var/lib/apt/lists/* \t/var/tmp/*" shape="box"];
  "sha256:5a5e2356385e846e858c424522f65e7d10dc87f094956dd0aea7b91a9b40ca0f" [label="sha256:5a5e2356385e846e858c424522f65e7d10dc87f094956dd0aea7b91a9b40ca0f" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:3e6bf21d55f5ff39230502c80274f6e39df122230390c848f856f5fd2f82079e" [label=""];
  "sha256:3e6bf21d55f5ff39230502c80274f6e39df122230390c848f856f5fd2f82079e" -> "sha256:f4fc8a143bf5f80d52cddd19b6aabc0fa7e63d7478dee264f6ee952a3f47885f" [label=""];
  "sha256:f4fc8a143bf5f80d52cddd19b6aabc0fa7e63d7478dee264f6ee952a3f47885f" -> "sha256:827a80d75f9e34339628c37c08601e381877843f73d148b4e1252177949609d6" [label=""];
  "sha256:827a80d75f9e34339628c37c08601e381877843f73d148b4e1252177949609d6" -> "sha256:258545abe0baeb6cde18b38ef22b065c60fcfdb9cf7227cb317ab95228f3dfc2" [label=""];
  "sha256:258545abe0baeb6cde18b38ef22b065c60fcfdb9cf7227cb317ab95228f3dfc2" -> "sha256:838187c3c9f08ebd07d7056138e4993c01aa54fece5e64f64ef2b74bd87d8470" [label=""];
  "sha256:838187c3c9f08ebd07d7056138e4993c01aa54fece5e64f64ef2b74bd87d8470" -> "sha256:f2fd16c779c741b7435f7b9bb4733386c34e447126804d4822e4e061f06c6232" [label=""];
  "sha256:f2fd16c779c741b7435f7b9bb4733386c34e447126804d4822e4e061f06c6232" -> "sha256:31621620b4c5a2015d002859269874bb32bb2232149549e983bf69eb8d27c4b2" [label=""];
  "sha256:31621620b4c5a2015d002859269874bb32bb2232149549e983bf69eb8d27c4b2" -> "sha256:5c101744b99418fcdf7307b0267617d12b923b7afe6349589a26ff2e6b1be432" [label=""];
  "sha256:5c101744b99418fcdf7307b0267617d12b923b7afe6349589a26ff2e6b1be432" -> "sha256:f119cd872ed60d4a9e78b22325ec8f45defa5d960dc5cba1c8a00e69ab928613" [label=""];
  "sha256:fe67ce3cb3bd57d1f6b3a5881ab6cf8d0c7bff78f54b616e976eb0fcbb0fe7d1" -> "sha256:f119cd872ed60d4a9e78b22325ec8f45defa5d960dc5cba1c8a00e69ab928613" [label=""];
  "sha256:f119cd872ed60d4a9e78b22325ec8f45defa5d960dc5cba1c8a00e69ab928613" -> "sha256:82e21e01a99225326d1a169b459f4021dbe9126a715319f7a544b7a58b70122b" [label=""];
  "sha256:fe67ce3cb3bd57d1f6b3a5881ab6cf8d0c7bff78f54b616e976eb0fcbb0fe7d1" -> "sha256:82e21e01a99225326d1a169b459f4021dbe9126a715319f7a544b7a58b70122b" [label=""];
  "sha256:82e21e01a99225326d1a169b459f4021dbe9126a715319f7a544b7a58b70122b" -> "sha256:d40f986fe81ce5e68843f27e61f269dce18556539aecbf21dd9dd13bdb196252" [label=""];
  "sha256:d40f986fe81ce5e68843f27e61f269dce18556539aecbf21dd9dd13bdb196252" -> "sha256:4f8a954a5a65b792643129bf2ac98e9a74156bad57488b48d6034ddd94e6f060" [label=""];
  "sha256:4f8a954a5a65b792643129bf2ac98e9a74156bad57488b48d6034ddd94e6f060" -> "sha256:5a5e2356385e846e858c424522f65e7d10dc87f094956dd0aea7b91a9b40ca0f" [label=""];
}

