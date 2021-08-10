[app/sources/299909532.Dockerfile]
digraph {
  "sha256:9a4a00440d55b3de938630863df22378cfc92065c6a80dad8977055713ea1111" [label="docker-image://docker.io/library/openjdk:7-jdk" shape="ellipse"];
  "sha256:2b9961cf69325cd9ffc387d4c30cf692c341f4f6a4a73c9d372b9672222ddf71" [label="/bin/sh -c apt-get update && apt-get install -y lsb-release &&   wget https://dev.mysql.com/get/mysql-apt-config_0.8.4-1_all.deb &&   dpkg -i mysql-apt-config_0.8.4-1_all.deb && rm -f mysql-apt-config_0.8.4-1_all.deb &&   mkdir -p $TOMCAT_HOME && cd /opt &&   wget http://mirrors.standaloneinstaller.com/apache/tomcat/tomcat-$TOMCAT_MAJOR_VERSION/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz &&   tar -xvf apache-tomcat-$TOMCAT_VERSION.tar.gz && rm -f apache-tomcat-$TOMCAT_VERSION.tar.gz" shape="box"];
  "sha256:c42cc657bc6332cf42b287272efb0a8a1108f131ac716b125f19c5ca9f888918" [label="/bin/sh -c apt-get update &&   apt-get -y install mysql-server pwgen supervisor &&   apt-get clean &&   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:f5b509328396a96ba5383286ad3a212420b7339c87e401aa4c0f178a9ed672ef" [label="local://context" shape="ellipse"];
  "sha256:94c147156e74aa32dc5a75328e9d5d48f2377ae5b4658cf8ed220a3884660aeb" [label="copy{src=/start-tomcat.sh, dest=/start-tomcat.sh}" shape="note"];
  "sha256:da85a5c9b9aac59886d05cc971392211209bfc5644f4b361bbfba1ca870047b1" [label="copy{src=/start-mysqld.sh, dest=/start-mysqld.sh}" shape="note"];
  "sha256:7987d570a86de3676fbb57f3b76186724ee227d02edbf1c6923b5dbd62ec14d3" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:b2c0cdbcc7006c416392198c7cf8156b2c805ab2ed0117879fa26e639d486807" [label="/bin/sh -c chmod 755 /*.sh" shape="box"];
  "sha256:6b1670e6e8a0bc05f7c881eb992e58a4932ef5aff5d353583ae19cc068ce9bdd" [label="copy{src=/my.cnf, dest=/etc/mysql/conf.d/my.cnf}" shape="note"];
  "sha256:9126c2eb85ced48968cdd67690200d39b7c763acb60edfc4b3a4785b773147ae" [label="/bin/sh -c chmod 644 /etc/mysql/conf.d/my.cnf" shape="box"];
  "sha256:f1e093d50e18eddecea99af9bc128808ab93d2881f9b905742805f89c60d9a0f" [label="copy{src=/supervisord-tomcat.conf, dest=/etc/supervisor/conf.d/supervisord-tomcat.conf}" shape="note"];
  "sha256:8194b32745c52618f71b12aa69d3bb3646995cc0809b5a7c52be7145ac8ca1b5" [label="copy{src=/supervisord-mysqld.conf, dest=/etc/supervisor/conf.d/supervisord-mysqld.conf}" shape="note"];
  "sha256:0e208e55d410f003ac12a7dc8e2a8dbcb830125a0f254352e502d2773fc6e9e7" [label="/bin/sh -c rm -rf /var/lib/mysql/*" shape="box"];
  "sha256:97c00d94150c930e8f6cda68dd58c54195694ed85b67f7f41353ff2554e792c1" [label="copy{src=/create_mysql_admin_user.sh, dest=/create_mysql_admin_user.sh}" shape="note"];
  "sha256:737cbf08c9e3362dbd6f0b932822d024413b1f22d8a2eecba3d9425a847ea978" [label="copy{src=/mysql-setup.sh, dest=/mysql-setup.sh}" shape="note"];
  "sha256:0b42e3fc5ac0cb8799a65f5c5f565a232ddd0b0a128dba193b0f7af4151c0de1" [label="/bin/sh -c chmod 755 /*.sh" shape="box"];
  "sha256:38bc30c62d9717e1270c01cc236dc01d0f581da2eb075f12dc4c17d75bd9829c" [label="mkdir{path=/opt/apache-tomcat-7.0.77}" shape="note"];
  "sha256:0a840e7f41afd2541f06293f0c28d3b6f67fd09bf14a8429ea3fc3af1b7d0a8b" [label="sha256:0a840e7f41afd2541f06293f0c28d3b6f67fd09bf14a8429ea3fc3af1b7d0a8b" shape="plaintext"];
  "sha256:9a4a00440d55b3de938630863df22378cfc92065c6a80dad8977055713ea1111" -> "sha256:2b9961cf69325cd9ffc387d4c30cf692c341f4f6a4a73c9d372b9672222ddf71" [label=""];
  "sha256:2b9961cf69325cd9ffc387d4c30cf692c341f4f6a4a73c9d372b9672222ddf71" -> "sha256:c42cc657bc6332cf42b287272efb0a8a1108f131ac716b125f19c5ca9f888918" [label=""];
  "sha256:c42cc657bc6332cf42b287272efb0a8a1108f131ac716b125f19c5ca9f888918" -> "sha256:94c147156e74aa32dc5a75328e9d5d48f2377ae5b4658cf8ed220a3884660aeb" [label=""];
  "sha256:f5b509328396a96ba5383286ad3a212420b7339c87e401aa4c0f178a9ed672ef" -> "sha256:94c147156e74aa32dc5a75328e9d5d48f2377ae5b4658cf8ed220a3884660aeb" [label=""];
  "sha256:94c147156e74aa32dc5a75328e9d5d48f2377ae5b4658cf8ed220a3884660aeb" -> "sha256:da85a5c9b9aac59886d05cc971392211209bfc5644f4b361bbfba1ca870047b1" [label=""];
  "sha256:f5b509328396a96ba5383286ad3a212420b7339c87e401aa4c0f178a9ed672ef" -> "sha256:da85a5c9b9aac59886d05cc971392211209bfc5644f4b361bbfba1ca870047b1" [label=""];
  "sha256:da85a5c9b9aac59886d05cc971392211209bfc5644f4b361bbfba1ca870047b1" -> "sha256:7987d570a86de3676fbb57f3b76186724ee227d02edbf1c6923b5dbd62ec14d3" [label=""];
  "sha256:f5b509328396a96ba5383286ad3a212420b7339c87e401aa4c0f178a9ed672ef" -> "sha256:7987d570a86de3676fbb57f3b76186724ee227d02edbf1c6923b5dbd62ec14d3" [label=""];
  "sha256:7987d570a86de3676fbb57f3b76186724ee227d02edbf1c6923b5dbd62ec14d3" -> "sha256:b2c0cdbcc7006c416392198c7cf8156b2c805ab2ed0117879fa26e639d486807" [label=""];
  "sha256:b2c0cdbcc7006c416392198c7cf8156b2c805ab2ed0117879fa26e639d486807" -> "sha256:6b1670e6e8a0bc05f7c881eb992e58a4932ef5aff5d353583ae19cc068ce9bdd" [label=""];
  "sha256:f5b509328396a96ba5383286ad3a212420b7339c87e401aa4c0f178a9ed672ef" -> "sha256:6b1670e6e8a0bc05f7c881eb992e58a4932ef5aff5d353583ae19cc068ce9bdd" [label=""];
  "sha256:6b1670e6e8a0bc05f7c881eb992e58a4932ef5aff5d353583ae19cc068ce9bdd" -> "sha256:9126c2eb85ced48968cdd67690200d39b7c763acb60edfc4b3a4785b773147ae" [label=""];
  "sha256:9126c2eb85ced48968cdd67690200d39b7c763acb60edfc4b3a4785b773147ae" -> "sha256:f1e093d50e18eddecea99af9bc128808ab93d2881f9b905742805f89c60d9a0f" [label=""];
  "sha256:f5b509328396a96ba5383286ad3a212420b7339c87e401aa4c0f178a9ed672ef" -> "sha256:f1e093d50e18eddecea99af9bc128808ab93d2881f9b905742805f89c60d9a0f" [label=""];
  "sha256:f1e093d50e18eddecea99af9bc128808ab93d2881f9b905742805f89c60d9a0f" -> "sha256:8194b32745c52618f71b12aa69d3bb3646995cc0809b5a7c52be7145ac8ca1b5" [label=""];
  "sha256:f5b509328396a96ba5383286ad3a212420b7339c87e401aa4c0f178a9ed672ef" -> "sha256:8194b32745c52618f71b12aa69d3bb3646995cc0809b5a7c52be7145ac8ca1b5" [label=""];
  "sha256:8194b32745c52618f71b12aa69d3bb3646995cc0809b5a7c52be7145ac8ca1b5" -> "sha256:0e208e55d410f003ac12a7dc8e2a8dbcb830125a0f254352e502d2773fc6e9e7" [label=""];
  "sha256:0e208e55d410f003ac12a7dc8e2a8dbcb830125a0f254352e502d2773fc6e9e7" -> "sha256:97c00d94150c930e8f6cda68dd58c54195694ed85b67f7f41353ff2554e792c1" [label=""];
  "sha256:f5b509328396a96ba5383286ad3a212420b7339c87e401aa4c0f178a9ed672ef" -> "sha256:97c00d94150c930e8f6cda68dd58c54195694ed85b67f7f41353ff2554e792c1" [label=""];
  "sha256:97c00d94150c930e8f6cda68dd58c54195694ed85b67f7f41353ff2554e792c1" -> "sha256:737cbf08c9e3362dbd6f0b932822d024413b1f22d8a2eecba3d9425a847ea978" [label=""];
  "sha256:f5b509328396a96ba5383286ad3a212420b7339c87e401aa4c0f178a9ed672ef" -> "sha256:737cbf08c9e3362dbd6f0b932822d024413b1f22d8a2eecba3d9425a847ea978" [label=""];
  "sha256:737cbf08c9e3362dbd6f0b932822d024413b1f22d8a2eecba3d9425a847ea978" -> "sha256:0b42e3fc5ac0cb8799a65f5c5f565a232ddd0b0a128dba193b0f7af4151c0de1" [label=""];
  "sha256:0b42e3fc5ac0cb8799a65f5c5f565a232ddd0b0a128dba193b0f7af4151c0de1" -> "sha256:38bc30c62d9717e1270c01cc236dc01d0f581da2eb075f12dc4c17d75bd9829c" [label=""];
  "sha256:38bc30c62d9717e1270c01cc236dc01d0f581da2eb075f12dc4c17d75bd9829c" -> "sha256:0a840e7f41afd2541f06293f0c28d3b6f67fd09bf14a8429ea3fc3af1b7d0a8b" [label=""];
}

