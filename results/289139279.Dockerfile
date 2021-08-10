[app/sources/289139279.Dockerfile]
digraph {
  "sha256:b1fdfc6eff186c1007a752c7739d4680dca77f366231913ef13170964fdb2031" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:c80f914405d62f9b2ec4a34ea80345b6154714d7b02434839fc8180d963de330" [label="/bin/sh -c apt-get update &&   apt-get -y install   git apache2 dpkg-dev python-pygments   php5 php5-mysql php5-gd php5-dev php5-curl php-apc php5-cli php5-json php5-xhprof &&   apt-get -y clean autoclean &&   rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:41e60b812e5b3c6745c3d78fbc0c578a7ab383058170ea0f34d592d8a84ff245" [label="/bin/sh -c a2enmod rewrite &&   apt-get source php5 &&   (cd `ls -1F | grep '^php5-.*/$'`/ext/pcntl && phpize && ./configure && make && sudo make install)" shape="box"];
  "sha256:85cdb535f53f17b05427c6c87971b266861e214c62a92269c6dc7c5f028479a2" [label="/bin/sh -c mkdir /home/www-data" shape="box"];
  "sha256:f5bbe7bd9584e46ca48b75a7a65be739fa7213c181a26cf0609418cbe626a4db" [label="/bin/sh -c cd /home/www-data && git clone https://github.com/phacility/libphutil.git &&   cd /home/www-data && git clone https://github.com/phacility/arcanist.git &&   cd /home/www-data && git clone https://github.com/phacility/phabricator.git &&   chown -R www-data /home/www-data &&   chgrp -R www-data /home/www-data" shape="box"];
  "sha256:a513aca8fa8e566c8384052d2106fc820c09247ce947ac1817f28ede63d2c1e7" [label="copy{src=/000-default.conf, dest=/etc/apache2/sites-available/000-default.conf}" shape="note"];
  "sha256:e46d17373da7b8814a01f3b4a9b80e9007e0762ecf439695a892e11898ed6e86" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:b8353af19256461b4dbeee7b6975af717fa264afee80e4ef12a075fed15cd0e1" [label="/bin/sh -c chmod a+x /*.sh" shape="box"];
  "sha256:77ae8d2a92c6c3edd258698d29a0d29f38f1b7606c4d947e394b492885eba438" [label="sha256:77ae8d2a92c6c3edd258698d29a0d29f38f1b7606c4d947e394b492885eba438" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:c80f914405d62f9b2ec4a34ea80345b6154714d7b02434839fc8180d963de330" [label=""];
  "sha256:c80f914405d62f9b2ec4a34ea80345b6154714d7b02434839fc8180d963de330" -> "sha256:41e60b812e5b3c6745c3d78fbc0c578a7ab383058170ea0f34d592d8a84ff245" [label=""];
  "sha256:41e60b812e5b3c6745c3d78fbc0c578a7ab383058170ea0f34d592d8a84ff245" -> "sha256:85cdb535f53f17b05427c6c87971b266861e214c62a92269c6dc7c5f028479a2" [label=""];
  "sha256:85cdb535f53f17b05427c6c87971b266861e214c62a92269c6dc7c5f028479a2" -> "sha256:f5bbe7bd9584e46ca48b75a7a65be739fa7213c181a26cf0609418cbe626a4db" [label=""];
  "sha256:f5bbe7bd9584e46ca48b75a7a65be739fa7213c181a26cf0609418cbe626a4db" -> "sha256:a513aca8fa8e566c8384052d2106fc820c09247ce947ac1817f28ede63d2c1e7" [label=""];
  "sha256:b1fdfc6eff186c1007a752c7739d4680dca77f366231913ef13170964fdb2031" -> "sha256:a513aca8fa8e566c8384052d2106fc820c09247ce947ac1817f28ede63d2c1e7" [label=""];
  "sha256:a513aca8fa8e566c8384052d2106fc820c09247ce947ac1817f28ede63d2c1e7" -> "sha256:e46d17373da7b8814a01f3b4a9b80e9007e0762ecf439695a892e11898ed6e86" [label=""];
  "sha256:b1fdfc6eff186c1007a752c7739d4680dca77f366231913ef13170964fdb2031" -> "sha256:e46d17373da7b8814a01f3b4a9b80e9007e0762ecf439695a892e11898ed6e86" [label=""];
  "sha256:e46d17373da7b8814a01f3b4a9b80e9007e0762ecf439695a892e11898ed6e86" -> "sha256:b8353af19256461b4dbeee7b6975af717fa264afee80e4ef12a075fed15cd0e1" [label=""];
  "sha256:b8353af19256461b4dbeee7b6975af717fa264afee80e4ef12a075fed15cd0e1" -> "sha256:77ae8d2a92c6c3edd258698d29a0d29f38f1b7606c4d947e394b492885eba438" [label=""];
}

