[app/sources/309964736.Dockerfile]
digraph {
  "sha256:8740abee05d5fa96722119818867a370cdba8b5811344fec3a9a0390743f434e" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c80f914405d62f9b2ec4a34ea80345b6154714d7b02434839fc8180d963de330" [label="/bin/sh -c apt-get update &&   apt-get -y install   git apache2 dpkg-dev python-pygments   php5 php5-mysql php5-gd php5-dev php5-curl php-apc php5-cli php5-json php5-xhprof &&   apt-get -y clean autoclean &&   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:41e60b812e5b3c6745c3d78fbc0c578a7ab383058170ea0f34d592d8a84ff245" [label="/bin/sh -c a2enmod rewrite &&   apt-get source php5 &&   (cd `ls -1F | grep '^php5-.*/$'`/ext/pcntl && phpize && ./configure && make && sudo make install)" shape="box"];
  "sha256:85cdb535f53f17b05427c6c87971b266861e214c62a92269c6dc7c5f028479a2" [label="/bin/sh -c mkdir /home/www-data" shape="box"];
  "sha256:f5bbe7bd9584e46ca48b75a7a65be739fa7213c181a26cf0609418cbe626a4db" [label="/bin/sh -c cd /home/www-data && git clone https://github.com/phacility/libphutil.git &&   cd /home/www-data && git clone https://github.com/phacility/arcanist.git &&   cd /home/www-data && git clone https://github.com/phacility/phabricator.git &&   chown -R www-data /home/www-data &&   chgrp -R www-data /home/www-data" shape="box"];
  "sha256:9b5359571fe35207f13ae98cbb4d135c5c90a3b20778d995393c8d2a6cb25433" [label="copy{src=/000-default.conf, dest=/etc/apache2/sites-available/000-default.conf}" shape="note"];
  "sha256:34f0d06240d18613db4340a784f65fc4bb76edd8cc52920b64396b9789d1817b" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:212e60f214675d4b7151e4d7230adc63cf65fb5b5cda3017408fdb0f6cd1453c" [label="/bin/sh -c chmod a+x /*.sh" shape="box"];
  "sha256:63ef4f150664168a8f2fc63fa156c146cd9ea436b8b920252a4d3ddce0af5639" [label="sha256:63ef4f150664168a8f2fc63fa156c146cd9ea436b8b920252a4d3ddce0af5639" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c80f914405d62f9b2ec4a34ea80345b6154714d7b02434839fc8180d963de330" [label=""];
  "sha256:c80f914405d62f9b2ec4a34ea80345b6154714d7b02434839fc8180d963de330" -> "sha256:41e60b812e5b3c6745c3d78fbc0c578a7ab383058170ea0f34d592d8a84ff245" [label=""];
  "sha256:41e60b812e5b3c6745c3d78fbc0c578a7ab383058170ea0f34d592d8a84ff245" -> "sha256:85cdb535f53f17b05427c6c87971b266861e214c62a92269c6dc7c5f028479a2" [label=""];
  "sha256:85cdb535f53f17b05427c6c87971b266861e214c62a92269c6dc7c5f028479a2" -> "sha256:f5bbe7bd9584e46ca48b75a7a65be739fa7213c181a26cf0609418cbe626a4db" [label=""];
  "sha256:f5bbe7bd9584e46ca48b75a7a65be739fa7213c181a26cf0609418cbe626a4db" -> "sha256:9b5359571fe35207f13ae98cbb4d135c5c90a3b20778d995393c8d2a6cb25433" [label=""];
  "sha256:8740abee05d5fa96722119818867a370cdba8b5811344fec3a9a0390743f434e" -> "sha256:9b5359571fe35207f13ae98cbb4d135c5c90a3b20778d995393c8d2a6cb25433" [label=""];
  "sha256:9b5359571fe35207f13ae98cbb4d135c5c90a3b20778d995393c8d2a6cb25433" -> "sha256:34f0d06240d18613db4340a784f65fc4bb76edd8cc52920b64396b9789d1817b" [label=""];
  "sha256:8740abee05d5fa96722119818867a370cdba8b5811344fec3a9a0390743f434e" -> "sha256:34f0d06240d18613db4340a784f65fc4bb76edd8cc52920b64396b9789d1817b" [label=""];
  "sha256:34f0d06240d18613db4340a784f65fc4bb76edd8cc52920b64396b9789d1817b" -> "sha256:212e60f214675d4b7151e4d7230adc63cf65fb5b5cda3017408fdb0f6cd1453c" [label=""];
  "sha256:212e60f214675d4b7151e4d7230adc63cf65fb5b5cda3017408fdb0f6cd1453c" -> "sha256:63ef4f150664168a8f2fc63fa156c146cd9ea436b8b920252a4d3ddce0af5639" [label=""];
}

