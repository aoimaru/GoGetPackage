[app/sources/174783419.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:23fcab03c0901ac8215b65ceb85a7a72e657022331c975b2140d965fe4cd381d" [label="/bin/sh -c cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime" shape="box"];
  "sha256:faab426581cb1b7a29027953816431a3151f06b4a519ca899b517c1ff06fcdab" [label="/bin/sh -c yum -y install wget tar unzip gcc zlib zlib-devel openssl openssl-devel unzip" shape="box"];
  "sha256:a6738515a560a45e6c0869af809d03e75b9ea72c43814d82edc62c17a79eba3d" [label="/bin/sh -c yum -y install libxml2-devel bzip2-devel curl-devel db4-devel gdbm-devel libjpeg-devel libpng-devel freetype-devel t1lib-devel.x86_64 gmp-devel libc-client-devel build-essential openldap-devel libmcrypt-devel.x86_64 gcc-c++ postgresql-devel aspell-devel pcre pcre-devel xz git" shape="box"];
  "sha256:d37b8c738a4fba2eff132727b6ece945ced20092599de37bc1915f987d79f270" [label="/bin/sh -c ln -s /usr/lib64/libc-client.so /usr/lib/libc-client.so     && cp -frp /usr/lib64/libldap* /usr/lib/" shape="box"];
  "sha256:1c8085eaba4db0cf1153e51a2ce7486bd91174eac939cd399803164019cd281a" [label="/bin/sh -c set -x     && wget http://sourceforge.net/projects/mcrypt/files/Libmcrypt/2.5.8/libmcrypt-2.5.8.tar.gz     && mkdir -p /usr/src/libmcrypt     && tar -zxvf libmcrypt-2.5.8.tar.gz -C /usr/src/libmcrypt --strip-components=1     && rm libmcrypt-2.5.8.tar.gz     && pushd /usr/src/libmcrypt     && ./configure     && make && make install     && popd" shape="box"];
  "sha256:aec67be3993587e86f0a98f9879b83d54c5c8e8265cd4121ba99d12bac803ce8" [label="/bin/sh -c wget http://mirrors.sohu.com/php/php-5.5.9.tar.gz     && mkdir -p /usr/src/php     && tar -zxvf php-5.5.9.tar.gz -C /usr/src/php --strip-components=1     && rm php-5.5.9.tar.gz     && pushd /usr/src/php     && ./configure --prefix=/opt/php --with-config-file-path=/opt/php/etc --enable-cli --enable-ftp --enable-sockets --enable-soap --enable-fileinfo --enable-bcmath --enable-calendar --with-kerberos --enable-zip --enable-pear --with-bz2 --with-curl --enable-dba --with-inifile --with-flatfile --with-cdb --with-gdbm --with-mcrypt --with-mhash --with-mysql=mysqlnd --with-mysqli=mysqlnd --with-pdo-mysql=mysqlnd --with-pdo-pgsql --with-pgsql --with-pspell --with-gettext --with-gmp --with-imap --with-imap-ssl --with-ldap --with-ldap-sasl --enable-mbstring --enable-mbregex --enable-exif --with-openssl --enable-fpm --with-gd --with-png-dir --with-jpeg-dir --with-freetype-dir --with-t1lib --enable-gd-native-ttf --enable-gd-jis-conv --with-libxml-dir --with-zlib     && make     && make install     && rm -r /usr/src/php     && popd" shape="box"];
  "sha256:f8a0d788caf7ff028f3dd984b5894439bd9f4f63b773a991a07e482f6436d0c2" [label="/bin/sh -c git clone https://github.com/nicolasff/phpredis     && pushd phpredis     && /opt/php/bin/phpize     && ./configure --with-php-config=/opt/php/bin/php-config     && make     && make install     && popd" shape="box"];
  "sha256:40c9e54f96e9a382bb62da3207fe80aa232a0a33718e356d5a14a58da4904f89" [label="/bin/sh -c git clone https://github.com/allegro/php-protobuf     && pushd php-protobuf     && /opt/php/bin/phpize     && ./configure --with-php-config=/opt/php/bin/php-config     && make     && make install     && popd" shape="box"];
  "sha256:ff36955e282f45e3b69639f755e30d0e5d899392421ab03bdfe321023f8b94f7" [label="/bin/sh -c wget http://ftp.exim.llorien.org/pcre/pcre-8.32.tar.gz     && mkdir -p /usr/src/pcre-8.32     && tar -zxvf pcre-8.32.tar.gz -C /usr/src/pcre-8.32 --strip-components=1     && rm pcre-8.32.tar.gz" shape="box"];
  "sha256:48435bd8c93124a3316c9659a05320d2de7ae3f0d3b9cd2c26e346c2187a40f4" [label="/bin/sh -c wget http://www.openssl.org/source/openssl-1.0.1e.tar.gz     && mkdir -p /usr/src/openssl-1.0.1e     && tar -zxvf openssl-1.0.1e.tar.gz -C /usr/src/openssl-1.0.1e --strip-components=1     && rm openssl-1.0.1e.tar.gz" shape="box"];
  "sha256:44ed8f0fc1e38620f59cefb507e8fd9c647166f1670a729699ce250e62e528fc" [label="/bin/sh -c wget http://nginx.org/download/nginx-1.4.6.tar.gz     && mkdir -p /usr/src/nginx     && tar -zxvf nginx-1.4.6.tar.gz -C /usr/src/nginx --strip-components=1     && rm nginx-1.4.6.tar.gz     && pushd /usr/src/nginx     && ./configure --prefix=/opt/nginx --with-pcre=/usr/src/pcre-8.32 --with-http_gzip_static_module --with-http_ssl_module --with-openssl=/usr/src/openssl-1.0.1e     && make     && make install     && popd" shape="box"];
  "sha256:27957ce0259473b691748c69c736c0b1a4d5fdee9f2cfc0282dd35e18ca7445d" [label="local://context" shape="ellipse"];
  "sha256:9df1c5f0b6da3639501211d5814e5063b6e8e067cea95cf4068f888f0a746369" [label="copy{src=/, dest=/opt/}" shape="note"];
  "sha256:07581e4b3efcd473291588cbcdae3b1471eead100fa8c75ff677f0873f1b7ff9" [label="mkdir{path=/opt}" shape="note"];
  "sha256:0d9c4460f0aae5d0bd220a763f71c371829615f8dccb3a32cfc9d2b2e8ffad0d" [label="/bin/sh -c cp nginx.conf /opt/nginx/conf/nginx.conf     && cp php.ini /opt/php/etc/     && cp php-fpm.conf /opt/php/etc/" shape="box"];
  "sha256:d83368fb2b469fbcc06464b43f98f210841523f0f52522529889149f1a00ed30" [label="/bin/sh -c tar zxvf scribed.tar.gz     && chown -R root:root scribed     && rm -f scribed.tar.gz" shape="box"];
  "sha256:0f55f922c301aca7e00d35d2fe07c188e1dde6b23656092d84334ba375b310c9" [label="/bin/sh -c curl -SL 'https://bootstrap.pypa.io/get-pip.py' | python" shape="box"];
  "sha256:b3f1d2d0b898a7973b6f17ce5a317e1787eead81207a1ba2bef6f0658581d029" [label="/bin/sh -c pip install supervisor     && echo_supervisord_conf > /etc/supervisord.conf     && echo \"[include]\" >> /etc/supervisord.conf     && echo \"files = /etc/supervisord.d/*.conf\" >> /etc/supervisord.conf     && mkdir -p /etc/supervisord.d     && cp nginxphp.conf scribed.conf /etc/supervisord.d/     && rm -f nginx.conf php.ini php-fpm.conf nginxphp.conf scribed.conf Dockerfile" shape="box"];
  "sha256:a635741fca9f7d69c88742ce53d28f3f72d44a1eb168971669ddfc4dc9f42c74" [label="/bin/sh -c mkdir /opt/app" shape="box"];
  "sha256:4ea341b5d5901931524e40437617cb06aa6cb1f1dfe13571578b19234aaf3685" [label="/bin/sh -c mkdir /opt/logs" shape="box"];
  "sha256:4d3bee2d0f143babfff2169dfa178afc2a6b29c23fa1052811440a87ee4274d4" [label="sha256:4d3bee2d0f143babfff2169dfa178afc2a6b29c23fa1052811440a87ee4274d4" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:23fcab03c0901ac8215b65ceb85a7a72e657022331c975b2140d965fe4cd381d" [label=""];
  "sha256:23fcab03c0901ac8215b65ceb85a7a72e657022331c975b2140d965fe4cd381d" -> "sha256:faab426581cb1b7a29027953816431a3151f06b4a519ca899b517c1ff06fcdab" [label=""];
  "sha256:faab426581cb1b7a29027953816431a3151f06b4a519ca899b517c1ff06fcdab" -> "sha256:a6738515a560a45e6c0869af809d03e75b9ea72c43814d82edc62c17a79eba3d" [label=""];
  "sha256:a6738515a560a45e6c0869af809d03e75b9ea72c43814d82edc62c17a79eba3d" -> "sha256:d37b8c738a4fba2eff132727b6ece945ced20092599de37bc1915f987d79f270" [label=""];
  "sha256:d37b8c738a4fba2eff132727b6ece945ced20092599de37bc1915f987d79f270" -> "sha256:1c8085eaba4db0cf1153e51a2ce7486bd91174eac939cd399803164019cd281a" [label=""];
  "sha256:1c8085eaba4db0cf1153e51a2ce7486bd91174eac939cd399803164019cd281a" -> "sha256:aec67be3993587e86f0a98f9879b83d54c5c8e8265cd4121ba99d12bac803ce8" [label=""];
  "sha256:aec67be3993587e86f0a98f9879b83d54c5c8e8265cd4121ba99d12bac803ce8" -> "sha256:f8a0d788caf7ff028f3dd984b5894439bd9f4f63b773a991a07e482f6436d0c2" [label=""];
  "sha256:f8a0d788caf7ff028f3dd984b5894439bd9f4f63b773a991a07e482f6436d0c2" -> "sha256:40c9e54f96e9a382bb62da3207fe80aa232a0a33718e356d5a14a58da4904f89" [label=""];
  "sha256:40c9e54f96e9a382bb62da3207fe80aa232a0a33718e356d5a14a58da4904f89" -> "sha256:ff36955e282f45e3b69639f755e30d0e5d899392421ab03bdfe321023f8b94f7" [label=""];
  "sha256:ff36955e282f45e3b69639f755e30d0e5d899392421ab03bdfe321023f8b94f7" -> "sha256:48435bd8c93124a3316c9659a05320d2de7ae3f0d3b9cd2c26e346c2187a40f4" [label=""];
  "sha256:48435bd8c93124a3316c9659a05320d2de7ae3f0d3b9cd2c26e346c2187a40f4" -> "sha256:44ed8f0fc1e38620f59cefb507e8fd9c647166f1670a729699ce250e62e528fc" [label=""];
  "sha256:44ed8f0fc1e38620f59cefb507e8fd9c647166f1670a729699ce250e62e528fc" -> "sha256:9df1c5f0b6da3639501211d5814e5063b6e8e067cea95cf4068f888f0a746369" [label=""];
  "sha256:27957ce0259473b691748c69c736c0b1a4d5fdee9f2cfc0282dd35e18ca7445d" -> "sha256:9df1c5f0b6da3639501211d5814e5063b6e8e067cea95cf4068f888f0a746369" [label=""];
  "sha256:9df1c5f0b6da3639501211d5814e5063b6e8e067cea95cf4068f888f0a746369" -> "sha256:07581e4b3efcd473291588cbcdae3b1471eead100fa8c75ff677f0873f1b7ff9" [label=""];
  "sha256:07581e4b3efcd473291588cbcdae3b1471eead100fa8c75ff677f0873f1b7ff9" -> "sha256:0d9c4460f0aae5d0bd220a763f71c371829615f8dccb3a32cfc9d2b2e8ffad0d" [label=""];
  "sha256:0d9c4460f0aae5d0bd220a763f71c371829615f8dccb3a32cfc9d2b2e8ffad0d" -> "sha256:d83368fb2b469fbcc06464b43f98f210841523f0f52522529889149f1a00ed30" [label=""];
  "sha256:d83368fb2b469fbcc06464b43f98f210841523f0f52522529889149f1a00ed30" -> "sha256:0f55f922c301aca7e00d35d2fe07c188e1dde6b23656092d84334ba375b310c9" [label=""];
  "sha256:0f55f922c301aca7e00d35d2fe07c188e1dde6b23656092d84334ba375b310c9" -> "sha256:b3f1d2d0b898a7973b6f17ce5a317e1787eead81207a1ba2bef6f0658581d029" [label=""];
  "sha256:b3f1d2d0b898a7973b6f17ce5a317e1787eead81207a1ba2bef6f0658581d029" -> "sha256:a635741fca9f7d69c88742ce53d28f3f72d44a1eb168971669ddfc4dc9f42c74" [label=""];
  "sha256:a635741fca9f7d69c88742ce53d28f3f72d44a1eb168971669ddfc4dc9f42c74" -> "sha256:4ea341b5d5901931524e40437617cb06aa6cb1f1dfe13571578b19234aaf3685" [label=""];
  "sha256:4ea341b5d5901931524e40437617cb06aa6cb1f1dfe13571578b19234aaf3685" -> "sha256:4d3bee2d0f143babfff2169dfa178afc2a6b29c23fa1052811440a87ee4274d4" [label=""];
}

