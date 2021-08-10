[app/sources/320100635.Dockerfile]
digraph {
  "sha256:2f44a58d7ffb1c926ca3971c636e101a69d25a7853a1b39b2dd45fa60f975805" [label="local://context" shape="ellipse"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" [label="docker-image://docker.io/library/debian:stable-slim" shape="ellipse"];
  "sha256:e355880440a07ac058ce334da3bfb32ed61075b5d6e10dc4fbb1c58131d5d08c" [label="mkdir{path=/rftg}" shape="note"];
  "sha256:a427378f8233e37cdac439840cb4d65af7afc7790ce759816b131793b5507973" [label="copy{src=/Makefile.am, dest=/rftg/Makefile.am}" shape="note"];
  "sha256:e2b87b65ce41d55981d29f903e8f8c18773f3fe9a3c34b5a7de46b8599121096" [label="copy{src=/configure.ac, dest=/rftg/configure.ac}" shape="note"];
  "sha256:8329b763a0fe811b8a459ac1baf001e1525af4007018ec5f177ee372341fd418" [label="/bin/sh -c set -xe     && apt-get update     && apt-get install -y --no-install-recommends make wget openssl ca-certificates default-libmysqlclient-dev dh-autoreconf automake autoconf m4 perl automake autotools-dev unzip     && apt-get install -y --no-install-recommends default-mysql-server default-mysql-client     && wget https://github.com/bnordli/rftg/archive/master.zip     && unzip master.zip     && rm master.zip     && mv -t /rftg /rftg/rftg-master/*     && cp /rftg/Makefile.am /rftg/src/Makefile.am     && cp /rftg/configure.ac /rftg/src/configure.ac     && rm /rftg/src/Makefile.in /rftg/src/configure     && cd /rftg/src     && autoreconf --force --install     && aclocal     && automake     && ./configure --enable-server     && make clean && make" shape="box"];
  "sha256:696bafddfac9b35647c4ec6441a26bf25aa224e2e2d1c4168773ffe6bf7818cf" [label="/bin/sh -c set -xe     && mkdir -p /var/run/mysqld     && sed -ri 's/^user\\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* /etc/mysql/mariadb.conf.d/*     && chown -R mysql:mysql /var/lib/mysql /var/run/mysqld     && chmod 777 /var/run/mysqld     && /usr/bin/mysql_install_db --user=mysql     && /etc/init.d/mysql start     && mysql < /rftg/sql/server-schema.sql     && /etc/init.d/mysql stop     && mv -t /rftg /rftg/src/rftgserver /rftg/src/cards.txt /rftg/src/ai_client /rftg/sql/server-schema.sql /rftg/src/network     && rm -rf /rftg/3rdparty /rftg/src     && apt-get remove -y --allow-remove-essential gcc wget openssl dh-autoreconf automake autoconf m4 autotools-dev iso-codes unzip default-mysql-client     && apt-get autoremove -y --purge     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5626d0be0cbf24bbc1c858e2159ccc6649c100cf2399025d4e26e6f71a42718d" [label="copy{src=/run.sh, dest=/bin/run.sh}" shape="note"];
  "sha256:3e7aea952dd962ccd5806c02694e75275942796f31775fd1f8ad7e56dcbee643" [label="/bin/sh -c set -xe     && chmod +x /bin/run.sh" shape="box"];
  "sha256:db74817b4dd4fdcca867f5d5da83b35665579c4eaa9731d1114ffe4571936052" [label="sha256:db74817b4dd4fdcca867f5d5da83b35665579c4eaa9731d1114ffe4571936052" shape="plaintext"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:e355880440a07ac058ce334da3bfb32ed61075b5d6e10dc4fbb1c58131d5d08c" [label=""];
  "sha256:e355880440a07ac058ce334da3bfb32ed61075b5d6e10dc4fbb1c58131d5d08c" -> "sha256:a427378f8233e37cdac439840cb4d65af7afc7790ce759816b131793b5507973" [label=""];
  "sha256:2f44a58d7ffb1c926ca3971c636e101a69d25a7853a1b39b2dd45fa60f975805" -> "sha256:a427378f8233e37cdac439840cb4d65af7afc7790ce759816b131793b5507973" [label=""];
  "sha256:a427378f8233e37cdac439840cb4d65af7afc7790ce759816b131793b5507973" -> "sha256:e2b87b65ce41d55981d29f903e8f8c18773f3fe9a3c34b5a7de46b8599121096" [label=""];
  "sha256:2f44a58d7ffb1c926ca3971c636e101a69d25a7853a1b39b2dd45fa60f975805" -> "sha256:e2b87b65ce41d55981d29f903e8f8c18773f3fe9a3c34b5a7de46b8599121096" [label=""];
  "sha256:e2b87b65ce41d55981d29f903e8f8c18773f3fe9a3c34b5a7de46b8599121096" -> "sha256:8329b763a0fe811b8a459ac1baf001e1525af4007018ec5f177ee372341fd418" [label=""];
  "sha256:8329b763a0fe811b8a459ac1baf001e1525af4007018ec5f177ee372341fd418" -> "sha256:696bafddfac9b35647c4ec6441a26bf25aa224e2e2d1c4168773ffe6bf7818cf" [label=""];
  "sha256:696bafddfac9b35647c4ec6441a26bf25aa224e2e2d1c4168773ffe6bf7818cf" -> "sha256:5626d0be0cbf24bbc1c858e2159ccc6649c100cf2399025d4e26e6f71a42718d" [label=""];
  "sha256:2f44a58d7ffb1c926ca3971c636e101a69d25a7853a1b39b2dd45fa60f975805" -> "sha256:5626d0be0cbf24bbc1c858e2159ccc6649c100cf2399025d4e26e6f71a42718d" [label=""];
  "sha256:5626d0be0cbf24bbc1c858e2159ccc6649c100cf2399025d4e26e6f71a42718d" -> "sha256:3e7aea952dd962ccd5806c02694e75275942796f31775fd1f8ad7e56dcbee643" [label=""];
  "sha256:3e7aea952dd962ccd5806c02694e75275942796f31775fd1f8ad7e56dcbee643" -> "sha256:db74817b4dd4fdcca867f5d5da83b35665579c4eaa9731d1114ffe4571936052" [label=""];
}

