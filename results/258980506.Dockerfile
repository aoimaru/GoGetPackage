[app/sources/258980506.Dockerfile]
digraph {
  "sha256:65f3e4747a00684c6da4995f16a02ac2b364435b3846ae42082c832ecc452431" [label="local://context" shape="ellipse"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:254d2e97370167d09cb618ac26792c6af7293de5255ed00433de12141dd06b1e" [label="/bin/sh -c echo 'root:!23$QweR' | chpasswd" shape="box"];
  "sha256:11ef7825fd90f931701920929da939ffdfb201999d160f34603ffaab5e5bdfe0" [label="/bin/sh -c rpm --import /etc/pki/rpm-gpg/RPM*" shape="box"];
  "sha256:5f94b1506286cbec2b8df807c80816d76738269cf47bce17d3eb7e29e898b53d" [label="/bin/sh -c yum -y install         openssh openssh-server openssh-clients gcc gcc-c++ make autoconf bison ncurses-devel which         sudo passwd wget &&        yum clean all" shape="box"];
  "sha256:fbb6f5f828e7d6183454c1084cdf9de9a77d6da748566fc6aaa4fdb72eec0601" [label="/bin/sh -c sshd-keygen" shape="box"];
  "sha256:db72419e388d0bb01cc35dbf86dc16dedd40d80a6e21a52115e9864471b680a7" [label="/bin/sh -c sed -i \"s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g\" /etc/ssh/sshd_config" shape="box"];
  "sha256:b8442480c647e1f0703318dc9e55aea55c083b0cd2599b7fa0be07a66cfb7a40" [label="/bin/sh -c sed -i \"s/UsePAM.*/UsePAM no/g\" /etc/ssh/sshd_config" shape="box"];
  "sha256:2820d197d4e98d5c3f877b343c947f467820c4866c772d876657212150a9c668" [label="/bin/sh -c mkdir /var/run/sshd" shape="box"];
  "sha256:92f1c769b04c63092f15445ab7c2788c7257bc737d4a41cf8d69a72636eecf40" [label="/bin/sh -c mkdir /opt/software" shape="box"];
  "sha256:ad7606e3e2ac29d7257d32f849c1072ccea1a22e83856b71a81b94bdc4c6cb67" [label="/bin/sh -c wget http://www.cmake.org/files/v3.0/cmake-3.0.1.tar.gz &&     tar zxvf cmake-3.0.1.tar.gz &&     cd cmake-3.0.1 && ./configure --prefix=/usr/local/cmake && gmake &&     make && make install &&     cd ../ && rm -rf cmake-3.0.1*" shape="box"];
  "sha256:b5efa36e9aa867698d3501189d829c21d5ed5fb0473b8f3d780054624e16ad05" [label="/bin/sh -c wget ftp://temp:temp@192.168.50.104/centos7/mysql-5.6.29.tar.gz &&      tar -zxvf mysql-5.6.29.tar.gz -C /opt/software/ &&      rm mysql-5.6.29.tar.gz &&      cd /opt/software/mysql-5.6.29 &&      /usr/local/cmake/bin/cmake . -DCMAKE_INSTALL_PREFIX=/usr/local/mysql-5.6.29 -DMYSQL_DATADIR=/usr/local/mysql-5.6.29/data -DSYSCONFDIR=/etc -DWITH_INNOBASE_STORAGE_ENGINE=1 -DWITH_ARCHIVE_STORAGE_ENGINE=1 -DWITH_BLACKHOLE_STORAGE_ENGINE=1 -DWITH_PARTITION_STORAGE_ENGINE=1 -DWITH_PERFSCHEMA_STORAGE_ENGINE=1 -DWITHOUT_EXAMPLE_STORAGE_ENGINE=1 -DWITHOUT_FEDERATED_STORAGE_ENGINE=1 -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_EXTRA_CHARSETS=all -DENABLED_LOCAL_INFILE=1 -DWITH_READLINE=1 -DMYSQL_UNIX_ADDR=/usr/local/mysql-5.6.29/mysql.sock -DMYSQL_TCP_PORT=3306 -DMYSQL_USER=mysql -DCOMPILATION_COMMENT=\"lq-edition\" -DENABLE_DTRACE=0 -DOPTIMIZER_TRACE=1 -DWITH_DEBUG=1 &&      make && make install" shape="box"];
  "sha256:f3899a39a4be1312104242d104c12a3d94f86188b964548de3e8bf5e146e295c" [label="/bin/sh -c useradd mysql" shape="box"];
  "sha256:46d6c14191e68e4e2de8fefd3c2add68bebeb5cf81bfe0dfff8a4aaa2b8fefad" [label="/bin/sh -c echo \"mysql:mysql\" | chpasswd" shape="box"];
  "sha256:65227dcca5d076ceac1f8d9a7f3f98797e42648910ea0400a177a7b5e9ea3a45" [label="/bin/sh -c echo \"mysql   ALL=(ALL)       ALL\" >> /etc/sudoers" shape="box"];
  "sha256:51b185a2df953bfd6707d9424abdbb27ef18533aef5a3cc86cc7f75e7616440a" [label="/bin/sh -c cd /usr/local/mysql-5.6.29 && chown -R mysql:mysql ./" shape="box"];
  "sha256:606c0f4a86a781ec91541e7ced9564c49b781f8860cf278feebe58ab845404f2" [label="copy{src=/my.cnf, dest=/etc/my.cnf}" shape="note"];
  "sha256:466113596967970765bca7ca28649e5ef14fd8b29e16ca55f4595172d73c9574" [label="/bin/sh -c chown mysql:mysql /etc/my.cnf" shape="box"];
  "sha256:fe6fd58aa499fb735988c928e796487abd5f988ef7be1e136d4851f3399da590" [label="/bin/sh -c cd /usr/local/mysql-5.6.29 && ./scripts/mysql_install_db --user=mysql --basedir=/usr/local/mysql-5.6.29 --datadir=/usr/local/mysql-5.6.29/data/" shape="box"];
  "sha256:725291d1bce45adf2019a4b5853750b8b14b1ae0bed7641cac02db75803b4401" [label="sha256:725291d1bce45adf2019a4b5853750b8b14b1ae0bed7641cac02db75803b4401" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:254d2e97370167d09cb618ac26792c6af7293de5255ed00433de12141dd06b1e" [label=""];
  "sha256:254d2e97370167d09cb618ac26792c6af7293de5255ed00433de12141dd06b1e" -> "sha256:11ef7825fd90f931701920929da939ffdfb201999d160f34603ffaab5e5bdfe0" [label=""];
  "sha256:11ef7825fd90f931701920929da939ffdfb201999d160f34603ffaab5e5bdfe0" -> "sha256:5f94b1506286cbec2b8df807c80816d76738269cf47bce17d3eb7e29e898b53d" [label=""];
  "sha256:5f94b1506286cbec2b8df807c80816d76738269cf47bce17d3eb7e29e898b53d" -> "sha256:fbb6f5f828e7d6183454c1084cdf9de9a77d6da748566fc6aaa4fdb72eec0601" [label=""];
  "sha256:fbb6f5f828e7d6183454c1084cdf9de9a77d6da748566fc6aaa4fdb72eec0601" -> "sha256:db72419e388d0bb01cc35dbf86dc16dedd40d80a6e21a52115e9864471b680a7" [label=""];
  "sha256:db72419e388d0bb01cc35dbf86dc16dedd40d80a6e21a52115e9864471b680a7" -> "sha256:b8442480c647e1f0703318dc9e55aea55c083b0cd2599b7fa0be07a66cfb7a40" [label=""];
  "sha256:b8442480c647e1f0703318dc9e55aea55c083b0cd2599b7fa0be07a66cfb7a40" -> "sha256:2820d197d4e98d5c3f877b343c947f467820c4866c772d876657212150a9c668" [label=""];
  "sha256:2820d197d4e98d5c3f877b343c947f467820c4866c772d876657212150a9c668" -> "sha256:92f1c769b04c63092f15445ab7c2788c7257bc737d4a41cf8d69a72636eecf40" [label=""];
  "sha256:92f1c769b04c63092f15445ab7c2788c7257bc737d4a41cf8d69a72636eecf40" -> "sha256:ad7606e3e2ac29d7257d32f849c1072ccea1a22e83856b71a81b94bdc4c6cb67" [label=""];
  "sha256:ad7606e3e2ac29d7257d32f849c1072ccea1a22e83856b71a81b94bdc4c6cb67" -> "sha256:b5efa36e9aa867698d3501189d829c21d5ed5fb0473b8f3d780054624e16ad05" [label=""];
  "sha256:b5efa36e9aa867698d3501189d829c21d5ed5fb0473b8f3d780054624e16ad05" -> "sha256:f3899a39a4be1312104242d104c12a3d94f86188b964548de3e8bf5e146e295c" [label=""];
  "sha256:f3899a39a4be1312104242d104c12a3d94f86188b964548de3e8bf5e146e295c" -> "sha256:46d6c14191e68e4e2de8fefd3c2add68bebeb5cf81bfe0dfff8a4aaa2b8fefad" [label=""];
  "sha256:46d6c14191e68e4e2de8fefd3c2add68bebeb5cf81bfe0dfff8a4aaa2b8fefad" -> "sha256:65227dcca5d076ceac1f8d9a7f3f98797e42648910ea0400a177a7b5e9ea3a45" [label=""];
  "sha256:65227dcca5d076ceac1f8d9a7f3f98797e42648910ea0400a177a7b5e9ea3a45" -> "sha256:51b185a2df953bfd6707d9424abdbb27ef18533aef5a3cc86cc7f75e7616440a" [label=""];
  "sha256:51b185a2df953bfd6707d9424abdbb27ef18533aef5a3cc86cc7f75e7616440a" -> "sha256:606c0f4a86a781ec91541e7ced9564c49b781f8860cf278feebe58ab845404f2" [label=""];
  "sha256:65f3e4747a00684c6da4995f16a02ac2b364435b3846ae42082c832ecc452431" -> "sha256:606c0f4a86a781ec91541e7ced9564c49b781f8860cf278feebe58ab845404f2" [label=""];
  "sha256:606c0f4a86a781ec91541e7ced9564c49b781f8860cf278feebe58ab845404f2" -> "sha256:466113596967970765bca7ca28649e5ef14fd8b29e16ca55f4595172d73c9574" [label=""];
  "sha256:466113596967970765bca7ca28649e5ef14fd8b29e16ca55f4595172d73c9574" -> "sha256:fe6fd58aa499fb735988c928e796487abd5f988ef7be1e136d4851f3399da590" [label=""];
  "sha256:fe6fd58aa499fb735988c928e796487abd5f988ef7be1e136d4851f3399da590" -> "sha256:725291d1bce45adf2019a4b5853750b8b14b1ae0bed7641cac02db75803b4401" [label=""];
}

