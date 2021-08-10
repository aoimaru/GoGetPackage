[app/sources/265741220.Dockerfile]
digraph {
  "sha256:2d6ab34f28aaa27d9c0257bd4f6d532a532d83862046fd202222e91f6882524e" [label="docker-image://docker.io/library/php:7.1-fpm-alpine" shape="ellipse"];
  "sha256:5640dacef1c4075a61eac822a7441e6b8827bf52df743193dd42f2fcf3fee055" [label="/bin/sh -c apk add --no-cache --virtual .persistent-deps \t\tgit \t\ticu-libs \t\tmake \t\tzlib" shape="box"];
  "sha256:c9b733355e0283266faa2e80c3f0a59c53e3a53d5c1755358d0dd18227f029b8" [label="/bin/sh -c set -xe \t&& apk add --no-cache --virtual .build-deps \t\t$PHPIZE_DEPS \t\ticu-dev \t\tzlib-dev \t&& docker-php-ext-install \t\tintl \t\tzip \t&& pecl install \t\tapcu-${APCU_VERSION} \t&& docker-php-ext-enable --ini-name 20-apcu.ini apcu \t&& docker-php-ext-enable --ini-name 05-opcache.ini opcache \t&& apk del .build-deps" shape="box"];
  "sha256:2a57f3fdd1b61de64a074111cfd9e9d8b0803d2342e3c98a5d2299dc2bed5780" [label="local://context" shape="ellipse"];
  "sha256:bb310796a358a9b6f52f4b2a72985014e6eb747fdd347b4992fccb58ed1355ca" [label="copy{src=/docker/app/php.ini, dest=/usr/local/etc/php/php.ini}" shape="note"];
  "sha256:f11c3d96e7baae5e186b68f515fd7abc84eeecad60640a3241ed20fd0d481cf5" [label="copy{src=/docker/app/install-composer.sh, dest=/usr/local/bin/docker-app-install-composer}" shape="note"];
  "sha256:87938033fe8ade0b5db44ca67da809c83c76c25df2bb2299779e801e6d53335c" [label="/bin/sh -c chmod +x /usr/local/bin/docker-app-install-composer" shape="box"];
  "sha256:0201078eafc48b8dcbe02c21fde5617baa7fa5543821ac5b5cdcf9d9595b8fd4" [label="/bin/sh -c set -xe \t&& docker-app-install-composer \t&& mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:436beedaaefd708f190f1262116cb05bfdce1cd683991084c119ce34b0b0e161" [label="/bin/sh -c composer global require \"hirak/prestissimo:^0.3\" --prefer-dist --no-progress --no-suggest --optimize-autoloader --classmap-authoritative \t&& composer clear-cache" shape="box"];
  "sha256:a9d58f9c220b537a032c62195b3541e313bc71762e0f70bbb8aa993f1ee2b1a4" [label="mkdir{path=/srv/app}" shape="note"];
  "sha256:980f0b63b4cff2bce1eed4961e4bdee70ddda3fc21cc9a252df27f36a9e56bfb" [label="copy{src=/, dest=/srv/app/}" shape="note"];
  "sha256:57010cb93c959076988d488100eed31b217698f092e66a30437b63441426e634" [label="/bin/sh -c rm -Rf docker/" shape="box"];
  "sha256:842469f260e4e541fb4677a2d153b5fc1d355c4430f317ad475ee7242f545e7e" [label="/bin/sh -c mkdir -p var/cache var/logs var/sessions     && composer install --prefer-dist --no-dev --no-progress --no-suggest --optimize-autoloader --classmap-authoritative --no-interaction \t&& composer clear-cache \t&& chown -R www-data var" shape="box"];
  "sha256:2ccf618b2f03d900d59d3173c25eed967cb2791d08d2aabfdaedd62ccbeee272" [label="copy{src=/docker/app/docker-entrypoint.sh, dest=/usr/local/bin/docker-app-entrypoint}" shape="note"];
  "sha256:ee2fd7415b0d5a201055d9ef16cab4632ae333f0c0dc2d260677d9a06c0396a8" [label="/bin/sh -c chmod +x /usr/local/bin/docker-app-entrypoint" shape="box"];
  "sha256:2895c6cd82a67c3d7181806504d9174a6cc584c62ae507e5283dcaf4a8216cab" [label="sha256:2895c6cd82a67c3d7181806504d9174a6cc584c62ae507e5283dcaf4a8216cab" shape="plaintext"];
  "sha256:2d6ab34f28aaa27d9c0257bd4f6d532a532d83862046fd202222e91f6882524e" -> "sha256:5640dacef1c4075a61eac822a7441e6b8827bf52df743193dd42f2fcf3fee055" [label=""];
  "sha256:5640dacef1c4075a61eac822a7441e6b8827bf52df743193dd42f2fcf3fee055" -> "sha256:c9b733355e0283266faa2e80c3f0a59c53e3a53d5c1755358d0dd18227f029b8" [label=""];
  "sha256:c9b733355e0283266faa2e80c3f0a59c53e3a53d5c1755358d0dd18227f029b8" -> "sha256:bb310796a358a9b6f52f4b2a72985014e6eb747fdd347b4992fccb58ed1355ca" [label=""];
  "sha256:2a57f3fdd1b61de64a074111cfd9e9d8b0803d2342e3c98a5d2299dc2bed5780" -> "sha256:bb310796a358a9b6f52f4b2a72985014e6eb747fdd347b4992fccb58ed1355ca" [label=""];
  "sha256:bb310796a358a9b6f52f4b2a72985014e6eb747fdd347b4992fccb58ed1355ca" -> "sha256:f11c3d96e7baae5e186b68f515fd7abc84eeecad60640a3241ed20fd0d481cf5" [label=""];
  "sha256:2a57f3fdd1b61de64a074111cfd9e9d8b0803d2342e3c98a5d2299dc2bed5780" -> "sha256:f11c3d96e7baae5e186b68f515fd7abc84eeecad60640a3241ed20fd0d481cf5" [label=""];
  "sha256:f11c3d96e7baae5e186b68f515fd7abc84eeecad60640a3241ed20fd0d481cf5" -> "sha256:87938033fe8ade0b5db44ca67da809c83c76c25df2bb2299779e801e6d53335c" [label=""];
  "sha256:87938033fe8ade0b5db44ca67da809c83c76c25df2bb2299779e801e6d53335c" -> "sha256:0201078eafc48b8dcbe02c21fde5617baa7fa5543821ac5b5cdcf9d9595b8fd4" [label=""];
  "sha256:0201078eafc48b8dcbe02c21fde5617baa7fa5543821ac5b5cdcf9d9595b8fd4" -> "sha256:436beedaaefd708f190f1262116cb05bfdce1cd683991084c119ce34b0b0e161" [label=""];
  "sha256:436beedaaefd708f190f1262116cb05bfdce1cd683991084c119ce34b0b0e161" -> "sha256:a9d58f9c220b537a032c62195b3541e313bc71762e0f70bbb8aa993f1ee2b1a4" [label=""];
  "sha256:a9d58f9c220b537a032c62195b3541e313bc71762e0f70bbb8aa993f1ee2b1a4" -> "sha256:980f0b63b4cff2bce1eed4961e4bdee70ddda3fc21cc9a252df27f36a9e56bfb" [label=""];
  "sha256:2a57f3fdd1b61de64a074111cfd9e9d8b0803d2342e3c98a5d2299dc2bed5780" -> "sha256:980f0b63b4cff2bce1eed4961e4bdee70ddda3fc21cc9a252df27f36a9e56bfb" [label=""];
  "sha256:980f0b63b4cff2bce1eed4961e4bdee70ddda3fc21cc9a252df27f36a9e56bfb" -> "sha256:57010cb93c959076988d488100eed31b217698f092e66a30437b63441426e634" [label=""];
  "sha256:57010cb93c959076988d488100eed31b217698f092e66a30437b63441426e634" -> "sha256:842469f260e4e541fb4677a2d153b5fc1d355c4430f317ad475ee7242f545e7e" [label=""];
  "sha256:842469f260e4e541fb4677a2d153b5fc1d355c4430f317ad475ee7242f545e7e" -> "sha256:2ccf618b2f03d900d59d3173c25eed967cb2791d08d2aabfdaedd62ccbeee272" [label=""];
  "sha256:2a57f3fdd1b61de64a074111cfd9e9d8b0803d2342e3c98a5d2299dc2bed5780" -> "sha256:2ccf618b2f03d900d59d3173c25eed967cb2791d08d2aabfdaedd62ccbeee272" [label=""];
  "sha256:2ccf618b2f03d900d59d3173c25eed967cb2791d08d2aabfdaedd62ccbeee272" -> "sha256:ee2fd7415b0d5a201055d9ef16cab4632ae333f0c0dc2d260677d9a06c0396a8" [label=""];
  "sha256:ee2fd7415b0d5a201055d9ef16cab4632ae333f0c0dc2d260677d9a06c0396a8" -> "sha256:2895c6cd82a67c3d7181806504d9174a6cc584c62ae507e5283dcaf4a8216cab" [label=""];
}

