[app/sources/233765323.Dockerfile]
digraph {
  "sha256:f6fb5401aa5e31e1f83651aff2bb2762b258b3018e0a8ccb3b025a42808e56be" [label="docker-image://docker.io/library/php:7-fpm" shape="ellipse"];
  "sha256:bd560d2b3a870dcff3dccfa6fb4cc75db099de32c3868be3908b30e58065ee61" [label="/bin/sh -c apt-get update && apt-get install -y     git     libfreetype6-dev     libjpeg62-turbo-dev     libmcrypt-dev     libpng-dev \tlibicu-dev \tlibpq-dev \tmysql-client && \tdocker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql &&     docker-php-ext-install pdo pdo_pgsql pgsql && \tdocker-php-ext-install intl &&     docker-php-ext-install pdo_mysql &&     docker-php-ext-install zip &&     docker-php-ext-install exif &&     pecl install apcu &&     docker-php-ext-enable apcu &&     pecl install mcrypt-1.0.1 &&     docker-php-ext-enable mcrypt &&     docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ &&     docker-php-ext-install -j$(nproc) gd" shape="box"];
  "sha256:5cb779b61fd5df9e216964930fc68ab79c05584fba19057ffa0dee28a376b147" [label="mkdir{path=/app}" shape="note"];
  "sha256:66194cedd8ea427adf109a7864873b5e779866e85a8f4bc5bc95c1492a978645" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin" shape="box"];
  "sha256:5dade83e500f41b20734ecc75ff75390a99d153a92a012594035ad59edfc726f" [label="local://context" shape="ellipse"];
  "sha256:8b1ba571c0de8b91ae31e0a3bc62c08c52a6efc3fea5ef927fd950ea0ba07d00" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:7cc7f818e3c193e8f4e13f8d12cf28fdbee7c4709ee8a1cc32dda6c3c5842783" [label="/bin/sh -c composer install --no-ansi --no-interaction --no-progress --optimize-autoloader" shape="box"];
  "sha256:a45d855225ae79c77f6f652e3c258da228431320ad4c8d6669fcbb4435aa598b" [label="/bin/sh -c chown www-data:www-data -R /app /tmp" shape="box"];
  "sha256:c0d5c9cd88fd34a331739713a338599e68c0895b0d0c85cb70c3104f4b700e14" [label="/bin/sh -c chmod 755 ./app/config/docker/php-fpm-7/fixtures-pgsql.sh" shape="box"];
  "sha256:d7876cccf19e4ae800d39cb2f4ab48cf4ed57bd6d242a08929d6d4595343c4cd" [label="/bin/sh -c chmod 755 ./app/config/docker/php-fpm-7/fixtures-mysql.sh" shape="box"];
  "sha256:421436f4d90b2c7854a607e73290c38c25b8f7525c486d0a6a2c8f0407313111" [label="sha256:421436f4d90b2c7854a607e73290c38c25b8f7525c486d0a6a2c8f0407313111" shape="plaintext"];
  "sha256:f6fb5401aa5e31e1f83651aff2bb2762b258b3018e0a8ccb3b025a42808e56be" -> "sha256:bd560d2b3a870dcff3dccfa6fb4cc75db099de32c3868be3908b30e58065ee61" [label=""];
  "sha256:bd560d2b3a870dcff3dccfa6fb4cc75db099de32c3868be3908b30e58065ee61" -> "sha256:5cb779b61fd5df9e216964930fc68ab79c05584fba19057ffa0dee28a376b147" [label=""];
  "sha256:5cb779b61fd5df9e216964930fc68ab79c05584fba19057ffa0dee28a376b147" -> "sha256:66194cedd8ea427adf109a7864873b5e779866e85a8f4bc5bc95c1492a978645" [label=""];
  "sha256:66194cedd8ea427adf109a7864873b5e779866e85a8f4bc5bc95c1492a978645" -> "sha256:8b1ba571c0de8b91ae31e0a3bc62c08c52a6efc3fea5ef927fd950ea0ba07d00" [label=""];
  "sha256:5dade83e500f41b20734ecc75ff75390a99d153a92a012594035ad59edfc726f" -> "sha256:8b1ba571c0de8b91ae31e0a3bc62c08c52a6efc3fea5ef927fd950ea0ba07d00" [label=""];
  "sha256:8b1ba571c0de8b91ae31e0a3bc62c08c52a6efc3fea5ef927fd950ea0ba07d00" -> "sha256:7cc7f818e3c193e8f4e13f8d12cf28fdbee7c4709ee8a1cc32dda6c3c5842783" [label=""];
  "sha256:7cc7f818e3c193e8f4e13f8d12cf28fdbee7c4709ee8a1cc32dda6c3c5842783" -> "sha256:a45d855225ae79c77f6f652e3c258da228431320ad4c8d6669fcbb4435aa598b" [label=""];
  "sha256:a45d855225ae79c77f6f652e3c258da228431320ad4c8d6669fcbb4435aa598b" -> "sha256:c0d5c9cd88fd34a331739713a338599e68c0895b0d0c85cb70c3104f4b700e14" [label=""];
  "sha256:c0d5c9cd88fd34a331739713a338599e68c0895b0d0c85cb70c3104f4b700e14" -> "sha256:d7876cccf19e4ae800d39cb2f4ab48cf4ed57bd6d242a08929d6d4595343c4cd" [label=""];
  "sha256:d7876cccf19e4ae800d39cb2f4ab48cf4ed57bd6d242a08929d6d4595343c4cd" -> "sha256:421436f4d90b2c7854a607e73290c38c25b8f7525c486d0a6a2c8f0407313111" [label=""];
}

