[app/sources/168046283.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:870c55c04ffdf9bf7a5696e485a2fb1206735162f2c9cc476533fafc177526eb" [label="/bin/sh -c yum update -y" shape="box"];
  "sha256:c3bc021739eaf3d8d8a596eacd5489828e75c46107b18bc4dd3258eb868d227e" [label="/bin/sh -c yum install -y epel-release" shape="box"];
  "sha256:cfd2d8ce8eea0bcdd58dd03169f10001e25115276b9de17b96d6b771f8104689" [label="/bin/sh -c yum install git kernel-headers gcc gcc-c++ cpp ncurses ncurses-devel libxml2 libxml2-devel sqlite sqlite-devel openssl-devel newt-devel kernel-devel libuuid-devel net-snmp-devel xinetd tar jansson-devel make bzip2 gettext -y" shape="box"];
  "sha256:187f7dff9012e30680b8dd7b0a43ca2d409076a1566d18f3a2d7b2cae78a5707" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:c6ee58834216c2edfc1bb96f7f44a211e11b98415456327ebace5c302095e1da" [label="/bin/sh -c git clone -b pjproject-2.4.5 --depth 1 https://github.com/asterisk/pjproject.git" shape="box"];
  "sha256:fd60d8c42aa7c4765593dc9dd7bf79817b6c05152934e3768c81daf3bae2e057" [label="mkdir{path=/tmp/pjproject}" shape="note"];
  "sha256:05754008294736d62fa78d98bdcec5cea1ad66d48256bf9368b2512f61d15bfe" [label="/bin/sh -c ./configure --prefix=/usr --libdir=/usr/lib64 --enable-shared --disable-sound --disable-resample --disable-video --disable-opencore-amr 1> /dev/null" shape="box"];
  "sha256:49db0bdab51d1a36b77e122895774e01b8308428270154d15108f27042af8fa1" [label="/bin/sh -c make dep 1> /dev/null" shape="box"];
  "sha256:db4512909cc558b8c879db8c37ba79ab0198a8d05d769bc1d5e39d1bcaf542db" [label="/bin/sh -c make 1> /dev/null" shape="box"];
  "sha256:3f94e91463b5385dbce651dd76c1df5dbdda05477d9d59c6e7aec8a0842ea724" [label="/bin/sh -c make install" shape="box"];
  "sha256:32077f887896d56856e2b9886d9aefd8e7d4eb361f7bbe265338096d0eb57ed4" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:26283f1fff21f4dad9639ba71891a555dac8b6a7e89658fcd141396129e1c2fe" [label="/bin/sh -c ldconfig -p | grep pj" shape="box"];
  "sha256:1d698e5f7353c743a6446cd13ec404373e9365a208c98f4ebe03a89a0902de3d" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:921c2ccfc12c4aa7e6603454ac5775af7bd3f2ce00f21efd244888de8d2552d7" [label="/bin/sh -c git clone -b certified/13.8 --depth 1 https://gerrit.asterisk.org/asterisk" shape="box"];
  "sha256:94ad50c80aed3347107a0fe0e49ae867aca771b183f67f0e03f248bdc3aeaee3" [label="mkdir{path=/tmp/asterisk}" shape="note"];
  "sha256:009a2233bff4cb6df6b6da64232993c98747baff5d945c94199d70a3e783c0c1" [label="/bin/sh -c ./configure --libdir=/usr/lib64 1> /dev/null" shape="box"];
  "sha256:404a0147f0c8d5ae55ac88f60f837a023e904b3191c4f25c03e26352f880a1ea" [label="/bin/sh -c make menuselect.makeopts" shape="box"];
  "sha256:39585ed61ad23fbd6b3775301c94e405fab90cb326a970062f1650dd95c38cf2" [label="/bin/sh -c menuselect/menuselect   --disable BUILD_NATIVE   --enable cdr_csv   --enable chan_sip   --enable res_snmp   --enable res_http_websocket   --enable res_hep_pjsip   --enable res_hep_rtcp   menuselect.makeopts" shape="box"];
  "sha256:57e97f1ad4f488e19d2cb0c67854aa763eebbbd314f18cb17dba301a9e371366" [label="/bin/sh -c make 1> /dev/null" shape="box"];
  "sha256:1601261f82a25c8bafbfa1bc94868914b2062920faa60640f55861ac20f2fd54" [label="/bin/sh -c make install 1> /dev/null" shape="box"];
  "sha256:6c174b2c89a46d918c5d3df9c393a42b0b1f1df14bef63e44fdec3616ef58b4d" [label="/bin/sh -c make samples 1> /dev/null" shape="box"];
  "sha256:159f19de085f0152381212108eb717dfdc83a04090a71b9735d79e666bafccd0" [label="/bin/sh -c sed -i -e 's/# MAXFILES=/MAXFILES=/' /usr/sbin/safe_asterisk" shape="box"];
  "sha256:e79770b28dc3fb5ed5b839859792f72ad700f1b0692852420f3337caba2d7825" [label="sha256:e79770b28dc3fb5ed5b839859792f72ad700f1b0692852420f3337caba2d7825" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:870c55c04ffdf9bf7a5696e485a2fb1206735162f2c9cc476533fafc177526eb" [label=""];
  "sha256:870c55c04ffdf9bf7a5696e485a2fb1206735162f2c9cc476533fafc177526eb" -> "sha256:c3bc021739eaf3d8d8a596eacd5489828e75c46107b18bc4dd3258eb868d227e" [label=""];
  "sha256:c3bc021739eaf3d8d8a596eacd5489828e75c46107b18bc4dd3258eb868d227e" -> "sha256:cfd2d8ce8eea0bcdd58dd03169f10001e25115276b9de17b96d6b771f8104689" [label=""];
  "sha256:cfd2d8ce8eea0bcdd58dd03169f10001e25115276b9de17b96d6b771f8104689" -> "sha256:187f7dff9012e30680b8dd7b0a43ca2d409076a1566d18f3a2d7b2cae78a5707" [label=""];
  "sha256:187f7dff9012e30680b8dd7b0a43ca2d409076a1566d18f3a2d7b2cae78a5707" -> "sha256:c6ee58834216c2edfc1bb96f7f44a211e11b98415456327ebace5c302095e1da" [label=""];
  "sha256:c6ee58834216c2edfc1bb96f7f44a211e11b98415456327ebace5c302095e1da" -> "sha256:fd60d8c42aa7c4765593dc9dd7bf79817b6c05152934e3768c81daf3bae2e057" [label=""];
  "sha256:fd60d8c42aa7c4765593dc9dd7bf79817b6c05152934e3768c81daf3bae2e057" -> "sha256:05754008294736d62fa78d98bdcec5cea1ad66d48256bf9368b2512f61d15bfe" [label=""];
  "sha256:05754008294736d62fa78d98bdcec5cea1ad66d48256bf9368b2512f61d15bfe" -> "sha256:49db0bdab51d1a36b77e122895774e01b8308428270154d15108f27042af8fa1" [label=""];
  "sha256:49db0bdab51d1a36b77e122895774e01b8308428270154d15108f27042af8fa1" -> "sha256:db4512909cc558b8c879db8c37ba79ab0198a8d05d769bc1d5e39d1bcaf542db" [label=""];
  "sha256:db4512909cc558b8c879db8c37ba79ab0198a8d05d769bc1d5e39d1bcaf542db" -> "sha256:3f94e91463b5385dbce651dd76c1df5dbdda05477d9d59c6e7aec8a0842ea724" [label=""];
  "sha256:3f94e91463b5385dbce651dd76c1df5dbdda05477d9d59c6e7aec8a0842ea724" -> "sha256:32077f887896d56856e2b9886d9aefd8e7d4eb361f7bbe265338096d0eb57ed4" [label=""];
  "sha256:32077f887896d56856e2b9886d9aefd8e7d4eb361f7bbe265338096d0eb57ed4" -> "sha256:26283f1fff21f4dad9639ba71891a555dac8b6a7e89658fcd141396129e1c2fe" [label=""];
  "sha256:26283f1fff21f4dad9639ba71891a555dac8b6a7e89658fcd141396129e1c2fe" -> "sha256:1d698e5f7353c743a6446cd13ec404373e9365a208c98f4ebe03a89a0902de3d" [label=""];
  "sha256:1d698e5f7353c743a6446cd13ec404373e9365a208c98f4ebe03a89a0902de3d" -> "sha256:921c2ccfc12c4aa7e6603454ac5775af7bd3f2ce00f21efd244888de8d2552d7" [label=""];
  "sha256:921c2ccfc12c4aa7e6603454ac5775af7bd3f2ce00f21efd244888de8d2552d7" -> "sha256:94ad50c80aed3347107a0fe0e49ae867aca771b183f67f0e03f248bdc3aeaee3" [label=""];
  "sha256:94ad50c80aed3347107a0fe0e49ae867aca771b183f67f0e03f248bdc3aeaee3" -> "sha256:009a2233bff4cb6df6b6da64232993c98747baff5d945c94199d70a3e783c0c1" [label=""];
  "sha256:009a2233bff4cb6df6b6da64232993c98747baff5d945c94199d70a3e783c0c1" -> "sha256:404a0147f0c8d5ae55ac88f60f837a023e904b3191c4f25c03e26352f880a1ea" [label=""];
  "sha256:404a0147f0c8d5ae55ac88f60f837a023e904b3191c4f25c03e26352f880a1ea" -> "sha256:39585ed61ad23fbd6b3775301c94e405fab90cb326a970062f1650dd95c38cf2" [label=""];
  "sha256:39585ed61ad23fbd6b3775301c94e405fab90cb326a970062f1650dd95c38cf2" -> "sha256:57e97f1ad4f488e19d2cb0c67854aa763eebbbd314f18cb17dba301a9e371366" [label=""];
  "sha256:57e97f1ad4f488e19d2cb0c67854aa763eebbbd314f18cb17dba301a9e371366" -> "sha256:1601261f82a25c8bafbfa1bc94868914b2062920faa60640f55861ac20f2fd54" [label=""];
  "sha256:1601261f82a25c8bafbfa1bc94868914b2062920faa60640f55861ac20f2fd54" -> "sha256:6c174b2c89a46d918c5d3df9c393a42b0b1f1df14bef63e44fdec3616ef58b4d" [label=""];
  "sha256:6c174b2c89a46d918c5d3df9c393a42b0b1f1df14bef63e44fdec3616ef58b4d" -> "sha256:159f19de085f0152381212108eb717dfdc83a04090a71b9735d79e666bafccd0" [label=""];
  "sha256:159f19de085f0152381212108eb717dfdc83a04090a71b9735d79e666bafccd0" -> "sha256:e79770b28dc3fb5ed5b839859792f72ad700f1b0692852420f3337caba2d7825" [label=""];
}

