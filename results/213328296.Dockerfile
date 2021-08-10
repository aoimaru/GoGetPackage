[app/sources/213328296.Dockerfile]
digraph {
  "sha256:664f1cdb759b098c6350ce6bf495c3dfda439f218a980e5dd0e85a60e4d71b67" [label="docker-image://docker.io/medicean/vulapps:base_lamp" shape="ellipse"];
  "sha256:6f1ab01f24e525347d88558eec12e0a15d3ecb928983b185357a8bdd6cacaf00" [label="/bin/sh -c set -x     && apt-get install -y php5-mysql php5-dev php5-gd php5-memcache php5-pspell php5-snmp snmp php5-xmlrpc libapache2-mod-php5 php5-cli wget    && rm -rf /var/www/html/*     && wget -q $STATIC_URL_JOOMLA -O /tmp/joomla3.5.tar.gz     && tar -zxf /tmp/joomla3.5.tar.gz -C /var/www/html      && rm -rf /tmp/joomla3.5.tar.gz" shape="box"];
  "sha256:47122d4c412a860d60020d5be8cc52edba132984ecc2c3ec8db7d2618a16b000" [label="local://context" shape="ellipse"];
  "sha256:d9ff55ad253cce8f19ca61942cd9af8b9cf5f55f88447e9a717d750eee417e7f" [label="copy{src=/src/configuration.php, dest=/var/www/html/configuration.php}" shape="note"];
  "sha256:c6df2e7936b366367b1f2c99f52cfdb33e42b60aff921b7350a723f285f4cee5" [label="copy{src=/src/joomla.sql, dest=/tmp/joomla.sql}" shape="note"];
  "sha256:a78f67a48b0e59abdaea80051cc71405f976487c275df74341da6c18ec153c57" [label="/bin/sh -c set -x     && chown -R www-data:www-data /var/www/html/     && /etc/init.d/mysql start     && mysql -e \"CREATE DATABASE joomla DEFAULT CHARACTER SET utf8;\" -uroot -proot     && mysql -e \"use joomla;source /tmp/joomla.sql;\" -uroot -proot     && rm -rf /var/www/html/installation/     && mv /var/www/html/robots.txt.dist /var/www/html/robots.txt     && rm -f /tmp/*" shape="box"];
  "sha256:5f7e3afb5c5a011d25265a62f3aedf7323416906ab9af1baad2c000633cf0adc" [label="copy{src=/src/start.sh, dest=/start.sh}" shape="note"];
  "sha256:dd4cf60d471d59a4c62a21385d2777838bb12e325835e8b2151f99515c437e18" [label="/bin/sh -c chmod a+x /start.sh" shape="box"];
  "sha256:8631bd6b5d7a84d47c7bf060ff72a9d735efa3ee9727470540fdc1f797d65f26" [label="sha256:8631bd6b5d7a84d47c7bf060ff72a9d735efa3ee9727470540fdc1f797d65f26" shape="plaintext"];
  "sha256:664f1cdb759b098c6350ce6bf495c3dfda439f218a980e5dd0e85a60e4d71b67" -> "sha256:6f1ab01f24e525347d88558eec12e0a15d3ecb928983b185357a8bdd6cacaf00" [label=""];
  "sha256:6f1ab01f24e525347d88558eec12e0a15d3ecb928983b185357a8bdd6cacaf00" -> "sha256:d9ff55ad253cce8f19ca61942cd9af8b9cf5f55f88447e9a717d750eee417e7f" [label=""];
  "sha256:47122d4c412a860d60020d5be8cc52edba132984ecc2c3ec8db7d2618a16b000" -> "sha256:d9ff55ad253cce8f19ca61942cd9af8b9cf5f55f88447e9a717d750eee417e7f" [label=""];
  "sha256:d9ff55ad253cce8f19ca61942cd9af8b9cf5f55f88447e9a717d750eee417e7f" -> "sha256:c6df2e7936b366367b1f2c99f52cfdb33e42b60aff921b7350a723f285f4cee5" [label=""];
  "sha256:47122d4c412a860d60020d5be8cc52edba132984ecc2c3ec8db7d2618a16b000" -> "sha256:c6df2e7936b366367b1f2c99f52cfdb33e42b60aff921b7350a723f285f4cee5" [label=""];
  "sha256:c6df2e7936b366367b1f2c99f52cfdb33e42b60aff921b7350a723f285f4cee5" -> "sha256:a78f67a48b0e59abdaea80051cc71405f976487c275df74341da6c18ec153c57" [label=""];
  "sha256:a78f67a48b0e59abdaea80051cc71405f976487c275df74341da6c18ec153c57" -> "sha256:5f7e3afb5c5a011d25265a62f3aedf7323416906ab9af1baad2c000633cf0adc" [label=""];
  "sha256:47122d4c412a860d60020d5be8cc52edba132984ecc2c3ec8db7d2618a16b000" -> "sha256:5f7e3afb5c5a011d25265a62f3aedf7323416906ab9af1baad2c000633cf0adc" [label=""];
  "sha256:5f7e3afb5c5a011d25265a62f3aedf7323416906ab9af1baad2c000633cf0adc" -> "sha256:dd4cf60d471d59a4c62a21385d2777838bb12e325835e8b2151f99515c437e18" [label=""];
  "sha256:dd4cf60d471d59a4c62a21385d2777838bb12e325835e8b2151f99515c437e18" -> "sha256:8631bd6b5d7a84d47c7bf060ff72a9d735efa3ee9727470540fdc1f797d65f26" [label=""];
}

