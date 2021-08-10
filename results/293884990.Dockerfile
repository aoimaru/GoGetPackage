[app/sources/293884990.Dockerfile]
digraph {
  "sha256:f163ad0bbe5f411386b7e1af252df8e940887f829c8cf5524958952d03561d49" [label="local://context" shape="ellipse"];
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" [label="docker-image://docker.io/library/php:7.0-fpm" shape="ellipse"];
  "sha256:c746b9541dec61a7f96f858d5073c58e780cd9970e90d3d6a1905e47038ad01d" [label="/bin/sh -c apt-get update   && apt-get install -y     cron     libfreetype6-dev     libicu-dev     libjpeg62-turbo-dev     libmcrypt-dev     libpng12-dev     libxslt1-dev     gettext     msmtp     git     vim" shape="box"];
  "sha256:dd70abf72685ce01fa3a4f25f858b08098f18a7653de63912f737b32fae76f90" [label="/bin/sh -c docker-php-ext-configure   gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/" shape="box"];
  "sha256:5714c2305e16e285c34a6c62ddb53c8cc43e1a900d40f14fb2dc90c09d2daee7" [label="/bin/sh -c docker-php-ext-install     gd     intl     mbstring     mcrypt     pdo_mysql     xsl     zip     soap     bcmath     mysqli     opcache     pcntl" shape="box"];
  "sha256:930e01f4d52ffea3b951f50e005c92a778d1cc8ce531a1c0c1ad359d42c2aed3" [label="/bin/sh -c [ \"$BUILD_ENV\" != \"$PROD_ENV\" ] && pecl install -o -f xdebug-2.5.0; true" shape="box"];
  "sha256:ab15ac2eafe8b4ce7051c66e1b85d96383c025f4ea13d5e9a3a4b347e2ce0b42" [label="/bin/sh -c [ \"$BUILD_ENV\" != \"$PROD_ENV\" ]     && version=$(php -r \"echo PHP_MAJOR_VERSION.PHP_MINOR_VERSION;\")     && curl -A \"Docker\" -o /tmp/blackfire-probe.tar.gz -D - -L -s https://blackfire.io/api/v1/releases/probe/php/linux/amd64/$version     && tar zxpf /tmp/blackfire-probe.tar.gz -C /tmp     && mv /tmp/blackfire-*.so $(php -r \"echo ini_get('extension_dir');\")/blackfire.so     && printf \"extension=blackfire.so\\nblackfire.agent_socket=tcp://blackfire:8707\\n\" > $PHP_INI_DIR/conf.d/blackfire.ini;     true" shape="box"];
  "sha256:a77d5da05d47866d40b7dae0e930cd257483fa016d0e9a0b1360ee09ae2a0859" [label="copy{src=/.docker/php/etc/custom.template, dest=/usr/local/etc/php/conf.d/},copy{src=/.docker/php/etc/xdebug.template, dest=/usr/local/etc/php/conf.d/}" shape="note"];
  "sha256:1e5384545150e85b146062245b3c89867ecca8d1332b5eee5ac8538c27257179" [label="copy{src=/.docker/php/etc/msmtprc.template, dest=/etc/msmtprc.template}" shape="note"];
  "sha256:ed557984e6c4e8e5f4d5a2b2dfb8cbbe238108ccf9c1b719d692ffdc226a1e50" [label="copy{src=/.docker/php/bin/docker-configure, dest=/usr/local/bin/},copy{src=/.docker/php/bin/magento-install, dest=/usr/local/bin/},copy{src=/.docker/php/bin/magento-configure, dest=/usr/local/bin/}" shape="note"];
  "sha256:4014f8ed8308c70661db2b1db96cc41971a5b790de780ea8c7e37389f0ddabd5" [label="/bin/sh -c chmod +x /usr/local/bin/docker-configure /usr/local/bin/magento-install /usr/local/bin/magento-configure" shape="box"];
  "sha256:2b305f578fcca0dafda049e7182ae7cc927a0bbbb20e299fa59ff7c0a0a18094" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:4346aa7b1a92ec00779cf5a1cc8504c4540044e1db222b60ad6836c572778351" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:5a8d52b087b939fab3062d0b276c71b84827b28d138b636464866dc536ad58b1" [label="/bin/sh -c [ ! -d pub ] && mkdir pub" shape="box"];
  "sha256:24c08d4ac5d49d3f0271bd2f69bc0e4e44c250b479552f74226d318bb61aa1e7" [label="/bin/sh -c [ ! -d var ] && mkdir var" shape="box"];
  "sha256:34d31c923be3d1643618769071d9acd5a8c0bd6a69fe58112919d851b7f4a1ad" [label="/bin/sh -c [ ! -d app/etc ] && mkdir -p app/etc" shape="box"];
  "sha256:9850a8f1b57ead364643a3134ed5ec18d55f1bad74e565f18f6b0b72551b7a49" [label="copy{src=/composer.json, dest=/var/www/},copy{src=/composer.lock, dest=/var/www/},copy{src=/auth.json, dest=/var/www/}" shape="note"];
  "sha256:9cb88e538c36f32b45639a630984a283b652959aa31ca4c84a0a456efe6809bf" [label="copy{src=/.docker/composer-cache, dest=/var/www/.docker/composer-cache}" shape="note"];
  "sha256:5ab1f7b68ff4d7054771f1263bc40b2fbcfad4617f6863244966258c11a0c3f5" [label="/bin/sh -c chsh -s /bin/bash www-data     && chown -R www-data:www-data ./" shape="box"];
  "sha256:4414a6ac1c369cd8c051cc83487348f4dfb25858ba7d506cbfbc64dd225b3e96" [label="/bin/sh -c [ \"$BUILD_ENV\" = \"$PROD_ENV\" ]     && su - www-data -c \"COMPOSER_CACHE_DIR=.docker/composer-cache composer install --no-dev --no-interaction --prefer-dist -o\"     || su - www-data -c \"COMPOSER_CACHE_DIR=.docker/composer-cache composer install --no-interaction --prefer-dist -o\"" shape="box"];
  "sha256:fb7233c16747852af0fa18e3757d9dcd5893b3857599b4331aaa9ba16df00682" [label="copy{src=/app, dest=/var/www/app}" shape="note"];
  "sha256:f003e9c35941f1b9aa9526c439370302d22a0f1724582eaed2f8f0f879bfbdef" [label="copy{src=/.data-migration, dest=/var/www/.data-migration}" shape="note"];
  "sha256:91f0925f0df1efd2d5d58f68d97e0252e5fbba36b72db3a6d86cfbb933e0e03a" [label="/bin/sh -c rm -rf     html     dev     phpserver     LICENSE*.txt     COPYING.txt     .user.ini     .travis.yml     .php_cs     .htaccess*     *.sample     .phpstorm.meta.php     *.md" shape="box"];
  "sha256:f1cbeee776c7165eeeaf7645fb4ad64ff32d4a078b962cf5ca0a4dc628a5dce2" [label="/bin/sh -c find . -user root | xargs chown www-data:www-data     && chmod +x bin/magento" shape="box"];
  "sha256:129b4950bc011ace85b0cfac8bc958558858c4079fb8a97742a6bf12b5a0e727" [label="sha256:129b4950bc011ace85b0cfac8bc958558858c4079fb8a97742a6bf12b5a0e727" shape="plaintext"];
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" -> "sha256:c746b9541dec61a7f96f858d5073c58e780cd9970e90d3d6a1905e47038ad01d" [label=""];
  "sha256:c746b9541dec61a7f96f858d5073c58e780cd9970e90d3d6a1905e47038ad01d" -> "sha256:dd70abf72685ce01fa3a4f25f858b08098f18a7653de63912f737b32fae76f90" [label=""];
  "sha256:dd70abf72685ce01fa3a4f25f858b08098f18a7653de63912f737b32fae76f90" -> "sha256:5714c2305e16e285c34a6c62ddb53c8cc43e1a900d40f14fb2dc90c09d2daee7" [label=""];
  "sha256:5714c2305e16e285c34a6c62ddb53c8cc43e1a900d40f14fb2dc90c09d2daee7" -> "sha256:930e01f4d52ffea3b951f50e005c92a778d1cc8ce531a1c0c1ad359d42c2aed3" [label=""];
  "sha256:930e01f4d52ffea3b951f50e005c92a778d1cc8ce531a1c0c1ad359d42c2aed3" -> "sha256:ab15ac2eafe8b4ce7051c66e1b85d96383c025f4ea13d5e9a3a4b347e2ce0b42" [label=""];
  "sha256:ab15ac2eafe8b4ce7051c66e1b85d96383c025f4ea13d5e9a3a4b347e2ce0b42" -> "sha256:a77d5da05d47866d40b7dae0e930cd257483fa016d0e9a0b1360ee09ae2a0859" [label=""];
  "sha256:f163ad0bbe5f411386b7e1af252df8e940887f829c8cf5524958952d03561d49" -> "sha256:a77d5da05d47866d40b7dae0e930cd257483fa016d0e9a0b1360ee09ae2a0859" [label=""];
  "sha256:a77d5da05d47866d40b7dae0e930cd257483fa016d0e9a0b1360ee09ae2a0859" -> "sha256:1e5384545150e85b146062245b3c89867ecca8d1332b5eee5ac8538c27257179" [label=""];
  "sha256:f163ad0bbe5f411386b7e1af252df8e940887f829c8cf5524958952d03561d49" -> "sha256:1e5384545150e85b146062245b3c89867ecca8d1332b5eee5ac8538c27257179" [label=""];
  "sha256:1e5384545150e85b146062245b3c89867ecca8d1332b5eee5ac8538c27257179" -> "sha256:ed557984e6c4e8e5f4d5a2b2dfb8cbbe238108ccf9c1b719d692ffdc226a1e50" [label=""];
  "sha256:f163ad0bbe5f411386b7e1af252df8e940887f829c8cf5524958952d03561d49" -> "sha256:ed557984e6c4e8e5f4d5a2b2dfb8cbbe238108ccf9c1b719d692ffdc226a1e50" [label=""];
  "sha256:ed557984e6c4e8e5f4d5a2b2dfb8cbbe238108ccf9c1b719d692ffdc226a1e50" -> "sha256:4014f8ed8308c70661db2b1db96cc41971a5b790de780ea8c7e37389f0ddabd5" [label=""];
  "sha256:4014f8ed8308c70661db2b1db96cc41971a5b790de780ea8c7e37389f0ddabd5" -> "sha256:2b305f578fcca0dafda049e7182ae7cc927a0bbbb20e299fa59ff7c0a0a18094" [label=""];
  "sha256:2b305f578fcca0dafda049e7182ae7cc927a0bbbb20e299fa59ff7c0a0a18094" -> "sha256:4346aa7b1a92ec00779cf5a1cc8504c4540044e1db222b60ad6836c572778351" [label=""];
  "sha256:4346aa7b1a92ec00779cf5a1cc8504c4540044e1db222b60ad6836c572778351" -> "sha256:5a8d52b087b939fab3062d0b276c71b84827b28d138b636464866dc536ad58b1" [label=""];
  "sha256:5a8d52b087b939fab3062d0b276c71b84827b28d138b636464866dc536ad58b1" -> "sha256:24c08d4ac5d49d3f0271bd2f69bc0e4e44c250b479552f74226d318bb61aa1e7" [label=""];
  "sha256:24c08d4ac5d49d3f0271bd2f69bc0e4e44c250b479552f74226d318bb61aa1e7" -> "sha256:34d31c923be3d1643618769071d9acd5a8c0bd6a69fe58112919d851b7f4a1ad" [label=""];
  "sha256:34d31c923be3d1643618769071d9acd5a8c0bd6a69fe58112919d851b7f4a1ad" -> "sha256:9850a8f1b57ead364643a3134ed5ec18d55f1bad74e565f18f6b0b72551b7a49" [label=""];
  "sha256:f163ad0bbe5f411386b7e1af252df8e940887f829c8cf5524958952d03561d49" -> "sha256:9850a8f1b57ead364643a3134ed5ec18d55f1bad74e565f18f6b0b72551b7a49" [label=""];
  "sha256:9850a8f1b57ead364643a3134ed5ec18d55f1bad74e565f18f6b0b72551b7a49" -> "sha256:9cb88e538c36f32b45639a630984a283b652959aa31ca4c84a0a456efe6809bf" [label=""];
  "sha256:f163ad0bbe5f411386b7e1af252df8e940887f829c8cf5524958952d03561d49" -> "sha256:9cb88e538c36f32b45639a630984a283b652959aa31ca4c84a0a456efe6809bf" [label=""];
  "sha256:9cb88e538c36f32b45639a630984a283b652959aa31ca4c84a0a456efe6809bf" -> "sha256:5ab1f7b68ff4d7054771f1263bc40b2fbcfad4617f6863244966258c11a0c3f5" [label=""];
  "sha256:5ab1f7b68ff4d7054771f1263bc40b2fbcfad4617f6863244966258c11a0c3f5" -> "sha256:4414a6ac1c369cd8c051cc83487348f4dfb25858ba7d506cbfbc64dd225b3e96" [label=""];
  "sha256:4414a6ac1c369cd8c051cc83487348f4dfb25858ba7d506cbfbc64dd225b3e96" -> "sha256:fb7233c16747852af0fa18e3757d9dcd5893b3857599b4331aaa9ba16df00682" [label=""];
  "sha256:f163ad0bbe5f411386b7e1af252df8e940887f829c8cf5524958952d03561d49" -> "sha256:fb7233c16747852af0fa18e3757d9dcd5893b3857599b4331aaa9ba16df00682" [label=""];
  "sha256:fb7233c16747852af0fa18e3757d9dcd5893b3857599b4331aaa9ba16df00682" -> "sha256:f003e9c35941f1b9aa9526c439370302d22a0f1724582eaed2f8f0f879bfbdef" [label=""];
  "sha256:f163ad0bbe5f411386b7e1af252df8e940887f829c8cf5524958952d03561d49" -> "sha256:f003e9c35941f1b9aa9526c439370302d22a0f1724582eaed2f8f0f879bfbdef" [label=""];
  "sha256:f003e9c35941f1b9aa9526c439370302d22a0f1724582eaed2f8f0f879bfbdef" -> "sha256:91f0925f0df1efd2d5d58f68d97e0252e5fbba36b72db3a6d86cfbb933e0e03a" [label=""];
  "sha256:91f0925f0df1efd2d5d58f68d97e0252e5fbba36b72db3a6d86cfbb933e0e03a" -> "sha256:f1cbeee776c7165eeeaf7645fb4ad64ff32d4a078b962cf5ca0a4dc628a5dce2" [label=""];
  "sha256:f1cbeee776c7165eeeaf7645fb4ad64ff32d4a078b962cf5ca0a4dc628a5dce2" -> "sha256:129b4950bc011ace85b0cfac8bc958558858c4079fb8a97742a6bf12b5a0e727" [label=""];
}
