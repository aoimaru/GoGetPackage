[app/sources/259965791.Dockerfile]
digraph {
  "sha256:f67a6834ae64f73495d504c8d403e858f41abf937e17d092f5bef930e2148a30" [label="docker-image://docker.io/library/php:7.2-cli@sha256:42ffbc0798e4449bbd1e14fc4dcb87774aa1ad1900a09ef6a965bc0880aa2161" shape="ellipse"];
  "sha256:06d88eba03dc42a5535ea48d70c26f1b49914182dd1db9033a4219bef4a9480e" [label="/bin/sh -c apt-get update     && apt-get install -y curl     && apt-get install -y zlib1g-dev     && docker-php-ext-install zip     && apt-get install -y libicu-dev     && docker-php-ext-configure intl     && docker-php-ext-install intl     && docker-php-ext-install pcntl     && pecl install igbinary     && docker-php-ext-enable igbinary     && docker-php-ext-install bcmath     && docker-php-ext-install pdo_mysql     && apt-get install -y libpq-dev     && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql     && docker-php-ext-install pdo_pgsql     && apt-get -y install libgearman-dev     && TMPDIR=$(mktemp -d)     && cd $TMPDIR     && curl -L https://github.com/wcgallego/pecl-gearman/archive/gearman-2.0.3.tar.gz | tar xzv --strip 1     && phpize     && ./configure     && make -j$(nproc)     && make install     && cd -     && rm -r $TMPDIR     && docker-php-ext-enable gearman     && rm -rf /var/lib/apt/lists/*     && curl -L -o /tmp/composer-setup.php https://getcomposer.org/installer     && php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer     && rm /tmp/composer-setup.php     && curl -L -o /usr/local/bin/php-cs-fixer https://cs.sensiolabs.org/download/php-cs-fixer-v2.phar     && chmod a+x /usr/local/bin/php-cs-fixer" shape="box"];
  "sha256:b1745d47579e70687fa0fad72c29b33247efaa31d97592d54861082a5077af60" [label="local://context" shape="ellipse"];
  "sha256:53385cfa862cca458aafec979757c9f5a95c319d2cf82998aae3cb38c5fd5d1c" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:24e050e1a8b8b5b8ee6c47a1f0bf2861725da33f8e3ced4d890f4e46b519a075" [label="mkdir{path=/code}" shape="note"];
  "sha256:5124f483a1b83a4e54d04a913440777fb0e28273d96be345c5577c9ab8eb794d" [label="sha256:5124f483a1b83a4e54d04a913440777fb0e28273d96be345c5577c9ab8eb794d" shape="plaintext"];
  "sha256:f67a6834ae64f73495d504c8d403e858f41abf937e17d092f5bef930e2148a30" -> "sha256:06d88eba03dc42a5535ea48d70c26f1b49914182dd1db9033a4219bef4a9480e" [label=""];
  "sha256:06d88eba03dc42a5535ea48d70c26f1b49914182dd1db9033a4219bef4a9480e" -> "sha256:53385cfa862cca458aafec979757c9f5a95c319d2cf82998aae3cb38c5fd5d1c" [label=""];
  "sha256:b1745d47579e70687fa0fad72c29b33247efaa31d97592d54861082a5077af60" -> "sha256:53385cfa862cca458aafec979757c9f5a95c319d2cf82998aae3cb38c5fd5d1c" [label=""];
  "sha256:53385cfa862cca458aafec979757c9f5a95c319d2cf82998aae3cb38c5fd5d1c" -> "sha256:24e050e1a8b8b5b8ee6c47a1f0bf2861725da33f8e3ced4d890f4e46b519a075" [label=""];
  "sha256:24e050e1a8b8b5b8ee6c47a1f0bf2861725da33f8e3ced4d890f4e46b519a075" -> "sha256:5124f483a1b83a4e54d04a913440777fb0e28273d96be345c5577c9ab8eb794d" [label=""];
}
