[app/sources/374436741.Dockerfile]
digraph {
  "sha256:56dbfc7ecef8b6bbe4bc3cd95b405269ecce3ffa67f4a1f5976ff56e11f0c647" [label="docker-image://docker.io/library/php:7.2-apache" shape="ellipse"];
  "sha256:27d0fcee77d42c8121117e41922aa415159b017a9d6225b214957e9f30dff7c1" [label="/bin/sh -c set -ex     && apt-get update && apt-get install -y         libfreetype6-dev         libjpeg62-turbo-dev         libpng-dev         libzip-dev     && docker-php-ext-install -j$(nproc) iconv zip pdo_mysql mysqli     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install -j$(nproc) gd" shape="box"];
  "sha256:c338cb2c3246a798933a856f56bd0f332e0f5b9e80f37c1467aae4c98595f6c8" [label="/bin/sh -c set -ex     && cd /     && mkdir -p /var/lib/php/sessions     && chown www-data:www-data -R /var/lib/php/sessions     && rm -rf /var/www/*     && a2enmod rewrite" shape="box"];
  "sha256:ec19d72420de0b1fa8491ac1fa7c974ba088bb4d4095d290f98c46e16dd2356d" [label="local://context" shape="ellipse"];
  "sha256:6b74c36cf2ea752479b07fa077f587aed38146be51d803b7d8114e530c715283" [label="copy{src=/cat, dest=/var/www/}" shape="note"];
  "sha256:56ac2bb9af8a13d665ee863e80cec7b3527d6a9869bc1b14354be7a6751e6bfc" [label="/bin/sh -c set -ex     && cd /     && curl -s https://getcomposer.org/installer         | php -- --install-dir=/usr/local/bin --filename=composer     && chmod +x /usr/local/bin/composer     && cd /var/www     && composer update" shape="box"];
  "sha256:6e3927d96a628efa40472cb06073393a49e12dbb9ba57504c9de56e4d1387441" [label="/bin/sh -c set -ex     && cd /var/www     && mkdir html/upload/     && chown root:root -R .     && chmod 0755 -R .     && chown www-data:www-data -R storage/app/ storage/framework/cache/ storage/framework/views/ storage/logs/ html/upload/" shape="box"];
  "sha256:25a2aac097a328a19d3949ae63b9c760e1bfd2da6a025179219129a1108b6239" [label="sha256:25a2aac097a328a19d3949ae63b9c760e1bfd2da6a025179219129a1108b6239" shape="plaintext"];
  "sha256:56dbfc7ecef8b6bbe4bc3cd95b405269ecce3ffa67f4a1f5976ff56e11f0c647" -> "sha256:27d0fcee77d42c8121117e41922aa415159b017a9d6225b214957e9f30dff7c1" [label=""];
  "sha256:27d0fcee77d42c8121117e41922aa415159b017a9d6225b214957e9f30dff7c1" -> "sha256:c338cb2c3246a798933a856f56bd0f332e0f5b9e80f37c1467aae4c98595f6c8" [label=""];
  "sha256:c338cb2c3246a798933a856f56bd0f332e0f5b9e80f37c1467aae4c98595f6c8" -> "sha256:6b74c36cf2ea752479b07fa077f587aed38146be51d803b7d8114e530c715283" [label=""];
  "sha256:ec19d72420de0b1fa8491ac1fa7c974ba088bb4d4095d290f98c46e16dd2356d" -> "sha256:6b74c36cf2ea752479b07fa077f587aed38146be51d803b7d8114e530c715283" [label=""];
  "sha256:6b74c36cf2ea752479b07fa077f587aed38146be51d803b7d8114e530c715283" -> "sha256:56ac2bb9af8a13d665ee863e80cec7b3527d6a9869bc1b14354be7a6751e6bfc" [label=""];
  "sha256:56ac2bb9af8a13d665ee863e80cec7b3527d6a9869bc1b14354be7a6751e6bfc" -> "sha256:6e3927d96a628efa40472cb06073393a49e12dbb9ba57504c9de56e4d1387441" [label=""];
  "sha256:6e3927d96a628efa40472cb06073393a49e12dbb9ba57504c9de56e4d1387441" -> "sha256:25a2aac097a328a19d3949ae63b9c760e1bfd2da6a025179219129a1108b6239" [label=""];
}

