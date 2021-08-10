[app/sources/196231260.Dockerfile]
digraph {
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" [label="docker-image://docker.io/library/php:7.0-fpm" shape="ellipse"];
  "sha256:243a2405d3a4ec74851b8d17cd6745ae96775a3015e6d6c0656ad1f15cc2cd3a" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:6be3d98c90050e9e9ad982aecf43f320ddc80829f04b56ac3e7638ca74a6a5f3" [label="/bin/sh -c usermod -u 1000 www-data" shape="box"];
  "sha256:257f0b70eb2f489a95449f9fb7ad100cbbe85b0ad1ad1ffc39d4201041ea0c6f" [label="/bin/sh -c docker-php-source extract     && apt-get -qq update && apt-get install -y                               git zlib1g-dev                               libfreetype6-dev                               libjpeg62-turbo-dev                               libmcrypt-dev                               libpng-dev \t&& docker-php-ext-install pdo pdo_mysql zip \t&& docker-php-ext-install -j$(nproc) iconv mcrypt \t&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \t&& docker-php-ext-install -j$(nproc) gd \t&& apt-get autoclean && apt-get autoremove && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \t&& docker-php-source delete" shape="box"];
  "sha256:e6d3609a8c87dffc3ba85e5283c7c9c47cc6e08e3dc6600157f10b33ce0398aa" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:f6867f5a18dc4e50b705902ccf67747ed5b4244bd7ade778aa7b6d67ec8600f9" [label="/bin/sh -c pecl install -o -f xdebug-2.4.0" shape="box"];
  "sha256:d0f5b1aa0d5f37cf200682e63306314617189569bb5947c55fb399762d5f9bcd" [label="local://context" shape="ellipse"];
  "sha256:0e4e27ec9992a59a574c6731d7cbf90b5855085f1b0a159558d1bf8e2390c6e9" [label="copy{src=/.docker/flarepoint-php/php-xdebug.ini, dest=/usr/local/etc/php/conf.d/php-xdebug.ini}" shape="note"];
  "sha256:ac9ed71b3fcd0bb38a140be4155c05ca06d31494f980767284fdd7e768ed3a37" [label="/bin/sh -c docker-php-ext-enable xdebug" shape="box"];
  "sha256:e6ae9879119855c572aec17c2e1d08dcf8bdce0fcf9eac4629e1c88fbe47cd34" [label="copy{src=/, dest=/var/www/html}" shape="note"];
  "sha256:9170bc23abee259b57f77ed01a93ec9d39cc4fbdacdc604560de261c0af51857" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:93c9e09d8b8d27e0c8bb1b29ae3688bc0cac34bff91abb85f8a7a3c493a00a68" [label="/bin/sh -c chmod 0777 ./bootstrap/cache -R" shape="box"];
  "sha256:c8918705f6e20589bd66fb9073edae54755ce363e6168e91658443234084febb" [label="/bin/sh -c chmod 0777 ./storage/* -R" shape="box"];
  "sha256:22912e5ab23ef79fdde85fc37768e7b2d761ad51b79e954c72fac715b13e640d" [label="sha256:22912e5ab23ef79fdde85fc37768e7b2d761ad51b79e954c72fac715b13e640d" shape="plaintext"];
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" -> "sha256:243a2405d3a4ec74851b8d17cd6745ae96775a3015e6d6c0656ad1f15cc2cd3a" [label=""];
  "sha256:243a2405d3a4ec74851b8d17cd6745ae96775a3015e6d6c0656ad1f15cc2cd3a" -> "sha256:6be3d98c90050e9e9ad982aecf43f320ddc80829f04b56ac3e7638ca74a6a5f3" [label=""];
  "sha256:6be3d98c90050e9e9ad982aecf43f320ddc80829f04b56ac3e7638ca74a6a5f3" -> "sha256:257f0b70eb2f489a95449f9fb7ad100cbbe85b0ad1ad1ffc39d4201041ea0c6f" [label=""];
  "sha256:257f0b70eb2f489a95449f9fb7ad100cbbe85b0ad1ad1ffc39d4201041ea0c6f" -> "sha256:e6d3609a8c87dffc3ba85e5283c7c9c47cc6e08e3dc6600157f10b33ce0398aa" [label=""];
  "sha256:e6d3609a8c87dffc3ba85e5283c7c9c47cc6e08e3dc6600157f10b33ce0398aa" -> "sha256:f6867f5a18dc4e50b705902ccf67747ed5b4244bd7ade778aa7b6d67ec8600f9" [label=""];
  "sha256:f6867f5a18dc4e50b705902ccf67747ed5b4244bd7ade778aa7b6d67ec8600f9" -> "sha256:0e4e27ec9992a59a574c6731d7cbf90b5855085f1b0a159558d1bf8e2390c6e9" [label=""];
  "sha256:d0f5b1aa0d5f37cf200682e63306314617189569bb5947c55fb399762d5f9bcd" -> "sha256:0e4e27ec9992a59a574c6731d7cbf90b5855085f1b0a159558d1bf8e2390c6e9" [label=""];
  "sha256:0e4e27ec9992a59a574c6731d7cbf90b5855085f1b0a159558d1bf8e2390c6e9" -> "sha256:ac9ed71b3fcd0bb38a140be4155c05ca06d31494f980767284fdd7e768ed3a37" [label=""];
  "sha256:ac9ed71b3fcd0bb38a140be4155c05ca06d31494f980767284fdd7e768ed3a37" -> "sha256:e6ae9879119855c572aec17c2e1d08dcf8bdce0fcf9eac4629e1c88fbe47cd34" [label=""];
  "sha256:d0f5b1aa0d5f37cf200682e63306314617189569bb5947c55fb399762d5f9bcd" -> "sha256:e6ae9879119855c572aec17c2e1d08dcf8bdce0fcf9eac4629e1c88fbe47cd34" [label=""];
  "sha256:e6ae9879119855c572aec17c2e1d08dcf8bdce0fcf9eac4629e1c88fbe47cd34" -> "sha256:9170bc23abee259b57f77ed01a93ec9d39cc4fbdacdc604560de261c0af51857" [label=""];
  "sha256:9170bc23abee259b57f77ed01a93ec9d39cc4fbdacdc604560de261c0af51857" -> "sha256:93c9e09d8b8d27e0c8bb1b29ae3688bc0cac34bff91abb85f8a7a3c493a00a68" [label=""];
  "sha256:93c9e09d8b8d27e0c8bb1b29ae3688bc0cac34bff91abb85f8a7a3c493a00a68" -> "sha256:c8918705f6e20589bd66fb9073edae54755ce363e6168e91658443234084febb" [label=""];
  "sha256:c8918705f6e20589bd66fb9073edae54755ce363e6168e91658443234084febb" -> "sha256:22912e5ab23ef79fdde85fc37768e7b2d761ad51b79e954c72fac715b13e640d" [label=""];
}

