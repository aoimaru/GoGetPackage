[app/sources/364862787.Dockerfile]
digraph {
  "sha256:ee4bb2ce166445423f5c0b307f3189ba8b9b8076d3675d9164ba2c6bdb294dd3" [label="local://context" shape="ellipse"];
  "sha256:56dbfc7ecef8b6bbe4bc3cd95b405269ecce3ffa67f4a1f5976ff56e11f0c647" [label="docker-image://docker.io/library/php:7.2-apache" shape="ellipse"];
  "sha256:33ea30efa0cdedecead1e808e50ea7df7729337aa237d47d847e228058293718" [label="/bin/sh -c build_packages=\"libpng-dev libfreetype6-dev libjpeg62-turbo-dev libxml2-dev libxslt1-dev libmemcached-dev sendmail-bin sendmail libicu-dev\"     && apt-get update && apt-get install -y $build_packages     && yes \"\" | pecl install apcu-$PHP_EXT_APCU_VERSION && docker-php-ext-enable apcu     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install gd     && docker-php-ext-install mbstring     && echo \"no\" | pecl install memcached-$PHP_EXT_MEMCACHED_VERSION && docker-php-ext-enable memcached     && docker-php-ext-install pcntl     && docker-php-ext-install pdo_mysql     && docker-php-ext-install soap     && yes | pecl install xdebug-$PHP_EXT_XDEBUG_VERSION && docker-php-ext-enable xdebug     && docker-php-ext-install xsl     && docker-php-ext-install zip     && docker-php-ext-install intl     && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:2376de11af1f8eb699f9fd6071401637beef22d9f02e9b8373ea5dfd4546f9ef" [label="/bin/sh -c PHP_EXTENSION_DIR=\"$(php-config --extension-dir)\" bash -c 'curl http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz -o /ioncube_loaders_lin_x86-64.tar.gz &&     tar -xzvf /ioncube_loaders_lin_x86-64.tar.gz -C / &&     cp \"/ioncube/ioncube_loader_lin_${ION_CUBE_PHP_VERSION}.so\" $PHP_EXTENSION_DIR &&     echo \"zend_extension=${PHP_EXTENSION_DIR}/ioncube_loader_lin_${ION_CUBE_PHP_VERSION}.so\" > /usr/local/etc/php/conf.d/00-ioncube.ini &&     rm -rf /ioncube /ioncube_loaders_lin_x86-64.tar.gz'" shape="box"];
  "sha256:6fa99997a98a591f52fc267da5835d7be0cc9ebfea509bc8a4090b40c4e66089" [label="copy{src=/php.ini, dest=/usr/local/etc/php/conf.d/zz-magento.ini}" shape="note"];
  "sha256:05983610b1da5a0956bb434c0ab6ff03b1309a6357ecb78000a1dfb37fcac554" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:c3225c245a4665ebc25125d6046e0cd8450bfdc3a7e47ebfac17e11bab352b4d" [label="/bin/sh -c a2enmod rewrite headers" shape="box"];
  "sha256:58753fa9f86413da79d9ac8aac84666e908ec545a6a55cb20b3130f7fd981780" [label="copy{src=/magento.conf, dest=/etc/apache2/conf-enabled/}" shape="note"];
  "sha256:7fff6e3fd1959e132e6010a75f1e801ee5b9a1aec8ebf61fd54d43ccf37d49d5" [label="sha256:7fff6e3fd1959e132e6010a75f1e801ee5b9a1aec8ebf61fd54d43ccf37d49d5" shape="plaintext"];
  "sha256:56dbfc7ecef8b6bbe4bc3cd95b405269ecce3ffa67f4a1f5976ff56e11f0c647" -> "sha256:33ea30efa0cdedecead1e808e50ea7df7729337aa237d47d847e228058293718" [label=""];
  "sha256:33ea30efa0cdedecead1e808e50ea7df7729337aa237d47d847e228058293718" -> "sha256:2376de11af1f8eb699f9fd6071401637beef22d9f02e9b8373ea5dfd4546f9ef" [label=""];
  "sha256:2376de11af1f8eb699f9fd6071401637beef22d9f02e9b8373ea5dfd4546f9ef" -> "sha256:6fa99997a98a591f52fc267da5835d7be0cc9ebfea509bc8a4090b40c4e66089" [label=""];
  "sha256:ee4bb2ce166445423f5c0b307f3189ba8b9b8076d3675d9164ba2c6bdb294dd3" -> "sha256:6fa99997a98a591f52fc267da5835d7be0cc9ebfea509bc8a4090b40c4e66089" [label=""];
  "sha256:6fa99997a98a591f52fc267da5835d7be0cc9ebfea509bc8a4090b40c4e66089" -> "sha256:05983610b1da5a0956bb434c0ab6ff03b1309a6357ecb78000a1dfb37fcac554" [label=""];
  "sha256:ee4bb2ce166445423f5c0b307f3189ba8b9b8076d3675d9164ba2c6bdb294dd3" -> "sha256:05983610b1da5a0956bb434c0ab6ff03b1309a6357ecb78000a1dfb37fcac554" [label=""];
  "sha256:05983610b1da5a0956bb434c0ab6ff03b1309a6357ecb78000a1dfb37fcac554" -> "sha256:c3225c245a4665ebc25125d6046e0cd8450bfdc3a7e47ebfac17e11bab352b4d" [label=""];
  "sha256:c3225c245a4665ebc25125d6046e0cd8450bfdc3a7e47ebfac17e11bab352b4d" -> "sha256:58753fa9f86413da79d9ac8aac84666e908ec545a6a55cb20b3130f7fd981780" [label=""];
  "sha256:ee4bb2ce166445423f5c0b307f3189ba8b9b8076d3675d9164ba2c6bdb294dd3" -> "sha256:58753fa9f86413da79d9ac8aac84666e908ec545a6a55cb20b3130f7fd981780" [label=""];
  "sha256:58753fa9f86413da79d9ac8aac84666e908ec545a6a55cb20b3130f7fd981780" -> "sha256:7fff6e3fd1959e132e6010a75f1e801ee5b9a1aec8ebf61fd54d43ccf37d49d5" [label=""];
}

