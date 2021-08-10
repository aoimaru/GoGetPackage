[app/sources/473298342.Dockerfile]
digraph {
  "sha256:726ab1bf39f2f1b453bbd3db66f2c96d5dbeea72e949d3b910a8304e35ed78f8" [label="docker-image://docker.io/library/php:7.3-cli" shape="ellipse"];
  "sha256:a0ccdd84f7a128acd60b6aa1c6cc0247ba2baa050d4462e6f3d392de689d43f3" [label="/bin/sh -c apt-get update     && apt-get install -y curl     && apt-get install -y zlib1g-dev     && docker-php-ext-install zip     && apt-get install -y libicu-dev     && docker-php-ext-configure intl     && docker-php-ext-install intl     && docker-php-ext-install pcntl     && pecl install igbinary     && docker-php-ext-enable igbinary     && docker-php-ext-install bcmath     && docker-php-ext-install pdo_mysql     && apt-get install -y libpq-dev     && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql     && docker-php-ext-install pdo_pgsql     && curl -L -o /tmp/composer-setup.php https://getcomposer.org/installer     && php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer     && rm /tmp/composer-setup.php     && curl -L -o /usr/local/bin/php-cs-fixer https://cs.sensiolabs.org/download/php-cs-fixer-v2.phar     && chmod a+x /usr/local/bin/php-cs-fixer" shape="box"];
  "sha256:3b58f41427294dcebe1940ae3842787b9da6a4b25d6afb6921c4e429b385a1f1" [label="local://context" shape="ellipse"];
  "sha256:7d18a99913854d0a8e69eb8c08a3a1eeb059e1f41cffad5927e0f95fc0e1b1d0" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:9c00d5baf7034591ccc0986e6b0fe65a91c5050a8631784d9559918c06b67693" [label="mkdir{path=/code}" shape="note"];
  "sha256:1a4f3d34a36b47f3a9e03cf364ced06b4e80a0e96ca070090648b9a2b8ef018b" [label="sha256:1a4f3d34a36b47f3a9e03cf364ced06b4e80a0e96ca070090648b9a2b8ef018b" shape="plaintext"];
  "sha256:726ab1bf39f2f1b453bbd3db66f2c96d5dbeea72e949d3b910a8304e35ed78f8" -> "sha256:a0ccdd84f7a128acd60b6aa1c6cc0247ba2baa050d4462e6f3d392de689d43f3" [label=""];
  "sha256:a0ccdd84f7a128acd60b6aa1c6cc0247ba2baa050d4462e6f3d392de689d43f3" -> "sha256:7d18a99913854d0a8e69eb8c08a3a1eeb059e1f41cffad5927e0f95fc0e1b1d0" [label=""];
  "sha256:3b58f41427294dcebe1940ae3842787b9da6a4b25d6afb6921c4e429b385a1f1" -> "sha256:7d18a99913854d0a8e69eb8c08a3a1eeb059e1f41cffad5927e0f95fc0e1b1d0" [label=""];
  "sha256:7d18a99913854d0a8e69eb8c08a3a1eeb059e1f41cffad5927e0f95fc0e1b1d0" -> "sha256:9c00d5baf7034591ccc0986e6b0fe65a91c5050a8631784d9559918c06b67693" [label=""];
  "sha256:9c00d5baf7034591ccc0986e6b0fe65a91c5050a8631784d9559918c06b67693" -> "sha256:1a4f3d34a36b47f3a9e03cf364ced06b4e80a0e96ca070090648b9a2b8ef018b" [label=""];
}

