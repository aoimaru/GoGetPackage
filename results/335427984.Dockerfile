[app/sources/335427984.Dockerfile]
digraph {
  "sha256:99e3e87c16c48743e23ba59886e4202b180b589b31ff7389b1f8e5699e5dcb52" [label="docker-image://docker.io/cpuguy83/ubuntu@sha256:bed9e934ff53d358ecb4ee56e050ee6462862022c4c115c947a4541777ae8166" shape="ellipse"];
  "sha256:ea42cfa4d006dfc254dce5a9fb4be42a970e1be865e0058030ac8c2124fbb4a2" [label="/bin/sh -c sed -i 's/universe/universe multiverse/' /etc/apt/sources.list" shape="box"];
  "sha256:33d829b3d5ec5e307c658cd1df170a6ef2ad483b2ea45ff87d2819b9895fe3d0" [label="/bin/sh -c apt-get update && apt-get install -y iputils-ping netcat build-essential snmp snmpd snmp-mibs-downloader php5-cli apache2 libapache2-mod-php5 runit bc postfix bsd-mailx" shape="box"];
  "sha256:237aca3176c904fd8e315bca0f5b0909801ae1e001d64cf7ad4eda2329654f63" [label="/bin/sh -c ( egrep -i  \"^${NAGIOS_GROUP}\" /etc/group || groupadd $NAGIOS_GROUP ) && ( egrep -i \"^${NAGIOS_CMDGROUP}\" /etc/group || groupadd $NAGIOS_CMDGROUP )" shape="box"];
  "sha256:4e1f2f330c26e4d988e86bc75239fb15d4fa29bf05499455145d1afe4f23ff1a" [label="/bin/sh -c ( id -u $NAGIOS_USER || useradd --system $NAGIOS_USER -g $NAGIOS_GROUP -d $NAGIOS_HOME ) && ( id -u $NAGIOS_CMDUSER || useradd --system -d $NAGIOS_HOME -g $NAGIOS_CMDGROUP $NAGIOS_CMDUSER )" shape="box"];
  "sha256:ddbbc0cfd3bb027f387e5e67ff354a032ebe5be0422ae40fcc71343e16edf2f8" [label="http://downloads.sourceforge.net/project/nagios/nagios-3.x/nagios-3.5.1/nagios-3.5.1.tar.gz?r=http%3A%2F%2Fwww.nagios.org%2Fdownload%2Fcore%2Fthanks%2F%3Ft%3D1398863696&ts=1398863718&use_mirror=superb-dca3" shape="ellipse"];
  "sha256:9dfa60a1af91350b57358672aad81b0b060a7461f9a8316dbdaa98a49879cb69" [label="copy{src=/nagios-3.5.1.tar.gz, dest=/tmp/nagios.tar.gz}" shape="note"];
  "sha256:52a7ccdd2fd1b68bbdb3aceb139f0ee18c85ff02312c08b79d6f5e4c57fd822f" [label="/bin/sh -c cd /tmp && tar -zxvf nagios.tar.gz && cd nagios  && ./configure --prefix=${NAGIOS_HOME} --exec-prefix=${NAGIOS_HOME} --enable-event-broker --with-nagios-command-user=${NAGIOS_CMDUSER} --with-command-group=${NAGIOS_CMDGROUP} --with-nagios-user=${NAGIOS_USER} --with-nagios-group=${NAGIOS_GROUP} && make all && make install && make install-config && make install-commandmode && cp sample-config/httpd.conf /etc/apache2/conf.d/nagios.conf" shape="box"];
  "sha256:73ce22f1db8a1740486602af4557020f2ad5dcf90b87a3b51d3b34cdc18bbc8a" [label="http://www.nagios-plugins.org/download/nagios-plugins-1.5.tar.gz" shape="ellipse"];
  "sha256:58dae8f66c2a763d19912b742cfccbe80888d67eff6dec2abfc3a49956bc4b2c" [label="copy{src=/nagios-plugins-1.5.tar.gz, dest=/tmp/}" shape="note"];
  "sha256:1295c2c27d214aa278bb7ef1d42d6be2dfd2983e2b82d2a1a73cfdc6f7e90c34" [label="/bin/sh -c cd /tmp && tar -zxvf nagios-plugins-1.5.tar.gz && cd nagios-plugins-1.5 && ./configure --prefix=${NAGIOS_HOME} && make && make install" shape="box"];
  "sha256:885930739ba666646494a82f89e03da605a4fea9d02e34a0d7b6e38438f6f5e0" [label="/bin/sh -c sed -i.bak 's/.*\\=www\\-data//g' /etc/apache2/envvars" shape="box"];
  "sha256:c02bc86d738b86954bc1d866d0762387c6237e38e7ea5d8c34606b1be041c055" [label="/bin/sh -c export DOC_ROOT=\"DocumentRoot $(echo $NAGIOS_HOME/share)\"; sed -i \"s,DocumentRoot.*,$DOC_ROOT,\" /etc/apache2/sites-enabled/000-default" shape="box"];
  "sha256:40346c019a5f59c38f4cd6c07e7ab4bf6e9082c68e67040abb7df363a0882371" [label="/bin/sh -c ln -s ${NAGIOS_HOME}/bin/nagios /usr/local/bin/nagios && mkdir -p /usr/share/snmp/mibs && chmod 0755 /usr/share/snmp/mibs && touch /usr/share/snmp/mibs/.foo" shape="box"];
  "sha256:1d36247cef090e49d71fac9597ca3dc8c01c24c19ba2dee46086574fa3f45185" [label="/bin/sh -c echo \"use_timezone=$NAGIOS_TIMEZONE\" >> ${NAGIOS_HOME}/etc/nagios.cfg && echo \"SetEnv TZ \\\"${NAGIOS_TIMEZONE}\\\"\" >> /etc/apache2/conf.d/nagios.conf" shape="box"];
  "sha256:77b81902d60e08895adf3fd1d93653da811418e196e49da2e561d9c4a9439914" [label="/bin/sh -c mkdir -p ${NAGIOS_HOME}/etc/conf.d && mkdir -p ${NAGIOS_HOME}/etc/monitor && ln -s /usr/share/snmp/mibs ${NAGIOS_HOME}/libexec/mibs" shape="box"];
  "sha256:965bdb671e028e1062f47c76016d1d9900cf81199b3657746d8f709493113d41" [label="/bin/sh -c echo \"cfg_dir=${NAGIOS_HOME}/etc/conf.d\" >> ${NAGIOS_HOME}/etc/nagios.cfg" shape="box"];
  "sha256:5680e78074e4aa73146e321e8b88776c486171e039a9772becc9abdb9ff3f442" [label="/bin/sh -c echo \"cfg_dir=${NAGIOS_HOME}/etc/monitor\" >> ${NAGIOS_HOME}/etc/nagios.cfg" shape="box"];
  "sha256:900ad289a9af753905b3246e05110c85e0a8124528c04264ee9664931c5cb852" [label="/bin/sh -c download-mibs && echo \"mibs +ALL\" > /etc/snmp/snmp.conf" shape="box"];
  "sha256:701c4226e79ae4ca9108428b6912017df6a697cf18e44ceec0dece7b1e3e485a" [label="/bin/sh -c sed -i 's,/bin/mail,/usr/bin/mail,' /opt/nagios/etc/objects/commands.cfg &&   sed -i 's,/usr/usr,/usr,' /opt/nagios/etc/objects/commands.cfg" shape="box"];
  "sha256:1414b85babc9af93cecbcf3da49240ad46a7969e947151319c0f5a3d4e2d719a" [label="/bin/sh -c cp /etc/services /var/spool/postfix/etc/" shape="box"];
  "sha256:28ca4c1f0b836369e5d465ec4a0fd262e2e04f8d37c9846065f8142349b7217f" [label="/bin/sh -c mkdir -p /etc/sv/nagios && mkdir -p /etc/sv/apache && rm -rf /etc/sv/getty-5 && mkdir -p /etc/sv/postfix" shape="box"];
  "sha256:9f1b690a454954e13d6ec7819880d8c9d17c666f38de5d1a268337c663be299d" [label="local://context" shape="ellipse"];
  "sha256:160d72f165259ca0c60eb048a9393e2f6d002926f3f742f87f6a591566cdfac0" [label="copy{src=/nagios.init, dest=/etc/sv/nagios/run}" shape="note"];
  "sha256:ebcfd837628d1e561767930c0dca5cc4fa91e78a97cc05c49deae2ab7153fc75" [label="copy{src=/apache.init, dest=/etc/sv/apache/run}" shape="note"];
  "sha256:bb9cd5a7a0b4e59c84953ebf5db50071d97b6d76a86ab7e48a9ea7c36351c44e" [label="copy{src=/postfix.init, dest=/etc/sv/postfix/run}" shape="note"];
  "sha256:f4388f856be1f0a94a4716e42cc609a7479d6d05d936958a8dd13f16137d815c" [label="copy{src=/postfix.stop, dest=/etc/sv/postfix/finish}" shape="note"];
  "sha256:13f5f9383940972c590064efc31f1e410c0c666bbf12b5a010dce67896b89483" [label="copy{src=/start.sh, dest=/usr/local/bin/start_nagios}" shape="note"];
  "sha256:849aa1420a2de23878e53fa73f6739297fb2ebbd452140af44a5b10c46a0f4e3" [label="sha256:849aa1420a2de23878e53fa73f6739297fb2ebbd452140af44a5b10c46a0f4e3" shape="plaintext"];
  "sha256:99e3e87c16c48743e23ba59886e4202b180b589b31ff7389b1f8e5699e5dcb52" -> "sha256:ea42cfa4d006dfc254dce5a9fb4be42a970e1be865e0058030ac8c2124fbb4a2" [label=""];
  "sha256:ea42cfa4d006dfc254dce5a9fb4be42a970e1be865e0058030ac8c2124fbb4a2" -> "sha256:33d829b3d5ec5e307c658cd1df170a6ef2ad483b2ea45ff87d2819b9895fe3d0" [label=""];
  "sha256:33d829b3d5ec5e307c658cd1df170a6ef2ad483b2ea45ff87d2819b9895fe3d0" -> "sha256:237aca3176c904fd8e315bca0f5b0909801ae1e001d64cf7ad4eda2329654f63" [label=""];
  "sha256:237aca3176c904fd8e315bca0f5b0909801ae1e001d64cf7ad4eda2329654f63" -> "sha256:4e1f2f330c26e4d988e86bc75239fb15d4fa29bf05499455145d1afe4f23ff1a" [label=""];
  "sha256:4e1f2f330c26e4d988e86bc75239fb15d4fa29bf05499455145d1afe4f23ff1a" -> "sha256:9dfa60a1af91350b57358672aad81b0b060a7461f9a8316dbdaa98a49879cb69" [label=""];
  "sha256:ddbbc0cfd3bb027f387e5e67ff354a032ebe5be0422ae40fcc71343e16edf2f8" -> "sha256:9dfa60a1af91350b57358672aad81b0b060a7461f9a8316dbdaa98a49879cb69" [label=""];
  "sha256:9dfa60a1af91350b57358672aad81b0b060a7461f9a8316dbdaa98a49879cb69" -> "sha256:52a7ccdd2fd1b68bbdb3aceb139f0ee18c85ff02312c08b79d6f5e4c57fd822f" [label=""];
  "sha256:52a7ccdd2fd1b68bbdb3aceb139f0ee18c85ff02312c08b79d6f5e4c57fd822f" -> "sha256:58dae8f66c2a763d19912b742cfccbe80888d67eff6dec2abfc3a49956bc4b2c" [label=""];
  "sha256:73ce22f1db8a1740486602af4557020f2ad5dcf90b87a3b51d3b34cdc18bbc8a" -> "sha256:58dae8f66c2a763d19912b742cfccbe80888d67eff6dec2abfc3a49956bc4b2c" [label=""];
  "sha256:58dae8f66c2a763d19912b742cfccbe80888d67eff6dec2abfc3a49956bc4b2c" -> "sha256:1295c2c27d214aa278bb7ef1d42d6be2dfd2983e2b82d2a1a73cfdc6f7e90c34" [label=""];
  "sha256:1295c2c27d214aa278bb7ef1d42d6be2dfd2983e2b82d2a1a73cfdc6f7e90c34" -> "sha256:885930739ba666646494a82f89e03da605a4fea9d02e34a0d7b6e38438f6f5e0" [label=""];
  "sha256:885930739ba666646494a82f89e03da605a4fea9d02e34a0d7b6e38438f6f5e0" -> "sha256:c02bc86d738b86954bc1d866d0762387c6237e38e7ea5d8c34606b1be041c055" [label=""];
  "sha256:c02bc86d738b86954bc1d866d0762387c6237e38e7ea5d8c34606b1be041c055" -> "sha256:40346c019a5f59c38f4cd6c07e7ab4bf6e9082c68e67040abb7df363a0882371" [label=""];
  "sha256:40346c019a5f59c38f4cd6c07e7ab4bf6e9082c68e67040abb7df363a0882371" -> "sha256:1d36247cef090e49d71fac9597ca3dc8c01c24c19ba2dee46086574fa3f45185" [label=""];
  "sha256:1d36247cef090e49d71fac9597ca3dc8c01c24c19ba2dee46086574fa3f45185" -> "sha256:77b81902d60e08895adf3fd1d93653da811418e196e49da2e561d9c4a9439914" [label=""];
  "sha256:77b81902d60e08895adf3fd1d93653da811418e196e49da2e561d9c4a9439914" -> "sha256:965bdb671e028e1062f47c76016d1d9900cf81199b3657746d8f709493113d41" [label=""];
  "sha256:965bdb671e028e1062f47c76016d1d9900cf81199b3657746d8f709493113d41" -> "sha256:5680e78074e4aa73146e321e8b88776c486171e039a9772becc9abdb9ff3f442" [label=""];
  "sha256:5680e78074e4aa73146e321e8b88776c486171e039a9772becc9abdb9ff3f442" -> "sha256:900ad289a9af753905b3246e05110c85e0a8124528c04264ee9664931c5cb852" [label=""];
  "sha256:900ad289a9af753905b3246e05110c85e0a8124528c04264ee9664931c5cb852" -> "sha256:701c4226e79ae4ca9108428b6912017df6a697cf18e44ceec0dece7b1e3e485a" [label=""];
  "sha256:701c4226e79ae4ca9108428b6912017df6a697cf18e44ceec0dece7b1e3e485a" -> "sha256:1414b85babc9af93cecbcf3da49240ad46a7969e947151319c0f5a3d4e2d719a" [label=""];
  "sha256:1414b85babc9af93cecbcf3da49240ad46a7969e947151319c0f5a3d4e2d719a" -> "sha256:28ca4c1f0b836369e5d465ec4a0fd262e2e04f8d37c9846065f8142349b7217f" [label=""];
  "sha256:28ca4c1f0b836369e5d465ec4a0fd262e2e04f8d37c9846065f8142349b7217f" -> "sha256:160d72f165259ca0c60eb048a9393e2f6d002926f3f742f87f6a591566cdfac0" [label=""];
  "sha256:9f1b690a454954e13d6ec7819880d8c9d17c666f38de5d1a268337c663be299d" -> "sha256:160d72f165259ca0c60eb048a9393e2f6d002926f3f742f87f6a591566cdfac0" [label=""];
  "sha256:160d72f165259ca0c60eb048a9393e2f6d002926f3f742f87f6a591566cdfac0" -> "sha256:ebcfd837628d1e561767930c0dca5cc4fa91e78a97cc05c49deae2ab7153fc75" [label=""];
  "sha256:9f1b690a454954e13d6ec7819880d8c9d17c666f38de5d1a268337c663be299d" -> "sha256:ebcfd837628d1e561767930c0dca5cc4fa91e78a97cc05c49deae2ab7153fc75" [label=""];
  "sha256:ebcfd837628d1e561767930c0dca5cc4fa91e78a97cc05c49deae2ab7153fc75" -> "sha256:bb9cd5a7a0b4e59c84953ebf5db50071d97b6d76a86ab7e48a9ea7c36351c44e" [label=""];
  "sha256:9f1b690a454954e13d6ec7819880d8c9d17c666f38de5d1a268337c663be299d" -> "sha256:bb9cd5a7a0b4e59c84953ebf5db50071d97b6d76a86ab7e48a9ea7c36351c44e" [label=""];
  "sha256:bb9cd5a7a0b4e59c84953ebf5db50071d97b6d76a86ab7e48a9ea7c36351c44e" -> "sha256:f4388f856be1f0a94a4716e42cc609a7479d6d05d936958a8dd13f16137d815c" [label=""];
  "sha256:9f1b690a454954e13d6ec7819880d8c9d17c666f38de5d1a268337c663be299d" -> "sha256:f4388f856be1f0a94a4716e42cc609a7479d6d05d936958a8dd13f16137d815c" [label=""];
  "sha256:f4388f856be1f0a94a4716e42cc609a7479d6d05d936958a8dd13f16137d815c" -> "sha256:13f5f9383940972c590064efc31f1e410c0c666bbf12b5a010dce67896b89483" [label=""];
  "sha256:9f1b690a454954e13d6ec7819880d8c9d17c666f38de5d1a268337c663be299d" -> "sha256:13f5f9383940972c590064efc31f1e410c0c666bbf12b5a010dce67896b89483" [label=""];
  "sha256:13f5f9383940972c590064efc31f1e410c0c666bbf12b5a010dce67896b89483" -> "sha256:849aa1420a2de23878e53fa73f6739297fb2ebbd452140af44a5b10c46a0f4e3" [label=""];
}

