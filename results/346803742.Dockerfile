[app/sources/346803742.Dockerfile]
digraph {
  "sha256:a25329d9ec5d450db27c854bf362463143d081a99dc8649a078aa6f968d27052" [label="local://context" shape="ellipse"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" [label="docker-image://docker.io/library/php:7.2-fpm" shape="ellipse"];
  "sha256:d653316f7dfc40f38c319cbe7df62e1917ba22f541a538834b5d7b55abc68c0d" [label="/bin/sh -c apt-get update \t&& apt-get install -y libmcrypt-dev \t\tlibjpeg62-turbo-dev \t\tlibpcre3-dev \t\tlibpng-dev \t\tlibfreetype6-dev \t\tlibxml2-dev \t\tlibicu-dev \t\tlibzip-dev \t\tmysql-client \t\twget \t\tunzip     && rm -rf /var/lib/apt/lists/*     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install iconv intl pdo_mysql mbstring soap gd zip" shape="box"];
  "sha256:eaacbdaba904399ab7c270680947cf8b575c7d2754f950f7c8d71d412d4b5f89" [label="/bin/sh -c docker-php-source extract   && if [ -d \"/usr/src/php/ext/mysql\" ]; then docker-php-ext-install mysql; fi   && if [ -d \"/usr/src/php/ext/mcrypt\" ]; then docker-php-ext-install mcrypt; fi \t&& if [ -d \"/usr/src/php/ext/opcache\" ]; then docker-php-ext-install opcache; fi \t&& docker-php-source delete" shape="box"];
  "sha256:568800e3a131448abc094337af0306cdbfbbd03e4b3fda61e577ff362991217a" [label="copy{src=/config_files/ps-extractor.sh, dest=/tmp/},copy{src=/config_files/docker_run.sh, dest=/tmp/}" shape="note"];
  "sha256:f7268b6974e6caa153af1a98359cd34ddeabce2e81292f7b254d767753f09a6f" [label="copy{src=/config_files/docker_updt_ps_domains.php, dest=/tmp/}" shape="note"];
  "sha256:482fd8fb0bcff82939c5fd41a5f9b99043f11342f9df24ffa452ae2bb7100fa0" [label="copy{src=/config_files/defines_custom.inc.php, dest=/tmp/}" shape="note"];
  "sha256:79e4ce3105409fe0f89fd3c5f33e97d20d6906c0db4fb998d55bb1997a5c10cd" [label="/bin/sh -c chown www-data:www-data /tmp/defines_custom.inc.php" shape="box"];
  "sha256:ed14fbcda2319db722d77308591b166dbe5ea6fb424a8c7aa34ac08449d0e67a" [label="/bin/sh -c if [ -x \"$(command -v apache2-foreground)\" ]; then a2enmod rewrite; fi" shape="box"];
  "sha256:ead9d311a25b139b8665b7470a8a8d5e8ce91d11e5cdf58cecb0c1e9a6f5c089" [label="copy{src=/config_files/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:81cc3c40e8af8e45f08c6e308833c959913ec64858f6e97f4f178bcf3d3caaca" [label="sha256:81cc3c40e8af8e45f08c6e308833c959913ec64858f6e97f4f178bcf3d3caaca" shape="plaintext"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" -> "sha256:d653316f7dfc40f38c319cbe7df62e1917ba22f541a538834b5d7b55abc68c0d" [label=""];
  "sha256:d653316f7dfc40f38c319cbe7df62e1917ba22f541a538834b5d7b55abc68c0d" -> "sha256:eaacbdaba904399ab7c270680947cf8b575c7d2754f950f7c8d71d412d4b5f89" [label=""];
  "sha256:eaacbdaba904399ab7c270680947cf8b575c7d2754f950f7c8d71d412d4b5f89" -> "sha256:568800e3a131448abc094337af0306cdbfbbd03e4b3fda61e577ff362991217a" [label=""];
  "sha256:a25329d9ec5d450db27c854bf362463143d081a99dc8649a078aa6f968d27052" -> "sha256:568800e3a131448abc094337af0306cdbfbbd03e4b3fda61e577ff362991217a" [label=""];
  "sha256:568800e3a131448abc094337af0306cdbfbbd03e4b3fda61e577ff362991217a" -> "sha256:f7268b6974e6caa153af1a98359cd34ddeabce2e81292f7b254d767753f09a6f" [label=""];
  "sha256:a25329d9ec5d450db27c854bf362463143d081a99dc8649a078aa6f968d27052" -> "sha256:f7268b6974e6caa153af1a98359cd34ddeabce2e81292f7b254d767753f09a6f" [label=""];
  "sha256:f7268b6974e6caa153af1a98359cd34ddeabce2e81292f7b254d767753f09a6f" -> "sha256:482fd8fb0bcff82939c5fd41a5f9b99043f11342f9df24ffa452ae2bb7100fa0" [label=""];
  "sha256:a25329d9ec5d450db27c854bf362463143d081a99dc8649a078aa6f968d27052" -> "sha256:482fd8fb0bcff82939c5fd41a5f9b99043f11342f9df24ffa452ae2bb7100fa0" [label=""];
  "sha256:482fd8fb0bcff82939c5fd41a5f9b99043f11342f9df24ffa452ae2bb7100fa0" -> "sha256:79e4ce3105409fe0f89fd3c5f33e97d20d6906c0db4fb998d55bb1997a5c10cd" [label=""];
  "sha256:79e4ce3105409fe0f89fd3c5f33e97d20d6906c0db4fb998d55bb1997a5c10cd" -> "sha256:ed14fbcda2319db722d77308591b166dbe5ea6fb424a8c7aa34ac08449d0e67a" [label=""];
  "sha256:ed14fbcda2319db722d77308591b166dbe5ea6fb424a8c7aa34ac08449d0e67a" -> "sha256:ead9d311a25b139b8665b7470a8a8d5e8ce91d11e5cdf58cecb0c1e9a6f5c089" [label=""];
  "sha256:a25329d9ec5d450db27c854bf362463143d081a99dc8649a078aa6f968d27052" -> "sha256:ead9d311a25b139b8665b7470a8a8d5e8ce91d11e5cdf58cecb0c1e9a6f5c089" [label=""];
  "sha256:ead9d311a25b139b8665b7470a8a8d5e8ce91d11e5cdf58cecb0c1e9a6f5c089" -> "sha256:81cc3c40e8af8e45f08c6e308833c959913ec64858f6e97f4f178bcf3d3caaca" [label=""];
}

