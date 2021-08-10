[app/sources/334938962.Dockerfile]
digraph {
  "sha256:606c3656c9398a6f39d021bfa5f5ec465298e31cee683cb05239384966161d51" [label="docker-image://docker.io/appsvcorg/nginx-fpm:0.4" shape="ellipse"];
  "sha256:4f468b92f6244b8c07bcb5a8b99ed06f90e77e2153ecb87a31bf46f7f99445ce" [label="/bin/sh -c mkdir -p $DOCKER_BUILD_HOME" shape="box"];
  "sha256:31735bd0a4fc758f96ff8d8f2ec16de1c22f34a17b850c1ca2844bf317b4cc90" [label="mkdir{path=/dockerbuild}" shape="note"];
  "sha256:95106fc887f386db99e92462ea1f424445512b4bbcb0f669e4823bc65fdcc267" [label="/bin/sh -c set -ex \t&& apk add --no-cache --virtual .build-deps \t\tcoreutils \t\tfreetype-dev \t\tlibjpeg-turbo-dev \t\tlibpng-dev \t\tpostgresql-dev \t&& docker-php-ext-configure gd \t\t--with-freetype-dir=/usr/include/ \t\t--with-jpeg-dir=/usr/include/ \t\t--with-png-dir=/usr/include/ \t&& docker-php-ext-install -j \"$(nproc)\" \t\tgd \t\topcache \t\tpdo_mysql \t\tpdo_pgsql \t\tzip \t&& runDeps=\"$( \t\tscanelf --needed --nobanner --format '%n#p' --recursive /usr/local \t\t\t| tr ',' '\\n' \t\t\t| sort -u \t\t\t| awk 'system(\"[ -e /usr/local/lib/\" $1 \" ]\") == 0 { next } { print \"so:\" $1 }' \t)\" \t&& apk add --virtual .drupal-phpexts-rundeps $runDeps \t&& apk del .build-deps" shape="box"];
  "sha256:191c10fa8101bfc4c22a1754f5cd84feaf9fb2ae8727e77b5a7af7ec31b1a759" [label="/bin/sh -c { \t\techo 'opcache.memory_consumption=128'; \t\techo 'opcache.interned_strings_buffer=8'; \t\techo 'opcache.max_accelerated_files=4000'; \t\techo 'opcache.revalidate_freq=60'; \t\techo 'opcache.fast_shutdown=1'; \t\techo 'opcache.enable_cli=1'; \t} > /usr/local/etc/php/conf.d/opcache-recommended.ini" shape="box"];
  "sha256:a282ff39ed4dbeb37d8489562bec33712edd0ddd1194bdbeb5ea1fa16ea53411" [label="/bin/sh -c set -ex     && php -r \"readfile('http://files.drush.org/drush.phar');\" > /usr/local/bin/drush     && chmod +x /usr/local/bin/drush \t&& php -r \"readfile('https://getcomposer.org/installer');\" > /tmp/composer-setup.php     && php -r \"if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) === getenv('COMPOSER_SETUP_SHA')) { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('/tmp/composer-setup.php'); echo PHP_EOL; exit(1); } echo PHP_EOL;\"    \t&& mkdir -p /composer/bin     && php /tmp/composer-setup.php --install-dir=/usr/local/bin/ --filename=composer --version=${COMPOSER_VERSION}     && rm /tmp/composer-setup.php \t&& apk update \t&& apk upgrade \t&& rm -rf /var/cache/apk/*" shape="box"];
  "sha256:7062fae28f45aba07c0cc680e563ce984a049d22e16c2363442e42d27489236f" [label="mkdir{path=/home/site/wwwroot}" shape="note"];
  "sha256:0179e00ccde7ba1352208ee049cf4c50e8172e1cdc07e84e0d0300b55bf0a22f" [label="/bin/sh -c rm -rf $DOCKER_BUILD_HOME" shape="box"];
  "sha256:beb0886c0e11b0f4192b6beaf68f341e83fd25c111abf49a1f4f0c62101a99b4" [label="local://context" shape="ellipse"];
  "sha256:1ec98f63b8bb5a3f6c371020fc94e279d292e5a4b12183f643a1c0d16310a9af" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:55bbe4555a5c777a14af4c9a0ce96c6b2bf700e4953cdbf2db316aefdeb3ab04" [label="copy{src=/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:043167348deef753fd62c7558dec4523992d53a404a6a4af88bb07d3dd2ffaed" [label="copy{src=/phpmyadmin-default.conf, dest=/usr/src/phpmyadmin/phpmyadmin-default.conf}" shape="note"];
  "sha256:6773d3f916efdc7ee0ddb3624c38400a35f4cd51053960a68f2e79dbe397c4bc" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:339848c29fb5e80c484738c3d023c1a40b2208ee8c12653bce42aa61f0af8b69" [label="/bin/sh -c chmod +x /usr/local/bin/entrypoint.sh" shape="box"];
  "sha256:3814264179860c80f274411e98c3aaf892b7da75e00ebf2ea8b298637976571f" [label="sha256:3814264179860c80f274411e98c3aaf892b7da75e00ebf2ea8b298637976571f" shape="plaintext"];
  "sha256:606c3656c9398a6f39d021bfa5f5ec465298e31cee683cb05239384966161d51" -> "sha256:4f468b92f6244b8c07bcb5a8b99ed06f90e77e2153ecb87a31bf46f7f99445ce" [label=""];
  "sha256:4f468b92f6244b8c07bcb5a8b99ed06f90e77e2153ecb87a31bf46f7f99445ce" -> "sha256:31735bd0a4fc758f96ff8d8f2ec16de1c22f34a17b850c1ca2844bf317b4cc90" [label=""];
  "sha256:31735bd0a4fc758f96ff8d8f2ec16de1c22f34a17b850c1ca2844bf317b4cc90" -> "sha256:95106fc887f386db99e92462ea1f424445512b4bbcb0f669e4823bc65fdcc267" [label=""];
  "sha256:95106fc887f386db99e92462ea1f424445512b4bbcb0f669e4823bc65fdcc267" -> "sha256:191c10fa8101bfc4c22a1754f5cd84feaf9fb2ae8727e77b5a7af7ec31b1a759" [label=""];
  "sha256:191c10fa8101bfc4c22a1754f5cd84feaf9fb2ae8727e77b5a7af7ec31b1a759" -> "sha256:a282ff39ed4dbeb37d8489562bec33712edd0ddd1194bdbeb5ea1fa16ea53411" [label=""];
  "sha256:a282ff39ed4dbeb37d8489562bec33712edd0ddd1194bdbeb5ea1fa16ea53411" -> "sha256:7062fae28f45aba07c0cc680e563ce984a049d22e16c2363442e42d27489236f" [label=""];
  "sha256:7062fae28f45aba07c0cc680e563ce984a049d22e16c2363442e42d27489236f" -> "sha256:0179e00ccde7ba1352208ee049cf4c50e8172e1cdc07e84e0d0300b55bf0a22f" [label=""];
  "sha256:0179e00ccde7ba1352208ee049cf4c50e8172e1cdc07e84e0d0300b55bf0a22f" -> "sha256:1ec98f63b8bb5a3f6c371020fc94e279d292e5a4b12183f643a1c0d16310a9af" [label=""];
  "sha256:beb0886c0e11b0f4192b6beaf68f341e83fd25c111abf49a1f4f0c62101a99b4" -> "sha256:1ec98f63b8bb5a3f6c371020fc94e279d292e5a4b12183f643a1c0d16310a9af" [label=""];
  "sha256:1ec98f63b8bb5a3f6c371020fc94e279d292e5a4b12183f643a1c0d16310a9af" -> "sha256:55bbe4555a5c777a14af4c9a0ce96c6b2bf700e4953cdbf2db316aefdeb3ab04" [label=""];
  "sha256:beb0886c0e11b0f4192b6beaf68f341e83fd25c111abf49a1f4f0c62101a99b4" -> "sha256:55bbe4555a5c777a14af4c9a0ce96c6b2bf700e4953cdbf2db316aefdeb3ab04" [label=""];
  "sha256:55bbe4555a5c777a14af4c9a0ce96c6b2bf700e4953cdbf2db316aefdeb3ab04" -> "sha256:043167348deef753fd62c7558dec4523992d53a404a6a4af88bb07d3dd2ffaed" [label=""];
  "sha256:beb0886c0e11b0f4192b6beaf68f341e83fd25c111abf49a1f4f0c62101a99b4" -> "sha256:043167348deef753fd62c7558dec4523992d53a404a6a4af88bb07d3dd2ffaed" [label=""];
  "sha256:043167348deef753fd62c7558dec4523992d53a404a6a4af88bb07d3dd2ffaed" -> "sha256:6773d3f916efdc7ee0ddb3624c38400a35f4cd51053960a68f2e79dbe397c4bc" [label=""];
  "sha256:beb0886c0e11b0f4192b6beaf68f341e83fd25c111abf49a1f4f0c62101a99b4" -> "sha256:6773d3f916efdc7ee0ddb3624c38400a35f4cd51053960a68f2e79dbe397c4bc" [label=""];
  "sha256:6773d3f916efdc7ee0ddb3624c38400a35f4cd51053960a68f2e79dbe397c4bc" -> "sha256:339848c29fb5e80c484738c3d023c1a40b2208ee8c12653bce42aa61f0af8b69" [label=""];
  "sha256:339848c29fb5e80c484738c3d023c1a40b2208ee8c12653bce42aa61f0af8b69" -> "sha256:3814264179860c80f274411e98c3aaf892b7da75e00ebf2ea8b298637976571f" [label=""];
}

