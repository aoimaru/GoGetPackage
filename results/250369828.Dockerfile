[app/sources/250369828.Dockerfile]
digraph {
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" [label="docker-image://docker.io/library/php:7.0-fpm" shape="ellipse"];
  "sha256:10db37b3a405107e13a55304f3c5e54ed1710eba2d9ac9767fda021c69b89074" [label="local://context" shape="ellipse"];
  "sha256:89eee215626c8445aa397a45fe510473d98bb962d2b5d0d0e5affa93a964e3f4" [label="copy{src=/sources.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:ac2a2d53ee54ab32fa4b6e1597a4924c9e91b0a671f041292a7a4896277c3c32" [label="/bin/sh -c apt-get update && apt-get install -y         libfreetype6-dev         libmemcached-dev         libmcrypt-dev         libjpeg62-turbo-dev         libpng12-dev         unzip         && docker-php-ext-install -j$(nproc) iconv mcrypt         && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/         && docker-php-ext-install -j$(nproc) gd         && docker-php-ext-install mysqli         && docker-php-ext-install pdo_mysql         && docker-php-ext-install opcache         && pecl install redis         && docker-php-ext-enable redis" shape="box"];
  "sha256:b1f017c6dcb5984bf4197ab054312d935316a43f8a2f246ded3002ea73082e2a" [label="copy{src=/php.ini, dest=/usr/local/etc/php/php.ini}" shape="note"];
  "sha256:e7a1e166f9f527c2b1bd15f85a213e05f1a40f2bfbe4623b0f1e890b291cd9a4" [label="copy{src=/php-fpm.conf, dest=/usr/local/etc/php-fpm.conf}" shape="note"];
  "sha256:4b639bca0184c7849d5afd3ed8ac8e4b1c4eec809c14457b084d48cb0dec5272" [label="/bin/sh -c curl -fsSL 'https://xdebug.org/files/xdebug-2.4.0.tgz' -o xdebug.tar.gz     && mkdir -p xdebug     && tar -xf xdebug.tar.gz -C xdebug --strip-components=1     && rm xdebug.tar.gz     && (     cd xdebug     && phpize     && ./configure --enable-xdebug     && make -j$(nproc)     && make install     )     && rm -r xdebug     && docker-php-ext-enable xdebug" shape="box"];
  "sha256:2b636e32fc73315fc4b55238087abff46e19f655cb78335caa85b24ff37b61ef" [label="/bin/sh -c echo \"xdebug.enable=1\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini" shape="box"];
  "sha256:8ababf1083fc6b2c59c7627dd4c041262af310580359057539299b11a3d2ec6f" [label="/bin/sh -c echo \"xdebug.remote_enable=1\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini" shape="box"];
  "sha256:caf1194ea1a07a89cf311c0aa908906ce341ff7edb88f5a89bb0694edcce6053" [label="/bin/sh -c echo \"xdebug.remote_host=192.168.99.100\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini" shape="box"];
  "sha256:046806e8c0c2e1de4cbe74b61e08c1a56158b17bfa253683627d1476da13d3df" [label="mkdir{path=/opt}" shape="note"];
  "sha256:6191f0626dedb37043c920af2068df0787ed371f4d8d71de63f2b8bd89553a06" [label="/bin/sh -c usermod -u 1000 www-data" shape="box"];
  "sha256:fb9056a151fc89e7f7bc06df1790a8dd03709f46bfacd1d5897966ac767b4a78" [label="/bin/sh -c cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime" shape="box"];
  "sha256:be03dc79184d523641a719a6adb87a3ee2c9d793eb99e651ff9cf014ac6025b2" [label="sha256:be03dc79184d523641a719a6adb87a3ee2c9d793eb99e651ff9cf014ac6025b2" shape="plaintext"];
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" -> "sha256:89eee215626c8445aa397a45fe510473d98bb962d2b5d0d0e5affa93a964e3f4" [label=""];
  "sha256:10db37b3a405107e13a55304f3c5e54ed1710eba2d9ac9767fda021c69b89074" -> "sha256:89eee215626c8445aa397a45fe510473d98bb962d2b5d0d0e5affa93a964e3f4" [label=""];
  "sha256:89eee215626c8445aa397a45fe510473d98bb962d2b5d0d0e5affa93a964e3f4" -> "sha256:ac2a2d53ee54ab32fa4b6e1597a4924c9e91b0a671f041292a7a4896277c3c32" [label=""];
  "sha256:ac2a2d53ee54ab32fa4b6e1597a4924c9e91b0a671f041292a7a4896277c3c32" -> "sha256:b1f017c6dcb5984bf4197ab054312d935316a43f8a2f246ded3002ea73082e2a" [label=""];
  "sha256:10db37b3a405107e13a55304f3c5e54ed1710eba2d9ac9767fda021c69b89074" -> "sha256:b1f017c6dcb5984bf4197ab054312d935316a43f8a2f246ded3002ea73082e2a" [label=""];
  "sha256:b1f017c6dcb5984bf4197ab054312d935316a43f8a2f246ded3002ea73082e2a" -> "sha256:e7a1e166f9f527c2b1bd15f85a213e05f1a40f2bfbe4623b0f1e890b291cd9a4" [label=""];
  "sha256:10db37b3a405107e13a55304f3c5e54ed1710eba2d9ac9767fda021c69b89074" -> "sha256:e7a1e166f9f527c2b1bd15f85a213e05f1a40f2bfbe4623b0f1e890b291cd9a4" [label=""];
  "sha256:e7a1e166f9f527c2b1bd15f85a213e05f1a40f2bfbe4623b0f1e890b291cd9a4" -> "sha256:4b639bca0184c7849d5afd3ed8ac8e4b1c4eec809c14457b084d48cb0dec5272" [label=""];
  "sha256:4b639bca0184c7849d5afd3ed8ac8e4b1c4eec809c14457b084d48cb0dec5272" -> "sha256:2b636e32fc73315fc4b55238087abff46e19f655cb78335caa85b24ff37b61ef" [label=""];
  "sha256:2b636e32fc73315fc4b55238087abff46e19f655cb78335caa85b24ff37b61ef" -> "sha256:8ababf1083fc6b2c59c7627dd4c041262af310580359057539299b11a3d2ec6f" [label=""];
  "sha256:8ababf1083fc6b2c59c7627dd4c041262af310580359057539299b11a3d2ec6f" -> "sha256:caf1194ea1a07a89cf311c0aa908906ce341ff7edb88f5a89bb0694edcce6053" [label=""];
  "sha256:caf1194ea1a07a89cf311c0aa908906ce341ff7edb88f5a89bb0694edcce6053" -> "sha256:046806e8c0c2e1de4cbe74b61e08c1a56158b17bfa253683627d1476da13d3df" [label=""];
  "sha256:046806e8c0c2e1de4cbe74b61e08c1a56158b17bfa253683627d1476da13d3df" -> "sha256:6191f0626dedb37043c920af2068df0787ed371f4d8d71de63f2b8bd89553a06" [label=""];
  "sha256:6191f0626dedb37043c920af2068df0787ed371f4d8d71de63f2b8bd89553a06" -> "sha256:fb9056a151fc89e7f7bc06df1790a8dd03709f46bfacd1d5897966ac767b4a78" [label=""];
  "sha256:fb9056a151fc89e7f7bc06df1790a8dd03709f46bfacd1d5897966ac767b4a78" -> "sha256:be03dc79184d523641a719a6adb87a3ee2c9d793eb99e651ff9cf014ac6025b2" [label=""];
}

