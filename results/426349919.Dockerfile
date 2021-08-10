[app/sources/426349919.Dockerfile]
digraph {
  "sha256:ef86d49730301916312cf992d8cbd6f3ec02a574a01bb6985f715c6427f2a787" [label="docker-image://docker.io/fgrehm/ventriloquist-base:latest" shape="ellipse"];
  "sha256:c0717cd8e3417d1e9d4749cc4a2ba0762c966eb1b6aa0b89cef0144b3bb46211" [label="/bin/sh -c apt-get update &&     apt-get install libaio-dev -y &&     wget -q http://dev.mysql.com/get/Downloads/MySQL-5.6/mysql-5.6.17-debian6.0-x86_64.deb -O /tmp/mysql.deb &&     dpkg -i /tmp/mysql.deb &&     rm /tmp/mysql.deb &&     groupadd mysql &&     useradd -r -g mysql mysql &&     mkdir -p /etc/mysql/conf.d &&     mkdir -p /var/log/mysql &&     mkdir -p /var/run/mysqld &&     chown -R mysql:mysql /opt/mysql/server-5.6 &&     chown -R mysql:mysql /var/run/mysqld &&     /opt/mysql/server-5.6/scripts/mysql_install_db --user=mysql --datadir=/var/lib/mysql &&     rm /opt/mysql/server-5.6/my*.cnf &&     echo 'export PATH=\"/opt/mysql/server-5.6/bin:$PATH\"' > /etc/profile.d/mysql.sh &&     rm /opt/mysql/server-5.6/bin/mysqld-debug &&     rm /opt/mysql/server-5.6/bin/mysqltest_* &&     rm /opt/mysql/server-5.6/bin/mysql_client_test* &&     rm /opt/mysql/server-5.6/lib/libmysqld-debug.a &&     rm -rf /opt/mysql/server-5.6/mysql-test &&     rm -rf /var/lib/apt/lists/* &&     rm -rf /tmp/* &&     apt-get autoremove &&     apt-get clean" shape="box"];
  "sha256:4c64609d8f45afd818ebc0de5f41a30e91d2067350791e59cb7b9da2c7de39a9" [label="local://context" shape="ellipse"];
  "sha256:8eea7d0e56ac3e6f6381d2eefa3beaafca18fe8c78179dd0533311a2eea6ed56" [label="copy{src=/config, dest=/}" shape="note"];
  "sha256:d23d1847b00076f338556cd45d3535dd83a7e7352319b6d742a9c09a54a00f94" [label="/bin/sh -c /bin/add-mysql-user" shape="box"];
  "sha256:9c2d979eb355e2702bd29f2b9ae896238c93fa504c8fabf68aacca1bdbf87773" [label="sha256:9c2d979eb355e2702bd29f2b9ae896238c93fa504c8fabf68aacca1bdbf87773" shape="plaintext"];
  "sha256:ef86d49730301916312cf992d8cbd6f3ec02a574a01bb6985f715c6427f2a787" -> "sha256:c0717cd8e3417d1e9d4749cc4a2ba0762c966eb1b6aa0b89cef0144b3bb46211" [label=""];
  "sha256:c0717cd8e3417d1e9d4749cc4a2ba0762c966eb1b6aa0b89cef0144b3bb46211" -> "sha256:8eea7d0e56ac3e6f6381d2eefa3beaafca18fe8c78179dd0533311a2eea6ed56" [label=""];
  "sha256:4c64609d8f45afd818ebc0de5f41a30e91d2067350791e59cb7b9da2c7de39a9" -> "sha256:8eea7d0e56ac3e6f6381d2eefa3beaafca18fe8c78179dd0533311a2eea6ed56" [label=""];
  "sha256:8eea7d0e56ac3e6f6381d2eefa3beaafca18fe8c78179dd0533311a2eea6ed56" -> "sha256:d23d1847b00076f338556cd45d3535dd83a7e7352319b6d742a9c09a54a00f94" [label=""];
  "sha256:d23d1847b00076f338556cd45d3535dd83a7e7352319b6d742a9c09a54a00f94" -> "sha256:9c2d979eb355e2702bd29f2b9ae896238c93fa504c8fabf68aacca1bdbf87773" [label=""];
}

