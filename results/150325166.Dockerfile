[app/sources/150325166.Dockerfile]
digraph {
  "sha256:8126f1fc10ebaf28179c9daf5dc637dcbe8db932d72f286fd53c6fff567c21af" [label="docker-image://docker.io/library/php:7.2-fpm-alpine" shape="ellipse"];
  "sha256:a6d9780d7dbc16829832aba3d02f6a1eb828605a0bedc2da91e4743d54fd91c0" [label="/bin/sh -c apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         curl-dev         imagemagick-dev         libtool         libxml2-dev         postgresql-dev         sqlite-dev     && apk add --no-cache         curl         git         imagemagick         mysql-client         postgresql-libs         libintl         icu         icu-dev     && pecl install imagick     && docker-php-ext-enable imagick     && docker-php-ext-install         curl         iconv         mbstring         pdo         pdo_mysql         pdo_pgsql         pdo_sqlite         pcntl         tokenizer         xml         zip         intl     && curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer     && apk del -f .build-deps" shape="box"];
  "sha256:52ec602886c104d045a13bb46cfd8c8a1d5b8996c62c2a4f00f8dfc74f2b824b" [label="sha256:52ec602886c104d045a13bb46cfd8c8a1d5b8996c62c2a4f00f8dfc74f2b824b" shape="plaintext"];
  "sha256:8126f1fc10ebaf28179c9daf5dc637dcbe8db932d72f286fd53c6fff567c21af" -> "sha256:a6d9780d7dbc16829832aba3d02f6a1eb828605a0bedc2da91e4743d54fd91c0" [label=""];
  "sha256:a6d9780d7dbc16829832aba3d02f6a1eb828605a0bedc2da91e4743d54fd91c0" -> "sha256:52ec602886c104d045a13bb46cfd8c8a1d5b8996c62c2a4f00f8dfc74f2b824b" [label=""];
}

