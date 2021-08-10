[app/sources/396331726.Dockerfile]
digraph {
  "sha256:7d06aff290b75710c30e8aff37c29bdc53784fd17e3a8e4176e32522afe50992" [label="local://context" shape="ellipse"];
  "sha256:e676b4264461f5eb0bbf13cb02121b6ff67c1fc63ba8c5030be1fb8431a61cd5" [label="docker-image://docker.io/arm32v7/php:7.2.8-apache-stretch@sha256:53b90c66d3ec539b2db8f0910777da5ae86b218adc11ab73cf8f2fbc4fa72d3e" shape="ellipse"];
  "sha256:0afb2ed7033c13e7b8d01226c38171260be191c0d7696e39ec139bb717901d58" [label="copy{src=/tmp/qemu-arm-static, dest=/usr/bin/qemu-arm-static}" shape="note"];
  "sha256:55a2b06d6d64eb10802f1229c319bb3090acf81bd0b693d4dc4404784bfeea17" [label="/bin/sh -c apt-get update && apt-get install -y libpng-dev                                             libicu-dev                                             unzip                                             gettext-base                                             libldap2-dev                                             libpq-dev                                             locales                                             libmemcached-dev" shape="box"];
  "sha256:f0bd7569f5b0819a1f70da4c32bfa8624b6205902befd335c2a0a1853a4a5379" [label="mkdir{path=/var/www/firefly-iii}" shape="note"];
  "sha256:c25f5cbe52757fa2b52ab981c102017059ea75f5764336d76365cb7fb93e9b76" [label="copy{src=/, dest=/var/www/firefly-iii}" shape="note"];
  "sha256:a37fa737a083a8c8edbd79e690a874a9bd5c30f547c9e3a33402f4bd42c3a14c" [label="copy{src=/.deploy/docker/cacert.pem, dest=/usr/local/ssl/cert.pem}" shape="note"];
  "sha256:8f73c9b59178bc790f7627dc9ea965b2360fd6f0bc160f71206b6e2e8d513905" [label="copy{src=/.deploy/docker/apache2.conf, dest=/etc/apache2/apache2.conf}" shape="note"];
  "sha256:de3d96f08af6a4adcda8995b8a275e65fe7f2eaa5d928f7f0fd074de7f6bb77a" [label="copy{src=/.deploy/docker/apache-firefly.conf, dest=/etc/apache2/sites-available/000-default.conf}" shape="note"];
  "sha256:32fc94c45353af17c1703c7847c520f46f3dc1e1eda2c3493986844f06cd971e" [label="/bin/sh -c chown -R www-data:www-data /var/www &&     chmod -R 775 $FIREFLY_PATH/storage &&     a2enmod rewrite && a2enmod ssl &&     docker-php-ext-configure ldap --with-libdir=lib/$(gcc -dumpmachine)/ &&     docker-php-ext-install -j$(nproc) zip bcmath ldap gd pdo_pgsql pdo_mysql intl opcache &&     pecl install memcached-3.1.3 &&     docker-php-ext-enable memcached &&     curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer &&     echo \"de_DE.UTF-8 UTF-8\\nen_US.UTF-8 UTF-8\\nes_ES.UTF-8 UTF-8\\nfr_FR.UTF-8 UTF-8\\nid_ID.UTF-8 UTF-8\\nit_IT.UTF-8 UTF-8\\nnl_NL.UTF-8 UTF-8\\npl_PL.UTF-8 UTF-8\\npt_BR.UTF-8 UTF-8\\nru_RU.UTF-8 UTF-8\\ntr_TR.UTF-8 UTF-8\\nzh_TW.UTF-8 UTF-8\\nzh_CN.UTF-8 UTF-8\\n\\n\" > /etc/locale.gen &&     locale-gen &&     composer install --prefer-dist --no-dev --no-scripts --no-suggest" shape="box"];
  "sha256:f9a04ec7f667bb210d4f32a30f336c9769e60855ee70075561031560d4787e8b" [label="sha256:f9a04ec7f667bb210d4f32a30f336c9769e60855ee70075561031560d4787e8b" shape="plaintext"];
  "sha256:e676b4264461f5eb0bbf13cb02121b6ff67c1fc63ba8c5030be1fb8431a61cd5" -> "sha256:0afb2ed7033c13e7b8d01226c38171260be191c0d7696e39ec139bb717901d58" [label=""];
  "sha256:7d06aff290b75710c30e8aff37c29bdc53784fd17e3a8e4176e32522afe50992" -> "sha256:0afb2ed7033c13e7b8d01226c38171260be191c0d7696e39ec139bb717901d58" [label=""];
  "sha256:0afb2ed7033c13e7b8d01226c38171260be191c0d7696e39ec139bb717901d58" -> "sha256:55a2b06d6d64eb10802f1229c319bb3090acf81bd0b693d4dc4404784bfeea17" [label=""];
  "sha256:55a2b06d6d64eb10802f1229c319bb3090acf81bd0b693d4dc4404784bfeea17" -> "sha256:f0bd7569f5b0819a1f70da4c32bfa8624b6205902befd335c2a0a1853a4a5379" [label=""];
  "sha256:f0bd7569f5b0819a1f70da4c32bfa8624b6205902befd335c2a0a1853a4a5379" -> "sha256:c25f5cbe52757fa2b52ab981c102017059ea75f5764336d76365cb7fb93e9b76" [label=""];
  "sha256:7d06aff290b75710c30e8aff37c29bdc53784fd17e3a8e4176e32522afe50992" -> "sha256:c25f5cbe52757fa2b52ab981c102017059ea75f5764336d76365cb7fb93e9b76" [label=""];
  "sha256:c25f5cbe52757fa2b52ab981c102017059ea75f5764336d76365cb7fb93e9b76" -> "sha256:a37fa737a083a8c8edbd79e690a874a9bd5c30f547c9e3a33402f4bd42c3a14c" [label=""];
  "sha256:7d06aff290b75710c30e8aff37c29bdc53784fd17e3a8e4176e32522afe50992" -> "sha256:a37fa737a083a8c8edbd79e690a874a9bd5c30f547c9e3a33402f4bd42c3a14c" [label=""];
  "sha256:a37fa737a083a8c8edbd79e690a874a9bd5c30f547c9e3a33402f4bd42c3a14c" -> "sha256:8f73c9b59178bc790f7627dc9ea965b2360fd6f0bc160f71206b6e2e8d513905" [label=""];
  "sha256:7d06aff290b75710c30e8aff37c29bdc53784fd17e3a8e4176e32522afe50992" -> "sha256:8f73c9b59178bc790f7627dc9ea965b2360fd6f0bc160f71206b6e2e8d513905" [label=""];
  "sha256:8f73c9b59178bc790f7627dc9ea965b2360fd6f0bc160f71206b6e2e8d513905" -> "sha256:de3d96f08af6a4adcda8995b8a275e65fe7f2eaa5d928f7f0fd074de7f6bb77a" [label=""];
  "sha256:7d06aff290b75710c30e8aff37c29bdc53784fd17e3a8e4176e32522afe50992" -> "sha256:de3d96f08af6a4adcda8995b8a275e65fe7f2eaa5d928f7f0fd074de7f6bb77a" [label=""];
  "sha256:de3d96f08af6a4adcda8995b8a275e65fe7f2eaa5d928f7f0fd074de7f6bb77a" -> "sha256:32fc94c45353af17c1703c7847c520f46f3dc1e1eda2c3493986844f06cd971e" [label=""];
  "sha256:32fc94c45353af17c1703c7847c520f46f3dc1e1eda2c3493986844f06cd971e" -> "sha256:f9a04ec7f667bb210d4f32a30f336c9769e60855ee70075561031560d4787e8b" [label=""];
}

