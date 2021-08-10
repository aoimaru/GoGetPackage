[app/sources/159760011.Dockerfile]
digraph {
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" [label="docker-image://docker.io/library/php:7.2-fpm" shape="ellipse"];
  "sha256:c1eacef2e199082c7a6a2094fec12f70f27a821ed711b6383f92bbb4632a0d38" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends --no-install-suggests  -y         libpng-dev         libxml2-dev         libldap2-dev         libldb-dev         unzip     && rm -rf /var/lib/apt/lists/*     && ln -s /usr/lib/x86_64-linux-gnu/libldap.so /usr/lib/libldap.so     && ln -s /usr/lib/x86_64-linux-gnu/liblber.so /usr/lib/liblber.so     && docker-php-ext-install -j$(nproc) xml gd ldap mysqli     && pecl install timezonedb     && docker-php-ext-enable timezonedb     && curl https://getcomposer.org/download/1.8.4/composer.phar -o /usr/local/bin/composer     && chmod +x /usr/local/bin/composer" shape="box"];
  "sha256:40bff137aed60b898890429a5951cf2f3f029a4582113f430ef5d75867c48c7f" [label="local://context" shape="ellipse"];
  "sha256:afd494cbb548e52899f242f9a7dd89e8d1b5f4d8fc436e94a55d65fce4d72059" [label="copy{src=/docker/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:e1f4e13f38db188ca1ae758404d94434260de563818a68ca04c76dee63c3b234" [label="copy{src=/, dest=/var/www/html}" shape="note"];
  "sha256:13ed5965739422184849acece7a55906fee5c1c6797f61bcdea097c956e18114" [label="/bin/sh -c cd /var/www/html     && composer install     && mkdir -p /var/www/html/app/tmp/cache/persistent /var/www/html/app/tmp/cache/models     && chown www-data:www-data -R /var/www/html/app/tmp/cache" shape="box"];
  "sha256:129022874e34224298f5df69bb3749d8f485cf1f83012e02e909df88dd446241" [label="sha256:129022874e34224298f5df69bb3749d8f485cf1f83012e02e909df88dd446241" shape="plaintext"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" -> "sha256:c1eacef2e199082c7a6a2094fec12f70f27a821ed711b6383f92bbb4632a0d38" [label=""];
  "sha256:c1eacef2e199082c7a6a2094fec12f70f27a821ed711b6383f92bbb4632a0d38" -> "sha256:afd494cbb548e52899f242f9a7dd89e8d1b5f4d8fc436e94a55d65fce4d72059" [label=""];
  "sha256:40bff137aed60b898890429a5951cf2f3f029a4582113f430ef5d75867c48c7f" -> "sha256:afd494cbb548e52899f242f9a7dd89e8d1b5f4d8fc436e94a55d65fce4d72059" [label=""];
  "sha256:afd494cbb548e52899f242f9a7dd89e8d1b5f4d8fc436e94a55d65fce4d72059" -> "sha256:e1f4e13f38db188ca1ae758404d94434260de563818a68ca04c76dee63c3b234" [label=""];
  "sha256:40bff137aed60b898890429a5951cf2f3f029a4582113f430ef5d75867c48c7f" -> "sha256:e1f4e13f38db188ca1ae758404d94434260de563818a68ca04c76dee63c3b234" [label=""];
  "sha256:e1f4e13f38db188ca1ae758404d94434260de563818a68ca04c76dee63c3b234" -> "sha256:13ed5965739422184849acece7a55906fee5c1c6797f61bcdea097c956e18114" [label=""];
  "sha256:13ed5965739422184849acece7a55906fee5c1c6797f61bcdea097c956e18114" -> "sha256:129022874e34224298f5df69bb3749d8f485cf1f83012e02e909df88dd446241" [label=""];
}

