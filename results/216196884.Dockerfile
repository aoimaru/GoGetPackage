[app/sources/216196884.Dockerfile]
digraph {
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" [label="docker-image://docker.io/library/php:7.0-fpm" shape="ellipse"];
  "sha256:20b54c8fb6c513e3a3748858102fe617d86ef093fb77ea6c9fdb0c9ca36824df" [label="local://context" shape="ellipse"];
  "sha256:6a88cc747fd4643f5ba0ae9f1a8e146827272e586a2481f33befd489b8d1ae57" [label="copy{src=/laravel.ini, dest=/usr/local/etc/php/conf.d}" shape="note"];
  "sha256:810f878b53b18863f3a9c166b6e48b2fabd063107d7195c6a52246f79844d196" [label="copy{src=/laravel.pool.conf, dest=/usr/local/etc/php-fpm.d/}" shape="note"];
  "sha256:4efcac19276e5d49c8d0d2bd797b65f70aad8f5710a54d639c851d70c0896b4b" [label="/bin/sh -c apt-get update && apt-get install -y     libpq-dev     libmemcached-dev     curl     libpng12-dev     libfreetype6-dev     --no-install-recommends     && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:4d79628efc269586ea4e926536de57d5aa5ea51b9c669a2336103ad1aeb6bf63" [label="/bin/sh -c docker-php-ext-configure gd     --enable-gd-native-ttf     --with-freetype-dir=/usr/include/freetype2" shape="box"];
  "sha256:86c74cf7a30a5fcce49491cf52975db82f6cf81372c8f02044bce39ab74d6410" [label="/bin/sh -c docker-php-ext-install     pdo_mysql     pdo_pgsql     gd" shape="box"];
  "sha256:44b85da05c40653d1f8ced4facb0e82fdb7d4caa158350a34325e594329ea347" [label="/bin/sh -c curl -L -o /tmp/memcached.tar.gz \"https://github.com/php-memcached-dev/php-memcached/archive/php7.tar.gz\"     && mkdir -p /usr/src/php/ext/memcached     && tar -C /usr/src/php/ext/memcached -zxvf /tmp/memcached.tar.gz --strip 1     && docker-php-ext-configure memcached     && docker-php-ext-install memcached     && rm /tmp/memcached.tar.gz" shape="box"];
  "sha256:263bc888752cf19cda83520631f7c8d676ad859b25fed8eee4621df0ac89e194" [label="/bin/sh -c pecl install xdebug     && docker-php-ext-enable xdebug" shape="box"];
  "sha256:f611ab9bec7d900282d786b5b68a5bb353bbebaeb2c01317508b3c26cd717fd5" [label="/bin/sh -c pecl install mongodb" shape="box"];
  "sha256:d3c41cd4cf5cb0421cb563da1e5fad8aac9a2e5d989c72fa507ed430f38d68a8" [label="/bin/sh -c usermod -u 1000 www-data" shape="box"];
  "sha256:635d950645ac677e24d01290b95f07fcd84d86dffd87cae4d6e875368cbce804" [label="mkdir{path=/var/www/laravel}" shape="note"];
  "sha256:dc5670313980d670642cda768f0ae318fe02e495a7dcc312bf3760e883bb21b1" [label="sha256:dc5670313980d670642cda768f0ae318fe02e495a7dcc312bf3760e883bb21b1" shape="plaintext"];
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" -> "sha256:6a88cc747fd4643f5ba0ae9f1a8e146827272e586a2481f33befd489b8d1ae57" [label=""];
  "sha256:20b54c8fb6c513e3a3748858102fe617d86ef093fb77ea6c9fdb0c9ca36824df" -> "sha256:6a88cc747fd4643f5ba0ae9f1a8e146827272e586a2481f33befd489b8d1ae57" [label=""];
  "sha256:6a88cc747fd4643f5ba0ae9f1a8e146827272e586a2481f33befd489b8d1ae57" -> "sha256:810f878b53b18863f3a9c166b6e48b2fabd063107d7195c6a52246f79844d196" [label=""];
  "sha256:20b54c8fb6c513e3a3748858102fe617d86ef093fb77ea6c9fdb0c9ca36824df" -> "sha256:810f878b53b18863f3a9c166b6e48b2fabd063107d7195c6a52246f79844d196" [label=""];
  "sha256:810f878b53b18863f3a9c166b6e48b2fabd063107d7195c6a52246f79844d196" -> "sha256:4efcac19276e5d49c8d0d2bd797b65f70aad8f5710a54d639c851d70c0896b4b" [label=""];
  "sha256:4efcac19276e5d49c8d0d2bd797b65f70aad8f5710a54d639c851d70c0896b4b" -> "sha256:4d79628efc269586ea4e926536de57d5aa5ea51b9c669a2336103ad1aeb6bf63" [label=""];
  "sha256:4d79628efc269586ea4e926536de57d5aa5ea51b9c669a2336103ad1aeb6bf63" -> "sha256:86c74cf7a30a5fcce49491cf52975db82f6cf81372c8f02044bce39ab74d6410" [label=""];
  "sha256:86c74cf7a30a5fcce49491cf52975db82f6cf81372c8f02044bce39ab74d6410" -> "sha256:44b85da05c40653d1f8ced4facb0e82fdb7d4caa158350a34325e594329ea347" [label=""];
  "sha256:44b85da05c40653d1f8ced4facb0e82fdb7d4caa158350a34325e594329ea347" -> "sha256:263bc888752cf19cda83520631f7c8d676ad859b25fed8eee4621df0ac89e194" [label=""];
  "sha256:263bc888752cf19cda83520631f7c8d676ad859b25fed8eee4621df0ac89e194" -> "sha256:f611ab9bec7d900282d786b5b68a5bb353bbebaeb2c01317508b3c26cd717fd5" [label=""];
  "sha256:f611ab9bec7d900282d786b5b68a5bb353bbebaeb2c01317508b3c26cd717fd5" -> "sha256:d3c41cd4cf5cb0421cb563da1e5fad8aac9a2e5d989c72fa507ed430f38d68a8" [label=""];
  "sha256:d3c41cd4cf5cb0421cb563da1e5fad8aac9a2e5d989c72fa507ed430f38d68a8" -> "sha256:635d950645ac677e24d01290b95f07fcd84d86dffd87cae4d6e875368cbce804" [label=""];
  "sha256:635d950645ac677e24d01290b95f07fcd84d86dffd87cae4d6e875368cbce804" -> "sha256:dc5670313980d670642cda768f0ae318fe02e495a7dcc312bf3760e883bb21b1" [label=""];
}

