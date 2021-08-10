[app/sources/178312035.Dockerfile]
digraph {
  "sha256:cbe700b80f179f2bf96b2364bbc339923bcd2e555b5579a751f73c44856e325f" [label="docker-image://docker.io/library/php:7.1.10-fpm" shape="ellipse"];
  "sha256:6def0348abc47caa6f2a4cd42e0a5462832195eb39fb30c265ebb2fb922edeca" [label="/bin/sh -c apt-get update && apt-get install -y     openssh-client     libfreetype6-dev     libjpeg62-turbo-dev     libmcrypt-dev     libpng12-dev     zlib1g-dev     libssl-dev     g++     libmemcached-dev     imagemagick     libmagickwand-6.q16-dev --no-install-recommends     wget &&     apt-get clean &&     rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:3ca0bbf6371fa7ea8864349db37a1915b3be6e2489d6cdf7538fc892a171f211" [label="/bin/sh -c ln -s /usr/lib/x86_64-linux-gnu/ImageMagick-6.8.9/bin-Q16/MagickWand-config /usr/bin" shape="box"];
  "sha256:27d6c840b4de7d12b9d7905018feab65f0d83fc38c23860a37098fe873423eaf" [label="/bin/sh -c mkdir /opt/tmp && cd /opt/tmp &&     wget http://download.icu-project.org/files/icu4c/58.2/icu4c-58_2-src.tgz &&     tar zxvf icu4c-58_2-src.tgz &&     cd icu/source &&     ./configure --prefix=/opt/icu582 && make && make install &&     rm -rf /opt/tmp" shape="box"];
  "sha256:1050a75c6ce98d44ea6c9bd81b65f556646ab104d8d9ff725f69785d53d6c5a1" [label="/bin/sh -c docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ &&     docker-php-ext-install gd &&     docker-php-ext-install pdo &&     docker-php-ext-install pdo_mysql &&     docker-php-ext-install opcache &&     docker-php-ext-configure intl --with-icu-dir=/opt/icu582 &&     docker-php-ext-install intl &&     docker-php-ext-install mbstring &&     docker-php-ext-install fileinfo &&     docker-php-ext-install dom &&     docker-php-ext-install zip" shape="box"];
  "sha256:bd3dffb007b52b52b78ddeb35215816762daa118758bbe1b49824d7deb41a27f" [label="/bin/sh -c pecl channel-update pecl.php.net &&     pecl install memcached &&     pecl install imagick" shape="box"];
  "sha256:f136d852609e3c6e8c36c85820f9b387fa20b4fdb11082e07a3e8785131e6c02" [label="/bin/sh -c echo \"extension=memcached.so\" > /usr/local/etc/php/conf.d/ext-memcached.ini &&     echo \"extension=imagick.so\" > /usr/local/etc/php/conf.d/ext-imagick.ini" shape="box"];
  "sha256:c33e29ed49a0627d6cb3b7d8ff5addfc5306292bee4e52ba1cdf2c5e3c39b996" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -" shape="box"];
  "sha256:4d27f067246534696b4ad5284ef233593e20c2e6228d0225fafcab9a46f8b6de" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:b357e83c9467cd5dc17af23f084658f548375ee0396e02f0ca9be462325f3c04" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php" shape="box"];
  "sha256:47a2b9fb9096eec330c1ecc96ad08b423fda8109b89e780171ef84eb774c517c" [label="/bin/sh -c mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:7fbce62a051bdfc06fca7d37a636ade044104060c7e32f95ca32540c016bc357" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:0c7994e4c25d62ab38f8c7805719f55155d47981cad27a0bf3c273ee556c2082" [label="sha256:0c7994e4c25d62ab38f8c7805719f55155d47981cad27a0bf3c273ee556c2082" shape="plaintext"];
  "sha256:cbe700b80f179f2bf96b2364bbc339923bcd2e555b5579a751f73c44856e325f" -> "sha256:6def0348abc47caa6f2a4cd42e0a5462832195eb39fb30c265ebb2fb922edeca" [label=""];
  "sha256:6def0348abc47caa6f2a4cd42e0a5462832195eb39fb30c265ebb2fb922edeca" -> "sha256:3ca0bbf6371fa7ea8864349db37a1915b3be6e2489d6cdf7538fc892a171f211" [label=""];
  "sha256:3ca0bbf6371fa7ea8864349db37a1915b3be6e2489d6cdf7538fc892a171f211" -> "sha256:27d6c840b4de7d12b9d7905018feab65f0d83fc38c23860a37098fe873423eaf" [label=""];
  "sha256:27d6c840b4de7d12b9d7905018feab65f0d83fc38c23860a37098fe873423eaf" -> "sha256:1050a75c6ce98d44ea6c9bd81b65f556646ab104d8d9ff725f69785d53d6c5a1" [label=""];
  "sha256:1050a75c6ce98d44ea6c9bd81b65f556646ab104d8d9ff725f69785d53d6c5a1" -> "sha256:bd3dffb007b52b52b78ddeb35215816762daa118758bbe1b49824d7deb41a27f" [label=""];
  "sha256:bd3dffb007b52b52b78ddeb35215816762daa118758bbe1b49824d7deb41a27f" -> "sha256:f136d852609e3c6e8c36c85820f9b387fa20b4fdb11082e07a3e8785131e6c02" [label=""];
  "sha256:f136d852609e3c6e8c36c85820f9b387fa20b4fdb11082e07a3e8785131e6c02" -> "sha256:c33e29ed49a0627d6cb3b7d8ff5addfc5306292bee4e52ba1cdf2c5e3c39b996" [label=""];
  "sha256:c33e29ed49a0627d6cb3b7d8ff5addfc5306292bee4e52ba1cdf2c5e3c39b996" -> "sha256:4d27f067246534696b4ad5284ef233593e20c2e6228d0225fafcab9a46f8b6de" [label=""];
  "sha256:4d27f067246534696b4ad5284ef233593e20c2e6228d0225fafcab9a46f8b6de" -> "sha256:b357e83c9467cd5dc17af23f084658f548375ee0396e02f0ca9be462325f3c04" [label=""];
  "sha256:b357e83c9467cd5dc17af23f084658f548375ee0396e02f0ca9be462325f3c04" -> "sha256:47a2b9fb9096eec330c1ecc96ad08b423fda8109b89e780171ef84eb774c517c" [label=""];
  "sha256:47a2b9fb9096eec330c1ecc96ad08b423fda8109b89e780171ef84eb774c517c" -> "sha256:7fbce62a051bdfc06fca7d37a636ade044104060c7e32f95ca32540c016bc357" [label=""];
  "sha256:7fbce62a051bdfc06fca7d37a636ade044104060c7e32f95ca32540c016bc357" -> "sha256:0c7994e4c25d62ab38f8c7805719f55155d47981cad27a0bf3c273ee556c2082" [label=""];
}

