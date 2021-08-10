[app/sources/213328269.Dockerfile]
digraph {
  "sha256:664f1cdb759b098c6350ce6bf495c3dfda439f218a980e5dd0e85a60e4d71b67" [label="docker-image://docker.io/medicean/vulapps:base_lamp" shape="ellipse"];
  "sha256:1047ef78b0a1497bd0dfb3cef858218783436f14f77bac26371711599e0a3681" [label="local://context" shape="ellipse"];
  "sha256:8e95c0074d8316c8e6fc1be6a403a71d09a5a3a95a821b851eac6e46abf4ce6b" [label="copy{src=/src/cmseasy.sql, dest=/tmp/cmseasy.sql}" shape="note"];
  "sha256:cdabce48dc249dd1297b8d81cd84d411a5da21abae84dda358910c8a2240c440" [label="/bin/sh -c set -x     && apt-get install -y php5-mysql php5-dev php5-gd php5-memcache php5-pspell php5-snmp snmp php5-xmlrpc libapache2-mod-php5 php5-cli wget unzip     && wget -qO /tmp/cmseasy.tar.gz $CMSEASY_URL     && rm -rf /var/www/html/*     && tar -zxf /tmp/cmseasy.tar.gz -C /var/www/html --strip-components=1     && /etc/init.d/mysql restart     && mysql -e \"CREATE DATABASE cmseasy DEFAULT CHARACTER SET utf8;\" -uroot -proot     && mysql -e \"use cmseasy;source /tmp/cmseasy.sql;\" -uroot -proot     && rm -f /var/www/html/install/index.php     && echo \"install-locked !\" > /var/www/html/install/locked" shape="box"];
  "sha256:ea7171b4eb445011067d93675dfddf6869b4531e8b3dd9164750406a5904b4e4" [label="copy{src=/src/config.inc.php, dest=/var/www/html/celive/include/config.inc.php}" shape="note"];
  "sha256:e0c01da9664afb6db92fdb96088979284bfd3a2f1105e8b1722a4d68af438696" [label="copy{src=/src/config.php, dest=/var/www/html/config/config.php}" shape="note"];
  "sha256:757d18f65f6e4a4bbdfdbf396a73dc46e4c38059cab2cc9025b80bdb815531e5" [label="/bin/sh -c set -x     && chown -R www-data:www-data /var/www/html/     && rm -rf /tmp/*" shape="box"];
  "sha256:1b1a7a83d1f104f8d6b6f61fa14542274149d8b6d7f1c0afc8c8a100c41754d4" [label="copy{src=/src/start.sh, dest=/start.sh}" shape="note"];
  "sha256:abfb120a68c3deb7939b2c5582de1d1de718e1b15668adf70ee2b24d4d933d65" [label="/bin/sh -c chmod a+x /start.sh" shape="box"];
  "sha256:df2891ff639c88da7e3a1c8fd058c94b7f6495e225e3942d0d0795e1791a7542" [label="sha256:df2891ff639c88da7e3a1c8fd058c94b7f6495e225e3942d0d0795e1791a7542" shape="plaintext"];
  "sha256:664f1cdb759b098c6350ce6bf495c3dfda439f218a980e5dd0e85a60e4d71b67" -> "sha256:8e95c0074d8316c8e6fc1be6a403a71d09a5a3a95a821b851eac6e46abf4ce6b" [label=""];
  "sha256:1047ef78b0a1497bd0dfb3cef858218783436f14f77bac26371711599e0a3681" -> "sha256:8e95c0074d8316c8e6fc1be6a403a71d09a5a3a95a821b851eac6e46abf4ce6b" [label=""];
  "sha256:8e95c0074d8316c8e6fc1be6a403a71d09a5a3a95a821b851eac6e46abf4ce6b" -> "sha256:cdabce48dc249dd1297b8d81cd84d411a5da21abae84dda358910c8a2240c440" [label=""];
  "sha256:cdabce48dc249dd1297b8d81cd84d411a5da21abae84dda358910c8a2240c440" -> "sha256:ea7171b4eb445011067d93675dfddf6869b4531e8b3dd9164750406a5904b4e4" [label=""];
  "sha256:1047ef78b0a1497bd0dfb3cef858218783436f14f77bac26371711599e0a3681" -> "sha256:ea7171b4eb445011067d93675dfddf6869b4531e8b3dd9164750406a5904b4e4" [label=""];
  "sha256:ea7171b4eb445011067d93675dfddf6869b4531e8b3dd9164750406a5904b4e4" -> "sha256:e0c01da9664afb6db92fdb96088979284bfd3a2f1105e8b1722a4d68af438696" [label=""];
  "sha256:1047ef78b0a1497bd0dfb3cef858218783436f14f77bac26371711599e0a3681" -> "sha256:e0c01da9664afb6db92fdb96088979284bfd3a2f1105e8b1722a4d68af438696" [label=""];
  "sha256:e0c01da9664afb6db92fdb96088979284bfd3a2f1105e8b1722a4d68af438696" -> "sha256:757d18f65f6e4a4bbdfdbf396a73dc46e4c38059cab2cc9025b80bdb815531e5" [label=""];
  "sha256:757d18f65f6e4a4bbdfdbf396a73dc46e4c38059cab2cc9025b80bdb815531e5" -> "sha256:1b1a7a83d1f104f8d6b6f61fa14542274149d8b6d7f1c0afc8c8a100c41754d4" [label=""];
  "sha256:1047ef78b0a1497bd0dfb3cef858218783436f14f77bac26371711599e0a3681" -> "sha256:1b1a7a83d1f104f8d6b6f61fa14542274149d8b6d7f1c0afc8c8a100c41754d4" [label=""];
  "sha256:1b1a7a83d1f104f8d6b6f61fa14542274149d8b6d7f1c0afc8c8a100c41754d4" -> "sha256:abfb120a68c3deb7939b2c5582de1d1de718e1b15668adf70ee2b24d4d933d65" [label=""];
  "sha256:abfb120a68c3deb7939b2c5582de1d1de718e1b15668adf70ee2b24d4d933d65" -> "sha256:df2891ff639c88da7e3a1c8fd058c94b7f6495e225e3942d0d0795e1791a7542" [label=""];
}

