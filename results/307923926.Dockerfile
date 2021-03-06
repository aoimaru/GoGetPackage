[app/sources/307923926.Dockerfile]
digraph {
  "sha256:cbdf77d3cd4cd9e8440ac4145e00b91796cfb608fe5ff98f23d22c877033c99a" [label="local://context" shape="ellipse"];
  "sha256:73ce22f1db8a1740486602af4557020f2ad5dcf90b87a3b51d3b34cdc18bbc8a" [label="http://www.nagios-plugins.org/download/nagios-plugins-1.5.tar.gz" shape="ellipse"];
  "sha256:ddbbc0cfd3bb027f387e5e67ff354a032ebe5be0422ae40fcc71343e16edf2f8" [label="http://downloads.sourceforge.net/project/nagios/nagios-3.x/nagios-3.5.1/nagios-3.5.1.tar.gz?r=http%3A%2F%2Fwww.nagios.org%2Fdownload%2Fcore%2Fthanks%2F%3Ft%3D1398863696&ts=1398863718&use_mirror=superb-dca3" shape="ellipse"];
  "sha256:474347c495f54bec6ffde8af34504fd38351ba78d4610135e505e18ec8944917" [label="docker-image://docker.io/cpuguy83/ubuntu:latest" shape="ellipse"];
  "sha256:77d733c76df06e445f43d27683fdfaf356eee680184065aa6bfadd0f1894968b" [label="/bin/sh -c sed -i 's/universe/universe multiverse/' /etc/apt/sources.list" shape="box"];
  "sha256:042ac74bbaa00402e12590e54abc1d7ecde2e5c6d09236683cd0adfe06d4e421" [label="/bin/sh -c apt-get update && apt-get install -y iputils-ping netcat build-essential snmp snmpd snmp-mibs-downloader php5-cli apache2 libapache2-mod-php5 runit bc postfix bsd-mailx" shape="box"];
  "sha256:c165715289b644055f56aa009d1045cdc09a29a14a48a319fadc15c384a398f8" [label="/bin/sh -c ( egrep -i  \"^${NAGIOS_GROUP}\" /etc/group || groupadd $NAGIOS_GROUP ) && ( egrep -i \"^${NAGIOS_CMDGROUP}\" /etc/group || groupadd $NAGIOS_CMDGROUP )" shape="box"];
  "sha256:ce9f6c99b0c70f311f475acff2f2da37273c53743086ef96807581ac0205e959" [label="/bin/sh -c ( id -u $NAGIOS_USER || useradd --system $NAGIOS_USER -g $NAGIOS_GROUP -d $NAGIOS_HOME ) && ( id -u $NAGIOS_CMDUSER || useradd --system -d $NAGIOS_HOME -g $NAGIOS_CMDGROUP $NAGIOS_CMDUSER )" shape="box"];
  "sha256:5145d2fe1c9adb37602ec6c1c9098977bbe43b433658ba53fc5dc600be810579" [label="copy{src=/nagios-3.5.1.tar.gz, dest=/tmp/nagios.tar.gz}" shape="note"];
  "sha256:86258265e8df3497d9c1ee496943bdd178659f4572c725207635e2c09de148b3" [label="/bin/sh -c cd /tmp && tar -zxvf nagios.tar.gz && cd nagios  && ./configure --prefix=${NAGIOS_HOME} --exec-prefix=${NAGIOS_HOME} --enable-event-broker --with-nagios-command-user=${NAGIOS_CMDUSER} --with-command-group=${NAGIOS_CMDGROUP} --with-nagios-user=${NAGIOS_USER} --with-nagios-group=${NAGIOS_GROUP} && make all && make install && make install-config && make install-commandmode && cp sample-config/httpd.conf /etc/apache2/conf.d/nagios.conf" shape="box"];
  "sha256:00c4ae39fd76a7ead945fb932b1a1dea25f24871023a6008160907e98ee04fd5" [label="copy{src=/nagios-plugins-1.5.tar.gz, dest=/tmp/}" shape="note"];
  "sha256:1507e54054b8bdbcd5db21ed489dd3a4ca4e35aa612e66a95eecf68068d5543f" [label="/bin/sh -c cd /tmp && tar -zxvf nagios-plugins-1.5.tar.gz && cd nagios-plugins-1.5 && ./configure --prefix=${NAGIOS_HOME} && make && make install" shape="box"];
  "sha256:11636bbd54bf3d5424921105437f839d8ef97352f9b8601a6b31706af3b1912b" [label="/bin/sh -c sed -i.bak 's/.*\\=www\\-data//g' /etc/apache2/envvars" shape="box"];
  "sha256:492bfd6c0d78fd4af20dbbcf1843a07b251355ff864fbdd57fc1359b318a9517" [label="/bin/sh -c export DOC_ROOT=\"DocumentRoot $(echo $NAGIOS_HOME/share)\"; sed -i \"s,DocumentRoot.*,$DOC_ROOT,\" /etc/apache2/sites-enabled/000-default" shape="box"];
  "sha256:726c8eaff1ff186d03b1ef01252be49691d956152ee66cce0666b52586aaf1ab" [label="/bin/sh -c ln -s ${NAGIOS_HOME}/bin/nagios /usr/local/bin/nagios && mkdir -p /usr/share/snmp/mibs && chmod 0755 /usr/share/snmp/mibs && touch /usr/share/snmp/mibs/.foo" shape="box"];
  "sha256:6f7e8943b0145df7925fc9eca9e3a34a45bf4f9a3f5c6cf1cf8a2bd507eb4748" [label="/bin/sh -c echo \"use_timezone=$NAGIOS_TIMEZONE\" >> ${NAGIOS_HOME}/etc/nagios.cfg && echo \"SetEnv TZ \\\"${NAGIOS_TIMEZONE}\\\"\" >> /etc/apache2/conf.d/nagios.conf" shape="box"];
  "sha256:27f49674a22af9704e17ea01ec038c7607c89577f879eeba6eccfbb04dc5c6f2" [label="/bin/sh -c mkdir -p ${NAGIOS_HOME}/etc/conf.d && mkdir -p ${NAGIOS_HOME}/etc/monitor && ln -s /usr/share/snmp/mibs ${NAGIOS_HOME}/libexec/mibs" shape="box"];
  "sha256:8535716da5fb7573c79a183e20ebf549d51250ed08c090390a6e942dcd1de853" [label="/bin/sh -c echo \"cfg_dir=${NAGIOS_HOME}/etc/conf.d\" >> ${NAGIOS_HOME}/etc/nagios.cfg" shape="box"];
  "sha256:fc21a382de918516f04f28b949f3a9022f0f3accc073bdaee6ec57d3eb2027fa" [label="/bin/sh -c echo \"cfg_dir=${NAGIOS_HOME}/etc/monitor\" >> ${NAGIOS_HOME}/etc/nagios.cfg" shape="box"];
  "sha256:e0dc46f8a45e15e9f5233464d72386620ca528cd33b7fc2a9bf0d8c0c2ccd6f2" [label="/bin/sh -c download-mibs && echo \"mibs +ALL\" > /etc/snmp/snmp.conf" shape="box"];
  "sha256:248bac690f5e62cf921288085ad23de987493b9a381f50c5ab90b1fcb5172ac2" [label="/bin/sh -c sed -i 's,/bin/mail,/usr/bin/mail,' /opt/nagios/etc/objects/commands.cfg &&   sed -i 's,/usr/usr,/usr,' /opt/nagios/etc/objects/commands.cfg" shape="box"];
  "sha256:a736371c10d899ed41614631f8dd53b674bbf1086ae60a0bc866e685f58adfe3" [label="/bin/sh -c cp /etc/services /var/spool/postfix/etc/" shape="box"];
  "sha256:1aeeaf896dd5954ae4e256b57fe82a325503326a4ce6ca5fb2d4adb7999522e7" [label="/bin/sh -c mkdir -p /etc/sv/nagios && mkdir -p /etc/sv/apache && rm -rf /etc/sv/getty-5 && mkdir -p /etc/sv/postfix" shape="box"];
  "sha256:2c752042cc2ba7408376bae8c8c047a4631e37a92aa0fe2f7980e0a239bcac06" [label="copy{src=/nagios.init, dest=/etc/sv/nagios/run}" shape="note"];
  "sha256:d070534bbb79d9918807de8b4b1e79d31c254b6afa454a330681299a54e11e4c" [label="copy{src=/apache.init, dest=/etc/sv/apache/run}" shape="note"];
  "sha256:90f0b7fc600c467aaf65445188f4ec950913e6cc3d9b5acb396e3a1867a1fbae" [label="copy{src=/postfix.init, dest=/etc/sv/postfix/run}" shape="note"];
  "sha256:a982ff5f0088a776f1c2d6da45a63d9d221a3b897045ffe4c203658d4d0cde0c" [label="copy{src=/postfix.stop, dest=/etc/sv/postfix/finish}" shape="note"];
  "sha256:383ef4b191c4210f4a3d7662fd6cec4f02531cd340ab9e87784627d7153d5649" [label="copy{src=/start.sh, dest=/usr/local/bin/start_nagios}" shape="note"];
  "sha256:98ee650fec8db86c29c058cd3979be54eacfcba85900b64387455b66d6b95d7a" [label="sha256:98ee650fec8db86c29c058cd3979be54eacfcba85900b64387455b66d6b95d7a" shape="plaintext"];
  "sha256:474347c495f54bec6ffde8af34504fd38351ba78d4610135e505e18ec8944917" -> "sha256:77d733c76df06e445f43d27683fdfaf356eee680184065aa6bfadd0f1894968b" [label=""];
  "sha256:77d733c76df06e445f43d27683fdfaf356eee680184065aa6bfadd0f1894968b" -> "sha256:042ac74bbaa00402e12590e54abc1d7ecde2e5c6d09236683cd0adfe06d4e421" [label=""];
  "sha256:042ac74bbaa00402e12590e54abc1d7ecde2e5c6d09236683cd0adfe06d4e421" -> "sha256:c165715289b644055f56aa009d1045cdc09a29a14a48a319fadc15c384a398f8" [label=""];
  "sha256:c165715289b644055f56aa009d1045cdc09a29a14a48a319fadc15c384a398f8" -> "sha256:ce9f6c99b0c70f311f475acff2f2da37273c53743086ef96807581ac0205e959" [label=""];
  "sha256:ce9f6c99b0c70f311f475acff2f2da37273c53743086ef96807581ac0205e959" -> "sha256:5145d2fe1c9adb37602ec6c1c9098977bbe43b433658ba53fc5dc600be810579" [label=""];
  "sha256:ddbbc0cfd3bb027f387e5e67ff354a032ebe5be0422ae40fcc71343e16edf2f8" -> "sha256:5145d2fe1c9adb37602ec6c1c9098977bbe43b433658ba53fc5dc600be810579" [label=""];
  "sha256:5145d2fe1c9adb37602ec6c1c9098977bbe43b433658ba53fc5dc600be810579" -> "sha256:86258265e8df3497d9c1ee496943bdd178659f4572c725207635e2c09de148b3" [label=""];
  "sha256:86258265e8df3497d9c1ee496943bdd178659f4572c725207635e2c09de148b3" -> "sha256:00c4ae39fd76a7ead945fb932b1a1dea25f24871023a6008160907e98ee04fd5" [label=""];
  "sha256:73ce22f1db8a1740486602af4557020f2ad5dcf90b87a3b51d3b34cdc18bbc8a" -> "sha256:00c4ae39fd76a7ead945fb932b1a1dea25f24871023a6008160907e98ee04fd5" [label=""];
  "sha256:00c4ae39fd76a7ead945fb932b1a1dea25f24871023a6008160907e98ee04fd5" -> "sha256:1507e54054b8bdbcd5db21ed489dd3a4ca4e35aa612e66a95eecf68068d5543f" [label=""];
  "sha256:1507e54054b8bdbcd5db21ed489dd3a4ca4e35aa612e66a95eecf68068d5543f" -> "sha256:11636bbd54bf3d5424921105437f839d8ef97352f9b8601a6b31706af3b1912b" [label=""];
  "sha256:11636bbd54bf3d5424921105437f839d8ef97352f9b8601a6b31706af3b1912b" -> "sha256:492bfd6c0d78fd4af20dbbcf1843a07b251355ff864fbdd57fc1359b318a9517" [label=""];
  "sha256:492bfd6c0d78fd4af20dbbcf1843a07b251355ff864fbdd57fc1359b318a9517" -> "sha256:726c8eaff1ff186d03b1ef01252be49691d956152ee66cce0666b52586aaf1ab" [label=""];
  "sha256:726c8eaff1ff186d03b1ef01252be49691d956152ee66cce0666b52586aaf1ab" -> "sha256:6f7e8943b0145df7925fc9eca9e3a34a45bf4f9a3f5c6cf1cf8a2bd507eb4748" [label=""];
  "sha256:6f7e8943b0145df7925fc9eca9e3a34a45bf4f9a3f5c6cf1cf8a2bd507eb4748" -> "sha256:27f49674a22af9704e17ea01ec038c7607c89577f879eeba6eccfbb04dc5c6f2" [label=""];
  "sha256:27f49674a22af9704e17ea01ec038c7607c89577f879eeba6eccfbb04dc5c6f2" -> "sha256:8535716da5fb7573c79a183e20ebf549d51250ed08c090390a6e942dcd1de853" [label=""];
  "sha256:8535716da5fb7573c79a183e20ebf549d51250ed08c090390a6e942dcd1de853" -> "sha256:fc21a382de918516f04f28b949f3a9022f0f3accc073bdaee6ec57d3eb2027fa" [label=""];
  "sha256:fc21a382de918516f04f28b949f3a9022f0f3accc073bdaee6ec57d3eb2027fa" -> "sha256:e0dc46f8a45e15e9f5233464d72386620ca528cd33b7fc2a9bf0d8c0c2ccd6f2" [label=""];
  "sha256:e0dc46f8a45e15e9f5233464d72386620ca528cd33b7fc2a9bf0d8c0c2ccd6f2" -> "sha256:248bac690f5e62cf921288085ad23de987493b9a381f50c5ab90b1fcb5172ac2" [label=""];
  "sha256:248bac690f5e62cf921288085ad23de987493b9a381f50c5ab90b1fcb5172ac2" -> "sha256:a736371c10d899ed41614631f8dd53b674bbf1086ae60a0bc866e685f58adfe3" [label=""];
  "sha256:a736371c10d899ed41614631f8dd53b674bbf1086ae60a0bc866e685f58adfe3" -> "sha256:1aeeaf896dd5954ae4e256b57fe82a325503326a4ce6ca5fb2d4adb7999522e7" [label=""];
  "sha256:1aeeaf896dd5954ae4e256b57fe82a325503326a4ce6ca5fb2d4adb7999522e7" -> "sha256:2c752042cc2ba7408376bae8c8c047a4631e37a92aa0fe2f7980e0a239bcac06" [label=""];
  "sha256:cbdf77d3cd4cd9e8440ac4145e00b91796cfb608fe5ff98f23d22c877033c99a" -> "sha256:2c752042cc2ba7408376bae8c8c047a4631e37a92aa0fe2f7980e0a239bcac06" [label=""];
  "sha256:2c752042cc2ba7408376bae8c8c047a4631e37a92aa0fe2f7980e0a239bcac06" -> "sha256:d070534bbb79d9918807de8b4b1e79d31c254b6afa454a330681299a54e11e4c" [label=""];
  "sha256:cbdf77d3cd4cd9e8440ac4145e00b91796cfb608fe5ff98f23d22c877033c99a" -> "sha256:d070534bbb79d9918807de8b4b1e79d31c254b6afa454a330681299a54e11e4c" [label=""];
  "sha256:d070534bbb79d9918807de8b4b1e79d31c254b6afa454a330681299a54e11e4c" -> "sha256:90f0b7fc600c467aaf65445188f4ec950913e6cc3d9b5acb396e3a1867a1fbae" [label=""];
  "sha256:cbdf77d3cd4cd9e8440ac4145e00b91796cfb608fe5ff98f23d22c877033c99a" -> "sha256:90f0b7fc600c467aaf65445188f4ec950913e6cc3d9b5acb396e3a1867a1fbae" [label=""];
  "sha256:90f0b7fc600c467aaf65445188f4ec950913e6cc3d9b5acb396e3a1867a1fbae" -> "sha256:a982ff5f0088a776f1c2d6da45a63d9d221a3b897045ffe4c203658d4d0cde0c" [label=""];
  "sha256:cbdf77d3cd4cd9e8440ac4145e00b91796cfb608fe5ff98f23d22c877033c99a" -> "sha256:a982ff5f0088a776f1c2d6da45a63d9d221a3b897045ffe4c203658d4d0cde0c" [label=""];
  "sha256:a982ff5f0088a776f1c2d6da45a63d9d221a3b897045ffe4c203658d4d0cde0c" -> "sha256:383ef4b191c4210f4a3d7662fd6cec4f02531cd340ab9e87784627d7153d5649" [label=""];
  "sha256:cbdf77d3cd4cd9e8440ac4145e00b91796cfb608fe5ff98f23d22c877033c99a" -> "sha256:383ef4b191c4210f4a3d7662fd6cec4f02531cd340ab9e87784627d7153d5649" [label=""];
  "sha256:383ef4b191c4210f4a3d7662fd6cec4f02531cd340ab9e87784627d7153d5649" -> "sha256:98ee650fec8db86c29c058cd3979be54eacfcba85900b64387455b66d6b95d7a" [label=""];
}

