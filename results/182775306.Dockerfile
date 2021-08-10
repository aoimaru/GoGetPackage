[app/sources/182775306.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:0f150c26a75727ee924cdee7b563ea1ed6a337f193a88fe2bc949c6cdc3752d2" [label="/bin/sh -c groupadd -r mysql && useradd -r -g mysql mysql" shape="box"];
  "sha256:214b48bc8aa1fa7dd58f024052db61470f982c328aa27881d1efc71a9a994524" [label="/bin/sh -c set -ex; \tapt-get update; \tif ! which gpg; then \t\tapt-get install -y --no-install-recommends gnupg; \tfi; \tif ! gpg --version | grep -q '^gpg (GnuPG) 1\\.'; then \t\t apt-get install -y --no-install-recommends dirmngr; \tfi; \trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5bd059fa519addf04d8172101f8dca50e7b59ecc1d57df44986555c9635fe951" [label="/bin/sh -c set -ex; \t\tfetchDeps=' \t\tca-certificates \t\twget \t'; \tapt-get update; \tapt-get install -y --no-install-recommends $fetchDeps; \trm -rf /var/lib/apt/lists/*; \t\tdpkgArch=\"$(dpkg --print-architecture | awk -F- '{ print $NF }')\"; \twget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch\"; \twget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc\"; \t\texport GNUPGHOME=\"$(mktemp -d)\"; \tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; \tgpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; \tcommand -v gpgconf > /dev/null && gpgconf --kill all || :; \trm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc; \t\tchmod +x /usr/local/bin/gosu; \tgosu nobody true; \t\tapt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:960e67f16b04c640ad2b1da2be78b308900fdc07e2a34113e17ee0e79033e278" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:fcc36cba4e9cbfd58db7f59b46f57e43a7dbed004a6ecec3f9926160d7ab4ac0" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tapt-transport-https ca-certificates \t\ttzdata \t\tpwgen \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:62ccf23eb84239d10e39d4a8af758f2ef953d720845ecaaa26000d09f9dd1572" [label="/bin/sh -c { \t\techo \"mariadb-server-10.4\" mysql-server/root_password password 'unused'; \t\techo \"mariadb-server-10.4\" mysql-server/root_password_again password 'unused'; \t} | debconf-set-selections" shape="box"];
  "sha256:2492f334933dbff7fb1fd973760d77088a841ec56335485fea57c1802f688b67" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:e9c00994f0cd11cf3e69149a6e349a6ed44237555dfa7de9880bca0646d90b7f" [label="/bin/sh -c apt-get install -y software-properties-common wget" shape="box"];
  "sha256:635b9bf0cf2c4970aeac4653d1d64584b5b3727b76b7c6f7c8d193966c204b73" [label="/bin/sh -c apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db" shape="box"];
  "sha256:3a7bf9c9ffa91670103a7539fe83b48125dcd50cccd95302cf5886d4c7b29f17" [label="/bin/sh -c apt-key adv --recv-keys --keyserver ha.pool.sks-keyservers.net F1656F24C74CD1D8" shape="box"];
  "sha256:32f472849f8414a891468e97426689bfc2c1ca544f7ea7d21de2b7a848a60e96" [label="/bin/sh -c echo 'deb http://yum.mariadb.org/galera/repo/deb bionic main' > /etc/apt/sources.list.d/galera-test-repo.list" shape="box"];
  "sha256:74ce03cd481d2f2de1519b8440d6bfbbaf65267caed574ed97bda8eff139dbb1" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:c16a6d2ec94bdf85fed12add836084d1e2e429f7415d254bcc525350a1a4da97" [label="/bin/sh -c apt-get install -y curl libdbi-perl rsync socat galera3 libnuma1 libaio1 zlib1g-dev libreadline5 libjemalloc1 libsnappy1v5 libcrack2" shape="box"];
  "sha256:fa4564557314790952ca169803d36e66e599a6eee8b09ca4964a7f62d44c664d" [label="local://context" shape="ellipse"];
  "sha256:6b7a1eb660284091a63dd67047495d61d6097f6696ce4c37fecfd5888307879e" [label="copy{src=/*.deb, dest=/root/}" shape="note"];
  "sha256:979cde2a45b448ba0e6df54a9e262d1470e8e1afdb4052becda25491709fb445" [label="/bin/sh -c chmod 777 /root/*" shape="box"];
  "sha256:a25dca51bbee3b81f73ffbbf82f2db08c1ef086102dadb8977a2b1646d660ba6" [label="/bin/sh -c dpkg --install /root/mysql-common*" shape="box"];
  "sha256:c2a116d5cf23b8b400a9e37d958ad36bf0958c085a029dd37613b5c2980ebd29" [label="/bin/sh -c dpkg --install /root/mariadb-common*" shape="box"];
  "sha256:49143465e7bd1c26f9796a7f0c6066501a6ebd09f6131e9d11e5c4e1fd371645" [label="/bin/sh -c dpkg -R --unpack /root/" shape="box"];
  "sha256:3392440f736c6329b72c1d50255d136ebda66ed4def5ea49796da49a293e8729" [label="/bin/sh -c apt-get install -f -y" shape="box"];
  "sha256:f6c94c3077ce9f8b0d418fe010ff68a554c8839b6569a0f21083fe8a924ddcf4" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*     \t&& sed -ri 's/^user\\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*     \t&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld     \t&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld     \t&& chmod 777 /var/run/mysqld     \t&& find /etc/mysql/ -name '*.cnf' -print0     \t\t| xargs -0 grep -lZE '^(bind-address|log)'     \t\t| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'     \t&& echo '[mysqld]\\nskip-host-cache\\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf" shape="box"];
  "sha256:bc9f74afb69a082f92ec36e1e71860b4d913067299709cc399d29e84e3d2f279" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:b77916dfb3704ebc9ffe234f82aa761c797da8fd2fce7a45ef4c5f6b7c41bec6" [label="/bin/sh -c ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat" shape="box"];
  "sha256:6d9f59ccd80eaeb9b97f644b4cdb7d370967498e3903b4e0e7421be4f8241028" [label="sha256:6d9f59ccd80eaeb9b97f644b4cdb7d370967498e3903b4e0e7421be4f8241028" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:0f150c26a75727ee924cdee7b563ea1ed6a337f193a88fe2bc949c6cdc3752d2" [label=""];
  "sha256:0f150c26a75727ee924cdee7b563ea1ed6a337f193a88fe2bc949c6cdc3752d2" -> "sha256:214b48bc8aa1fa7dd58f024052db61470f982c328aa27881d1efc71a9a994524" [label=""];
  "sha256:214b48bc8aa1fa7dd58f024052db61470f982c328aa27881d1efc71a9a994524" -> "sha256:5bd059fa519addf04d8172101f8dca50e7b59ecc1d57df44986555c9635fe951" [label=""];
  "sha256:5bd059fa519addf04d8172101f8dca50e7b59ecc1d57df44986555c9635fe951" -> "sha256:960e67f16b04c640ad2b1da2be78b308900fdc07e2a34113e17ee0e79033e278" [label=""];
  "sha256:960e67f16b04c640ad2b1da2be78b308900fdc07e2a34113e17ee0e79033e278" -> "sha256:fcc36cba4e9cbfd58db7f59b46f57e43a7dbed004a6ecec3f9926160d7ab4ac0" [label=""];
  "sha256:fcc36cba4e9cbfd58db7f59b46f57e43a7dbed004a6ecec3f9926160d7ab4ac0" -> "sha256:62ccf23eb84239d10e39d4a8af758f2ef953d720845ecaaa26000d09f9dd1572" [label=""];
  "sha256:62ccf23eb84239d10e39d4a8af758f2ef953d720845ecaaa26000d09f9dd1572" -> "sha256:2492f334933dbff7fb1fd973760d77088a841ec56335485fea57c1802f688b67" [label=""];
  "sha256:2492f334933dbff7fb1fd973760d77088a841ec56335485fea57c1802f688b67" -> "sha256:e9c00994f0cd11cf3e69149a6e349a6ed44237555dfa7de9880bca0646d90b7f" [label=""];
  "sha256:e9c00994f0cd11cf3e69149a6e349a6ed44237555dfa7de9880bca0646d90b7f" -> "sha256:635b9bf0cf2c4970aeac4653d1d64584b5b3727b76b7c6f7c8d193966c204b73" [label=""];
  "sha256:635b9bf0cf2c4970aeac4653d1d64584b5b3727b76b7c6f7c8d193966c204b73" -> "sha256:3a7bf9c9ffa91670103a7539fe83b48125dcd50cccd95302cf5886d4c7b29f17" [label=""];
  "sha256:3a7bf9c9ffa91670103a7539fe83b48125dcd50cccd95302cf5886d4c7b29f17" -> "sha256:32f472849f8414a891468e97426689bfc2c1ca544f7ea7d21de2b7a848a60e96" [label=""];
  "sha256:32f472849f8414a891468e97426689bfc2c1ca544f7ea7d21de2b7a848a60e96" -> "sha256:74ce03cd481d2f2de1519b8440d6bfbbaf65267caed574ed97bda8eff139dbb1" [label=""];
  "sha256:74ce03cd481d2f2de1519b8440d6bfbbaf65267caed574ed97bda8eff139dbb1" -> "sha256:c16a6d2ec94bdf85fed12add836084d1e2e429f7415d254bcc525350a1a4da97" [label=""];
  "sha256:c16a6d2ec94bdf85fed12add836084d1e2e429f7415d254bcc525350a1a4da97" -> "sha256:6b7a1eb660284091a63dd67047495d61d6097f6696ce4c37fecfd5888307879e" [label=""];
  "sha256:fa4564557314790952ca169803d36e66e599a6eee8b09ca4964a7f62d44c664d" -> "sha256:6b7a1eb660284091a63dd67047495d61d6097f6696ce4c37fecfd5888307879e" [label=""];
  "sha256:6b7a1eb660284091a63dd67047495d61d6097f6696ce4c37fecfd5888307879e" -> "sha256:979cde2a45b448ba0e6df54a9e262d1470e8e1afdb4052becda25491709fb445" [label=""];
  "sha256:979cde2a45b448ba0e6df54a9e262d1470e8e1afdb4052becda25491709fb445" -> "sha256:a25dca51bbee3b81f73ffbbf82f2db08c1ef086102dadb8977a2b1646d660ba6" [label=""];
  "sha256:a25dca51bbee3b81f73ffbbf82f2db08c1ef086102dadb8977a2b1646d660ba6" -> "sha256:c2a116d5cf23b8b400a9e37d958ad36bf0958c085a029dd37613b5c2980ebd29" [label=""];
  "sha256:c2a116d5cf23b8b400a9e37d958ad36bf0958c085a029dd37613b5c2980ebd29" -> "sha256:49143465e7bd1c26f9796a7f0c6066501a6ebd09f6131e9d11e5c4e1fd371645" [label=""];
  "sha256:49143465e7bd1c26f9796a7f0c6066501a6ebd09f6131e9d11e5c4e1fd371645" -> "sha256:3392440f736c6329b72c1d50255d136ebda66ed4def5ea49796da49a293e8729" [label=""];
  "sha256:3392440f736c6329b72c1d50255d136ebda66ed4def5ea49796da49a293e8729" -> "sha256:f6c94c3077ce9f8b0d418fe010ff68a554c8839b6569a0f21083fe8a924ddcf4" [label=""];
  "sha256:f6c94c3077ce9f8b0d418fe010ff68a554c8839b6569a0f21083fe8a924ddcf4" -> "sha256:bc9f74afb69a082f92ec36e1e71860b4d913067299709cc399d29e84e3d2f279" [label=""];
  "sha256:fa4564557314790952ca169803d36e66e599a6eee8b09ca4964a7f62d44c664d" -> "sha256:bc9f74afb69a082f92ec36e1e71860b4d913067299709cc399d29e84e3d2f279" [label=""];
  "sha256:bc9f74afb69a082f92ec36e1e71860b4d913067299709cc399d29e84e3d2f279" -> "sha256:b77916dfb3704ebc9ffe234f82aa761c797da8fd2fce7a45ef4c5f6b7c41bec6" [label=""];
  "sha256:b77916dfb3704ebc9ffe234f82aa761c797da8fd2fce7a45ef4c5f6b7c41bec6" -> "sha256:6d9f59ccd80eaeb9b97f644b4cdb7d370967498e3903b4e0e7421be4f8241028" [label=""];
}
