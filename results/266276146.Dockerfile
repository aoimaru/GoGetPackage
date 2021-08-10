[app/sources/266276146.Dockerfile]
digraph {
  "sha256:debd20f045685e2f3b74b9e348f38c231a30dc1b73c508b83f11bb93600a2496" [label="local://context" shape="ellipse"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:092faeb31c9ac59f732068cbcde211ddfa7f7d54c245c69e3bc09c68108114d7" [label="/bin/sh -c apt-get clean && apt-get -y update && apt-get install -y locales && locale-gen en_US.UTF-8" shape="box"];
  "sha256:5299bffa462bc67e999ee4ea6b17137f8b9d4a52fdeea9c4b3f2db86e75b668c" [label="/bin/sh -c apt-get install -y         build-essential         curl         git         libcurl4-openssl-dev         libicu-dev         libmcrypt-dev         libmysqlclient-dev         libpng-dev         mysql-client         ruby-full         software-properties-common         vim         zip" shape="box"];
  "sha256:9c920c1f930e88d5528cbf65d9b969e535b80b1a5a24e63764b767e9bd987a3a" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_6.x | bash -     && apt-get install -y         nodejs     && docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd     && docker-php-ext-install       curl       gd       intl       json       mbstring       mcrypt       mysqli       pdo_mysql       zip       opcache     && php -r \"readfile('http://getcomposer.org/installer');\" | php -- --install-dir=/usr/bin/ --filename=composer     && npm install -g bower     && mkdir /run/php     && apt-get remove -y --purge software-properties-common     && apt-get -y autoremove     && apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:ae96c903df251cb0ec830c74192fbad2083d462cc7fa14cd553f4eff5005724c" [label="/bin/sh -c curl -fsSL 'https://xdebug.org/files/xdebug-2.5.5.tgz' -o xdebug.tar.gz         && mkdir -p xdebug         && tar -xf xdebug.tar.gz -C xdebug --strip-components=1         && rm xdebug.tar.gz         && (         cd xdebug         && phpize         && ./configure --enable-xdebug         && make -j$(nproc)         && make install         )         && rm -r xdebug         && docker-php-ext-enable xdebug" shape="box"];
  "sha256:63fc57bf0a08559f1b12fed350630aba4cc8c4fc3ba1f9949b4589dae409f07d" [label="copy{src=/build/docker/xdebug.ini, dest=/usr/local/etc/php/conf.d/xdebug.ini}" shape="note"];
  "sha256:ca94c0d917011184acf2f756ee882a0373ed2e660136592d4f83bc921ff7d52f" [label="/bin/sh -c su -c \"gem install sass\"" shape="box"];
  "sha256:9d8e7181afcba7f9e3138795a2d2121ca69098723a63291b2cef3bc6115ea56b" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:bcccab2292f721ca7c678ee1dd64ced4f9e4d6dc63d92eb4b9a3f66147228ab7" [label="/bin/sh -c service apache2 restart" shape="box"];
  "sha256:97816c09423d23e5a084fcd420dafc1627b567144e0efdc5c4acbfee7772d03c" [label="/bin/sh -c usermod -u 1000 www-data && groupmod -g 1000 www-data" shape="box"];
  "sha256:78951e2b48f8760c51d27ff05ce0df72987d9c3d4125e84e60a2df3139a7d358" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:98144df0dfe8dbd2d618136166b98b918b9b5ea669dab80540e9667ccd12213f" [label="copy{src=/composer.json, dest=/var/www/html/},copy{src=/package.json, dest=/var/www/html/},copy{src=/bower.json, dest=/var/www/html/}" shape="note"];
  "sha256:9a9ab34f096c1420a78c9cfa1e9e6d1b6f400041e9669704c99e58cc3ffeb8ed" [label="/bin/sh -c composer install && npm install --quiet && bower install --allow-root" shape="box"];
  "sha256:0a83783eb8f6a4478b483210541a4277d35462dc82dcdd363b267be419336ff3" [label="sha256:0a83783eb8f6a4478b483210541a4277d35462dc82dcdd363b267be419336ff3" shape="plaintext"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:092faeb31c9ac59f732068cbcde211ddfa7f7d54c245c69e3bc09c68108114d7" [label=""];
  "sha256:092faeb31c9ac59f732068cbcde211ddfa7f7d54c245c69e3bc09c68108114d7" -> "sha256:5299bffa462bc67e999ee4ea6b17137f8b9d4a52fdeea9c4b3f2db86e75b668c" [label=""];
  "sha256:5299bffa462bc67e999ee4ea6b17137f8b9d4a52fdeea9c4b3f2db86e75b668c" -> "sha256:9c920c1f930e88d5528cbf65d9b969e535b80b1a5a24e63764b767e9bd987a3a" [label=""];
  "sha256:9c920c1f930e88d5528cbf65d9b969e535b80b1a5a24e63764b767e9bd987a3a" -> "sha256:ae96c903df251cb0ec830c74192fbad2083d462cc7fa14cd553f4eff5005724c" [label=""];
  "sha256:ae96c903df251cb0ec830c74192fbad2083d462cc7fa14cd553f4eff5005724c" -> "sha256:63fc57bf0a08559f1b12fed350630aba4cc8c4fc3ba1f9949b4589dae409f07d" [label=""];
  "sha256:debd20f045685e2f3b74b9e348f38c231a30dc1b73c508b83f11bb93600a2496" -> "sha256:63fc57bf0a08559f1b12fed350630aba4cc8c4fc3ba1f9949b4589dae409f07d" [label=""];
  "sha256:63fc57bf0a08559f1b12fed350630aba4cc8c4fc3ba1f9949b4589dae409f07d" -> "sha256:ca94c0d917011184acf2f756ee882a0373ed2e660136592d4f83bc921ff7d52f" [label=""];
  "sha256:ca94c0d917011184acf2f756ee882a0373ed2e660136592d4f83bc921ff7d52f" -> "sha256:9d8e7181afcba7f9e3138795a2d2121ca69098723a63291b2cef3bc6115ea56b" [label=""];
  "sha256:9d8e7181afcba7f9e3138795a2d2121ca69098723a63291b2cef3bc6115ea56b" -> "sha256:bcccab2292f721ca7c678ee1dd64ced4f9e4d6dc63d92eb4b9a3f66147228ab7" [label=""];
  "sha256:bcccab2292f721ca7c678ee1dd64ced4f9e4d6dc63d92eb4b9a3f66147228ab7" -> "sha256:97816c09423d23e5a084fcd420dafc1627b567144e0efdc5c4acbfee7772d03c" [label=""];
  "sha256:97816c09423d23e5a084fcd420dafc1627b567144e0efdc5c4acbfee7772d03c" -> "sha256:78951e2b48f8760c51d27ff05ce0df72987d9c3d4125e84e60a2df3139a7d358" [label=""];
  "sha256:78951e2b48f8760c51d27ff05ce0df72987d9c3d4125e84e60a2df3139a7d358" -> "sha256:98144df0dfe8dbd2d618136166b98b918b9b5ea669dab80540e9667ccd12213f" [label=""];
  "sha256:debd20f045685e2f3b74b9e348f38c231a30dc1b73c508b83f11bb93600a2496" -> "sha256:98144df0dfe8dbd2d618136166b98b918b9b5ea669dab80540e9667ccd12213f" [label=""];
  "sha256:98144df0dfe8dbd2d618136166b98b918b9b5ea669dab80540e9667ccd12213f" -> "sha256:9a9ab34f096c1420a78c9cfa1e9e6d1b6f400041e9669704c99e58cc3ffeb8ed" [label=""];
  "sha256:9a9ab34f096c1420a78c9cfa1e9e6d1b6f400041e9669704c99e58cc3ffeb8ed" -> "sha256:0a83783eb8f6a4478b483210541a4277d35462dc82dcdd363b267be419336ff3" [label=""];
}

