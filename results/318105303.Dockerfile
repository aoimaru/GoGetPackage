[app/sources/318105303.Dockerfile]
digraph {
  "sha256:b387ca9bb6e7d72a8831684d180d727a824503900ed9835ccc93c6149ca93852" [label="docker-image://docker.io/library/php:7.3-apache" shape="ellipse"];
  "sha256:a269fa26221c7d8eea455c73f16ccc2a0787820d68073299a04917dc28b964ed" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:969da06b5a955e4d9fc7fd3a09c5a96f87d3e23e74c71a0d4057923da6e7da89" [label="/bin/sh -c apt-get update   && apt-get install -y zlib1g-dev libicu-dev wget gnupg g++ git openssh-client   && apt-get install -y libxml2-dev libfreetype6-dev libpng-dev libjpeg-dev libzip-dev   && apt-get install -y libmagickwand-dev   && docker-php-ext-configure intl   && docker-php-ext-install intl pdo_mysql zip" shape="box"];
  "sha256:ce22d2e5b3dc0137ee9ffa1b0132e6c2da5649b990113f8d78e1642933850262" [label="/bin/sh -c rm -rf /var/cache/apk/*" shape="box"];
  "sha256:d471814b054e4e98856d423b0e733c782097277338b00f2ff8dfc7fa98fa2005" [label="/bin/sh -c docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include" shape="box"];
  "sha256:f3cafb050874bc53ab976e0488f6507baf83b0501d03e87ec794170417a8ba70" [label="/bin/sh -c docker-php-ext-install bcmath intl zip pcntl soap gd" shape="box"];
  "sha256:70d3c37dff10431bfc3a23a890df984264b2da0418d61ddb4bfdbe424ee0ab85" [label="/bin/sh -c pecl install imagick-3.4.3" shape="box"];
  "sha256:02aa0f80dac3e504a210f8047ca091e2d574bd9cf7d1a03f677e35a88fed9f0c" [label="/bin/sh -c echo \"extension=imagick.so\" >> /usr/local/etc/php/conf.d/imagick.ini" shape="box"];
  "sha256:fa0e097bd61e582909190cefb01498f7f0127769f6d97c64ece7635b371aed44" [label="/bin/sh -c pecl install xdebug-2.7.0RC2 && docker-php-ext-enable xdebug" shape="box"];
  "sha256:7d592b8677a2f73adb3e3971a2ee5df7380452f09c5fa0cb856d11b585f52568" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:43caa35e749de5dedde01d91fc035a1e2f547f20d5a4cc4516aa3e7a2e3b5fb0" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -   && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -   && echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list" shape="box"];
  "sha256:8383fbc46e8420e050c1544d2464a92d4ee2e6814096fb608236a73a5a62730e" [label="/bin/sh -c apt-get update   && apt-get install -y nodejs   && apt-get install -y yarn" shape="box"];
  "sha256:6b099fbd398c37eba12490ceb4f4714ebb43876d81f59ac5cfb68c3574471165" [label="sha256:6b099fbd398c37eba12490ceb4f4714ebb43876d81f59ac5cfb68c3574471165" shape="plaintext"];
  "sha256:b387ca9bb6e7d72a8831684d180d727a824503900ed9835ccc93c6149ca93852" -> "sha256:a269fa26221c7d8eea455c73f16ccc2a0787820d68073299a04917dc28b964ed" [label=""];
  "sha256:a269fa26221c7d8eea455c73f16ccc2a0787820d68073299a04917dc28b964ed" -> "sha256:969da06b5a955e4d9fc7fd3a09c5a96f87d3e23e74c71a0d4057923da6e7da89" [label=""];
  "sha256:969da06b5a955e4d9fc7fd3a09c5a96f87d3e23e74c71a0d4057923da6e7da89" -> "sha256:ce22d2e5b3dc0137ee9ffa1b0132e6c2da5649b990113f8d78e1642933850262" [label=""];
  "sha256:ce22d2e5b3dc0137ee9ffa1b0132e6c2da5649b990113f8d78e1642933850262" -> "sha256:d471814b054e4e98856d423b0e733c782097277338b00f2ff8dfc7fa98fa2005" [label=""];
  "sha256:d471814b054e4e98856d423b0e733c782097277338b00f2ff8dfc7fa98fa2005" -> "sha256:f3cafb050874bc53ab976e0488f6507baf83b0501d03e87ec794170417a8ba70" [label=""];
  "sha256:f3cafb050874bc53ab976e0488f6507baf83b0501d03e87ec794170417a8ba70" -> "sha256:70d3c37dff10431bfc3a23a890df984264b2da0418d61ddb4bfdbe424ee0ab85" [label=""];
  "sha256:70d3c37dff10431bfc3a23a890df984264b2da0418d61ddb4bfdbe424ee0ab85" -> "sha256:02aa0f80dac3e504a210f8047ca091e2d574bd9cf7d1a03f677e35a88fed9f0c" [label=""];
  "sha256:02aa0f80dac3e504a210f8047ca091e2d574bd9cf7d1a03f677e35a88fed9f0c" -> "sha256:fa0e097bd61e582909190cefb01498f7f0127769f6d97c64ece7635b371aed44" [label=""];
  "sha256:fa0e097bd61e582909190cefb01498f7f0127769f6d97c64ece7635b371aed44" -> "sha256:7d592b8677a2f73adb3e3971a2ee5df7380452f09c5fa0cb856d11b585f52568" [label=""];
  "sha256:7d592b8677a2f73adb3e3971a2ee5df7380452f09c5fa0cb856d11b585f52568" -> "sha256:43caa35e749de5dedde01d91fc035a1e2f547f20d5a4cc4516aa3e7a2e3b5fb0" [label=""];
  "sha256:43caa35e749de5dedde01d91fc035a1e2f547f20d5a4cc4516aa3e7a2e3b5fb0" -> "sha256:8383fbc46e8420e050c1544d2464a92d4ee2e6814096fb608236a73a5a62730e" [label=""];
  "sha256:8383fbc46e8420e050c1544d2464a92d4ee2e6814096fb608236a73a5a62730e" -> "sha256:6b099fbd398c37eba12490ceb4f4714ebb43876d81f59ac5cfb68c3574471165" [label=""];
}

