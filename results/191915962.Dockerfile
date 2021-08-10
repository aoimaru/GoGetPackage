[app/sources/191915962.Dockerfile]
digraph {
  "sha256:68c1ef0435a391a0ca840a9ea9de4b519341f6346424df461ee047d4161acbcd" [label="docker-image://docker.io/library/php:7.3-fpm-alpine" shape="ellipse"];
  "sha256:bb656c9e693a4016b5624db42bf66bc79242cc04108233e08a13e9720b288d4d" [label="/bin/sh -c set -ex \t&& apk add --no-cache --virtual .build-deps \t\tcoreutils \t\tfreetype-dev \t\tlibjpeg-turbo-dev \t\tlibpng-dev \t\tlibzip-dev \t\tpostgresql-dev \t&& docker-php-ext-configure gd \t\t--with-freetype-dir=/usr/include/ \t\t--with-jpeg-dir=/usr/include/ \t\t--with-png-dir=/usr/include/ \t&& docker-php-ext-install -j \"$(nproc)\" \t\tgd \t\topcache \t\tpdo_mysql \t\tpdo_pgsql \t\tzip \t&& runDeps=\"$( \t\tscanelf --needed --nobanner --format '%n#p' --recursive /usr/local \t\t\t| tr ',' '\\n' \t\t\t| sort -u \t\t\t| awk 'system(\"[ -e /usr/local/lib/\" $1 \" ]\") == 0 { next } { print \"so:\" $1 }' \t)\" \t&& apk add --virtual .drupal-phpexts-rundeps $runDeps \t&& apk del .build-deps" shape="box"];
  "sha256:b591768542ac3b7ac150d794bd00fe1f8dff471a2a3a974424c1f238fea237bd" [label="/bin/sh -c { \t\techo 'opcache.memory_consumption=128'; \t\techo 'opcache.interned_strings_buffer=8'; \t\techo 'opcache.max_accelerated_files=4000'; \t\techo 'opcache.revalidate_freq=60'; \t\techo 'opcache.fast_shutdown=1'; \t\techo 'opcache.enable_cli=1'; \t} > /usr/local/etc/php/conf.d/opcache-recommended.ini" shape="box"];
  "sha256:9986c78809ff09c69641d41ec5bf041ad42736bddded8cf5cf668c2363fde3a8" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:e01a8617830fc1750e6549a13f9a8c27f7f7313a8481b3e35eaaa6dc79978a1d" [label="/bin/sh -c curl -fSL \"https://ftp.drupal.org/files/projects/drupal-${DRUPAL_VERSION}.tar.gz\" -o drupal.tar.gz \t&& echo \"${DRUPAL_MD5} *drupal.tar.gz\" | md5sum -c - \t&& tar -xz --strip-components=1 -f drupal.tar.gz \t&& rm drupal.tar.gz \t&& chown -R www-data:www-data sites modules themes" shape="box"];
  "sha256:6da832cdf0c1db8261529f7aae8302d63d40966a15f74337e1d195a1e0a9103e" [label="sha256:6da832cdf0c1db8261529f7aae8302d63d40966a15f74337e1d195a1e0a9103e" shape="plaintext"];
  "sha256:68c1ef0435a391a0ca840a9ea9de4b519341f6346424df461ee047d4161acbcd" -> "sha256:bb656c9e693a4016b5624db42bf66bc79242cc04108233e08a13e9720b288d4d" [label=""];
  "sha256:bb656c9e693a4016b5624db42bf66bc79242cc04108233e08a13e9720b288d4d" -> "sha256:b591768542ac3b7ac150d794bd00fe1f8dff471a2a3a974424c1f238fea237bd" [label=""];
  "sha256:b591768542ac3b7ac150d794bd00fe1f8dff471a2a3a974424c1f238fea237bd" -> "sha256:9986c78809ff09c69641d41ec5bf041ad42736bddded8cf5cf668c2363fde3a8" [label=""];
  "sha256:9986c78809ff09c69641d41ec5bf041ad42736bddded8cf5cf668c2363fde3a8" -> "sha256:e01a8617830fc1750e6549a13f9a8c27f7f7313a8481b3e35eaaa6dc79978a1d" [label=""];
  "sha256:e01a8617830fc1750e6549a13f9a8c27f7f7313a8481b3e35eaaa6dc79978a1d" -> "sha256:6da832cdf0c1db8261529f7aae8302d63d40966a15f74337e1d195a1e0a9103e" [label=""];
}

