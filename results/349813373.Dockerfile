[app/sources/349813373.Dockerfile]
digraph {
  "sha256:38b282b1b99e2bbaca3ed7e090ef32f913a10f8d2699989d8f67f404d6f4991f" [label="docker-image://docker.io/cloudunit/base-jessie:latest" shape="ellipse"];
  "sha256:eb77a790f62df647ed7f9eef3ca8937d148bf6bc86a6de28e415583603a79681" [label="/bin/sh -c groupadd -r mysql && useradd -r -g mysql mysql" shape="box"];
  "sha256:55bc7d2c75956571a76a5a072d1f4f262520b1f78571c0e420a93213e5af5a80" [label="local://context" shape="ellipse"];
  "sha256:27af9fedd4bc2099c63612f0faf9e6c3025f697a195d224e05c005c78aa552e6" [label="copy{src=/scripts, dest=/opt/cloudunit/scripts}" shape="note"];
  "sha256:d1242b3d9041cb383e2dc44ff45f238aa2a43c6fe6e1edace16d88dea0b72b95" [label="/bin/sh -c chmod +x /opt/cloudunit/scripts/*" shape="box"];
  "sha256:cc9a62f2b2617575d40ad25a0b911aeb6e8fe4b35dfe3a56757cb5691a133a00" [label="/bin/sh -c set -x \t&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* \t&& wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\" \t&& wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\" \t&& export GNUPGHOME=\"$(mktemp -d)\" \t&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \t&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \t&& rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu \t&& gosu nobody true \t&& apt-get purge -y --auto-remove ca-certificates wget" shape="box"];
  "sha256:d1c9831ba7c0579c1cfadc7e70399a89856948d0a3201c44308b82d85c08b3d9" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:a1ac96a964fcc5b880cd3700ecf3562997f538af2f2d5fbecef0b28918f19899" [label="/bin/sh -c apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ba9ebe9f2686bdb1deb171523463040d0b20794d460b5bfe035fcda3d7a07fb1" [label="/bin/sh -c apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5" shape="box"];
  "sha256:491eea700ef92430673d4f793059376086ed51f76e1e377c0131d4f9bc91fca5" [label="/bin/sh -c echo \"deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}\" > /etc/apt/sources.list.d/mysql.list" shape="box"];
  "sha256:542de792deafe7afe4ebb71575bd3d059709058774fd0aed40125db41d78a2ee" [label="/bin/sh -c { \t\techo mysql-community-server mysql-community-server/data-dir select ''; \t\techo mysql-community-server mysql-community-server/root-pass password ''; \t\techo mysql-community-server mysql-community-server/re-root-pass password ''; \t\techo mysql-community-server mysql-community-server/remove-test-db select false; \t} | debconf-set-selections \t&& apt-get update && apt-get install -y mysql-server=\"${MYSQL_VERSION}\" && rm -rf /var/lib/apt/lists/* \t&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld \t&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld \t&& chmod 777 /var/run/mysqld" shape="box"];
  "sha256:e59dabcd4baedc298fb6ede19df251bbc1998f39088d42757e7e54d1f8b396b6" [label="/bin/sh -c sed -Ei 's/^(bind-address|log)/#&/' /etc/mysql/mysql.conf.d/mysqld.cnf \t&& echo 'skip-host-cache\\nskip-name-resolve' | awk '{ print } $1 == \"[mysqld]\" && c == 0 { c = 1; system(\"cat\") }' /etc/mysql/mysql.conf.d/mysqld.cnf > /tmp/mysqld.cnf \t&& mv /tmp/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf" shape="box"];
  "sha256:4f190c3eae5e44e01596e70b280c0c97adfd10f376437bb538b85dc49f16858b" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:da0ac7b79d401fd4c352bf7cefff9941c762ce3ecfeca8822ce55ba4bfe895a5" [label="/bin/sh -c ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat" shape="box"];
  "sha256:6d406d53891e0df756cca94a6d8bbbfa88281ad5041f6d214db1d602da244e59" [label="sha256:6d406d53891e0df756cca94a6d8bbbfa88281ad5041f6d214db1d602da244e59" shape="plaintext"];
  "sha256:38b282b1b99e2bbaca3ed7e090ef32f913a10f8d2699989d8f67f404d6f4991f" -> "sha256:eb77a790f62df647ed7f9eef3ca8937d148bf6bc86a6de28e415583603a79681" [label=""];
  "sha256:eb77a790f62df647ed7f9eef3ca8937d148bf6bc86a6de28e415583603a79681" -> "sha256:27af9fedd4bc2099c63612f0faf9e6c3025f697a195d224e05c005c78aa552e6" [label=""];
  "sha256:55bc7d2c75956571a76a5a072d1f4f262520b1f78571c0e420a93213e5af5a80" -> "sha256:27af9fedd4bc2099c63612f0faf9e6c3025f697a195d224e05c005c78aa552e6" [label=""];
  "sha256:27af9fedd4bc2099c63612f0faf9e6c3025f697a195d224e05c005c78aa552e6" -> "sha256:d1242b3d9041cb383e2dc44ff45f238aa2a43c6fe6e1edace16d88dea0b72b95" [label=""];
  "sha256:d1242b3d9041cb383e2dc44ff45f238aa2a43c6fe6e1edace16d88dea0b72b95" -> "sha256:cc9a62f2b2617575d40ad25a0b911aeb6e8fe4b35dfe3a56757cb5691a133a00" [label=""];
  "sha256:cc9a62f2b2617575d40ad25a0b911aeb6e8fe4b35dfe3a56757cb5691a133a00" -> "sha256:d1c9831ba7c0579c1cfadc7e70399a89856948d0a3201c44308b82d85c08b3d9" [label=""];
  "sha256:d1c9831ba7c0579c1cfadc7e70399a89856948d0a3201c44308b82d85c08b3d9" -> "sha256:a1ac96a964fcc5b880cd3700ecf3562997f538af2f2d5fbecef0b28918f19899" [label=""];
  "sha256:a1ac96a964fcc5b880cd3700ecf3562997f538af2f2d5fbecef0b28918f19899" -> "sha256:ba9ebe9f2686bdb1deb171523463040d0b20794d460b5bfe035fcda3d7a07fb1" [label=""];
  "sha256:ba9ebe9f2686bdb1deb171523463040d0b20794d460b5bfe035fcda3d7a07fb1" -> "sha256:491eea700ef92430673d4f793059376086ed51f76e1e377c0131d4f9bc91fca5" [label=""];
  "sha256:491eea700ef92430673d4f793059376086ed51f76e1e377c0131d4f9bc91fca5" -> "sha256:542de792deafe7afe4ebb71575bd3d059709058774fd0aed40125db41d78a2ee" [label=""];
  "sha256:542de792deafe7afe4ebb71575bd3d059709058774fd0aed40125db41d78a2ee" -> "sha256:e59dabcd4baedc298fb6ede19df251bbc1998f39088d42757e7e54d1f8b396b6" [label=""];
  "sha256:e59dabcd4baedc298fb6ede19df251bbc1998f39088d42757e7e54d1f8b396b6" -> "sha256:4f190c3eae5e44e01596e70b280c0c97adfd10f376437bb538b85dc49f16858b" [label=""];
  "sha256:55bc7d2c75956571a76a5a072d1f4f262520b1f78571c0e420a93213e5af5a80" -> "sha256:4f190c3eae5e44e01596e70b280c0c97adfd10f376437bb538b85dc49f16858b" [label=""];
  "sha256:4f190c3eae5e44e01596e70b280c0c97adfd10f376437bb538b85dc49f16858b" -> "sha256:da0ac7b79d401fd4c352bf7cefff9941c762ce3ecfeca8822ce55ba4bfe895a5" [label=""];
  "sha256:da0ac7b79d401fd4c352bf7cefff9941c762ce3ecfeca8822ce55ba4bfe895a5" -> "sha256:6d406d53891e0df756cca94a6d8bbbfa88281ad5041f6d214db1d602da244e59" [label=""];
}

