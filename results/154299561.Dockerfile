[app/sources/154299561.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:87377719debe2c961d01497f255e64decd1339380cd9f132610602ef2cd071e5" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get -y install supervisor git apache2 libapache2-mod-php5 mysql-server php5-mysql pwgen" shape="box"];
  "sha256:dbec6c029ae353b8b8dc857eaf8789f54c9dcffd2afafb5cdaa2558a1bab2b5a" [label="local://context" shape="ellipse"];
  "sha256:2d5d13a1d2334fa0e96376bc89e2091b782b8dfb16c9254edbfae59abf850a06" [label="copy{src=/start-apache2.sh, dest=/start-apache2.sh}" shape="note"];
  "sha256:d7cec605a3af7ed03bdd10a8ba4f8345cbd0cb0f17abb45aadbf21e3c61935ba" [label="copy{src=/start-mysqld.sh, dest=/start-mysqld.sh}" shape="note"];
  "sha256:32a9a61b288f1e132387f6580f12504cc20e61770fecfcd7e7cc3121f50bbe70" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:cb41e847ee68eaa3175576a2cc3035be6804ecccf0ea8aa7ea898035c981f1cf" [label="/bin/sh -c chmod 755 /*.sh" shape="box"];
  "sha256:122a5d9a3350d63658a0da2eafbca8e69a23351e6b288c927222c6f29756827e" [label="copy{src=/my.cnf, dest=/etc/mysql/conf.d/my.cnf}" shape="note"];
  "sha256:db4b91da2fdad405526087229fa1622f4a702227f5db66fbfb3fa4485d7aff31" [label="copy{src=/supervisord-apache2.conf, dest=/etc/supervisor/conf.d/supervisord-apache2.conf}" shape="note"];
  "sha256:603fc684720121ef619be5bccbccf33c8a148d4a3fb154880e0162d4d05e038a" [label="copy{src=/supervisord-mysqld.conf, dest=/etc/supervisor/conf.d/supervisord-mysqld.conf}" shape="note"];
  "sha256:a98d49d281748547a193549ba4789428249d7b3792b50a0f5bb935f7079f5666" [label="copy{src=/create_mysql_admin_user.sh, dest=/create_mysql_admin_user.sh}" shape="note"];
  "sha256:3badf1416c35bfd1c404ba794b8785b061335a1aec152ef2e3e81ee39ed90efc" [label="copy{src=/import_sql.sh, dest=/import_sql.sh}" shape="note"];
  "sha256:db62db6609370600be41461536ee994a0f9a17187f8dd06ef840957313a8744f" [label="copy{src=/create_db.sh, dest=/create_db.sh}" shape="note"];
  "sha256:5c80c9621a5d574c54e64a1824f82161ec4fa7bfcdc3833941567c44306182c9" [label="/bin/sh -c chmod 755 /*.sh" shape="box"];
  "sha256:afd185ce306c22b0c2b1e9828d9d0f0517572d511a883716954c139207e3e39a" [label="/bin/sh -c git clone https://github.com/prafulrana/php.git /app" shape="box"];
  "sha256:58132484342e362d8aaaa315cd38e9a4255e5e297f0f74397701bacfb46e6553" [label="/bin/sh -c mkdir -p /app && rm -fr /var/www && ln -s /app /var/www" shape="box"];
  "sha256:ee41feece56d028610b64deb1ff19c1a71b15878ec93d1c150156d79161c923a" [label="sha256:ee41feece56d028610b64deb1ff19c1a71b15878ec93d1c150156d79161c923a" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:87377719debe2c961d01497f255e64decd1339380cd9f132610602ef2cd071e5" [label=""];
  "sha256:87377719debe2c961d01497f255e64decd1339380cd9f132610602ef2cd071e5" -> "sha256:2d5d13a1d2334fa0e96376bc89e2091b782b8dfb16c9254edbfae59abf850a06" [label=""];
  "sha256:dbec6c029ae353b8b8dc857eaf8789f54c9dcffd2afafb5cdaa2558a1bab2b5a" -> "sha256:2d5d13a1d2334fa0e96376bc89e2091b782b8dfb16c9254edbfae59abf850a06" [label=""];
  "sha256:2d5d13a1d2334fa0e96376bc89e2091b782b8dfb16c9254edbfae59abf850a06" -> "sha256:d7cec605a3af7ed03bdd10a8ba4f8345cbd0cb0f17abb45aadbf21e3c61935ba" [label=""];
  "sha256:dbec6c029ae353b8b8dc857eaf8789f54c9dcffd2afafb5cdaa2558a1bab2b5a" -> "sha256:d7cec605a3af7ed03bdd10a8ba4f8345cbd0cb0f17abb45aadbf21e3c61935ba" [label=""];
  "sha256:d7cec605a3af7ed03bdd10a8ba4f8345cbd0cb0f17abb45aadbf21e3c61935ba" -> "sha256:32a9a61b288f1e132387f6580f12504cc20e61770fecfcd7e7cc3121f50bbe70" [label=""];
  "sha256:dbec6c029ae353b8b8dc857eaf8789f54c9dcffd2afafb5cdaa2558a1bab2b5a" -> "sha256:32a9a61b288f1e132387f6580f12504cc20e61770fecfcd7e7cc3121f50bbe70" [label=""];
  "sha256:32a9a61b288f1e132387f6580f12504cc20e61770fecfcd7e7cc3121f50bbe70" -> "sha256:cb41e847ee68eaa3175576a2cc3035be6804ecccf0ea8aa7ea898035c981f1cf" [label=""];
  "sha256:cb41e847ee68eaa3175576a2cc3035be6804ecccf0ea8aa7ea898035c981f1cf" -> "sha256:122a5d9a3350d63658a0da2eafbca8e69a23351e6b288c927222c6f29756827e" [label=""];
  "sha256:dbec6c029ae353b8b8dc857eaf8789f54c9dcffd2afafb5cdaa2558a1bab2b5a" -> "sha256:122a5d9a3350d63658a0da2eafbca8e69a23351e6b288c927222c6f29756827e" [label=""];
  "sha256:122a5d9a3350d63658a0da2eafbca8e69a23351e6b288c927222c6f29756827e" -> "sha256:db4b91da2fdad405526087229fa1622f4a702227f5db66fbfb3fa4485d7aff31" [label=""];
  "sha256:dbec6c029ae353b8b8dc857eaf8789f54c9dcffd2afafb5cdaa2558a1bab2b5a" -> "sha256:db4b91da2fdad405526087229fa1622f4a702227f5db66fbfb3fa4485d7aff31" [label=""];
  "sha256:db4b91da2fdad405526087229fa1622f4a702227f5db66fbfb3fa4485d7aff31" -> "sha256:603fc684720121ef619be5bccbccf33c8a148d4a3fb154880e0162d4d05e038a" [label=""];
  "sha256:dbec6c029ae353b8b8dc857eaf8789f54c9dcffd2afafb5cdaa2558a1bab2b5a" -> "sha256:603fc684720121ef619be5bccbccf33c8a148d4a3fb154880e0162d4d05e038a" [label=""];
  "sha256:603fc684720121ef619be5bccbccf33c8a148d4a3fb154880e0162d4d05e038a" -> "sha256:a98d49d281748547a193549ba4789428249d7b3792b50a0f5bb935f7079f5666" [label=""];
  "sha256:dbec6c029ae353b8b8dc857eaf8789f54c9dcffd2afafb5cdaa2558a1bab2b5a" -> "sha256:a98d49d281748547a193549ba4789428249d7b3792b50a0f5bb935f7079f5666" [label=""];
  "sha256:a98d49d281748547a193549ba4789428249d7b3792b50a0f5bb935f7079f5666" -> "sha256:3badf1416c35bfd1c404ba794b8785b061335a1aec152ef2e3e81ee39ed90efc" [label=""];
  "sha256:dbec6c029ae353b8b8dc857eaf8789f54c9dcffd2afafb5cdaa2558a1bab2b5a" -> "sha256:3badf1416c35bfd1c404ba794b8785b061335a1aec152ef2e3e81ee39ed90efc" [label=""];
  "sha256:3badf1416c35bfd1c404ba794b8785b061335a1aec152ef2e3e81ee39ed90efc" -> "sha256:db62db6609370600be41461536ee994a0f9a17187f8dd06ef840957313a8744f" [label=""];
  "sha256:dbec6c029ae353b8b8dc857eaf8789f54c9dcffd2afafb5cdaa2558a1bab2b5a" -> "sha256:db62db6609370600be41461536ee994a0f9a17187f8dd06ef840957313a8744f" [label=""];
  "sha256:db62db6609370600be41461536ee994a0f9a17187f8dd06ef840957313a8744f" -> "sha256:5c80c9621a5d574c54e64a1824f82161ec4fa7bfcdc3833941567c44306182c9" [label=""];
  "sha256:5c80c9621a5d574c54e64a1824f82161ec4fa7bfcdc3833941567c44306182c9" -> "sha256:afd185ce306c22b0c2b1e9828d9d0f0517572d511a883716954c139207e3e39a" [label=""];
  "sha256:afd185ce306c22b0c2b1e9828d9d0f0517572d511a883716954c139207e3e39a" -> "sha256:58132484342e362d8aaaa315cd38e9a4255e5e297f0f74397701bacfb46e6553" [label=""];
  "sha256:58132484342e362d8aaaa315cd38e9a4255e5e297f0f74397701bacfb46e6553" -> "sha256:ee41feece56d028610b64deb1ff19c1a71b15878ec93d1c150156d79161c923a" [label=""];
}

