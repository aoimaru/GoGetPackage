[app/sources/209602694.Dockerfile]
digraph {
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" [label="docker-image://docker.io/library/php:7.2-fpm" shape="ellipse"];
  "sha256:9bff04e67ef3de64069609383a1971f2f99a99d90f07022962884f3dec033985" [label="/bin/sh -c apt-get update && apt-get install -y         libfreetype6-dev         libjpeg62-turbo-dev         libmcrypt-dev         libpng-dev     && docker-php-ext-install -j$(nproc) bcmath iconv mysqli pdo_mysql zip     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install -j$(nproc) gd     && pecl install redis     && docker-php-ext-enable redis     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:db8f2ee6a92f1ff2617666dbbcd8098d269893734fdf8a8cb147448c7785509f" [label="/bin/sh -c curl -fsSL 'http://pecl.php.net/get/mcrypt-1.0.1.tgz' -o mcrypt.tgz     && mkdir -p mcrypt     && tar -xf mcrypt.tgz -C mcrypt --strip-components=1     && rm mcrypt.tgz     && (         cd mcrypt         && phpize         && ./configure         && make         && make install     )     && rm -r mcrypt     && docker-php-ext-enable mcrypt" shape="box"];
  "sha256:e071920f2df16f570355a620ecae4192e8a03911c9c1c7ae49feebdaddda8c78" [label="sha256:e071920f2df16f570355a620ecae4192e8a03911c9c1c7ae49feebdaddda8c78" shape="plaintext"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" -> "sha256:9bff04e67ef3de64069609383a1971f2f99a99d90f07022962884f3dec033985" [label=""];
  "sha256:9bff04e67ef3de64069609383a1971f2f99a99d90f07022962884f3dec033985" -> "sha256:db8f2ee6a92f1ff2617666dbbcd8098d269893734fdf8a8cb147448c7785509f" [label=""];
  "sha256:db8f2ee6a92f1ff2617666dbbcd8098d269893734fdf8a8cb147448c7785509f" -> "sha256:e071920f2df16f570355a620ecae4192e8a03911c9c1c7ae49feebdaddda8c78" [label=""];
}

