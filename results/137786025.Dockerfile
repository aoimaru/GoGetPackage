[app/sources/137786025.Dockerfile]
digraph {
  "sha256:c1aaee8a38ba6dec64d5b8c919c7cf6bddc04f0bd18763678342d33a25c06844" [label="docker-image://docker.io/library/php:7.2" shape="ellipse"];
  "sha256:be66782999dc4f7c8d91fb37e2cb5c931ea5171bb64111f5350ad13b5fdb73f0" [label="/bin/sh -c apt-get update && apt-get -y install git-core unzip && pecl install xdebug && echo \"zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)\" > /usr/local/etc/php/conf.d/xdebug.ini && curl --silent --show-error https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:507a81a8da89731c727fdbc3643117447ebb6de532363d830a27d6041f5469f1" [label="/bin/sh -c docker-php-ext-install -j$(nproc) mysqli pdo_mysql" shape="box"];
  "sha256:cf70de5d080c6534303316e7b2ef03848d4369d25785f329c6e26f91a2e303f6" [label="/bin/sh -c apt-get -y install libpq-dev && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql && docker-php-ext-install -j$(nproc) pgsql pdo_pgsql" shape="box"];
  "sha256:ee9db21dc60256612c84727e335b9e7904bbfeaf0d433671b7326fb59e96e642" [label="mkdir{path=/app}" shape="note"];
  "sha256:049dd528ba6644ae09e1fc737bfbdfc9d3827cc3f39244aa5219e1a8e56fb1d4" [label="sha256:049dd528ba6644ae09e1fc737bfbdfc9d3827cc3f39244aa5219e1a8e56fb1d4" shape="plaintext"];
  "sha256:c1aaee8a38ba6dec64d5b8c919c7cf6bddc04f0bd18763678342d33a25c06844" -> "sha256:be66782999dc4f7c8d91fb37e2cb5c931ea5171bb64111f5350ad13b5fdb73f0" [label=""];
  "sha256:be66782999dc4f7c8d91fb37e2cb5c931ea5171bb64111f5350ad13b5fdb73f0" -> "sha256:507a81a8da89731c727fdbc3643117447ebb6de532363d830a27d6041f5469f1" [label=""];
  "sha256:507a81a8da89731c727fdbc3643117447ebb6de532363d830a27d6041f5469f1" -> "sha256:cf70de5d080c6534303316e7b2ef03848d4369d25785f329c6e26f91a2e303f6" [label=""];
  "sha256:cf70de5d080c6534303316e7b2ef03848d4369d25785f329c6e26f91a2e303f6" -> "sha256:ee9db21dc60256612c84727e335b9e7904bbfeaf0d433671b7326fb59e96e642" [label=""];
  "sha256:ee9db21dc60256612c84727e335b9e7904bbfeaf0d433671b7326fb59e96e642" -> "sha256:049dd528ba6644ae09e1fc737bfbdfc9d3827cc3f39244aa5219e1a8e56fb1d4" [label=""];
}

