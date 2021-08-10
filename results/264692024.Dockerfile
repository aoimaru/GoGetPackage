[app/sources/264692024.Dockerfile]
digraph {
  "sha256:a0e63de0313a1e6c5d4e3d4e8d30e8f03461c8273a8931fe8db1364d432c9227" [label="docker-image://docker.io/library/php:7.1-cli-alpine" shape="ellipse"];
  "sha256:48d114e4e3c54774becd5145e1437a32e18ff7750920a5fae098ca3a89f3ebb9" [label="/bin/sh -c apk add --no-cache --virtual .build-deps $PHPIZE_DEPS     && apk add --no-cache --virtual .runtime-deps git libzip-dev     && docker-php-ext-install zip     && pecl install xdebug-$XDEBUG_VERSION     && docker-php-ext-enable xdebug     && echo \"xdebug.max_nesting_level=15000\" >> \"$PHP_INI_DIR/conf.d/docker-php-ext-xdebug.ini\"     && echo \"xdebug.remote_enable=true\" >> \"$PHP_INI_DIR/conf.d/docker-php-ext-xdebug.ini\"     && echo \"xdebug.remote_host=localhost\" >> \"$PHP_INI_DIR/conf.d/docker-php-ext-xdebug.ini\"     && echo \"xdebug.idekey=PHPSTORM\" >> \"$PHP_INI_DIR/conf.d/docker-php-ext-xdebug.ini\"     && echo \"xdebug.remote_handler=dbgp\" >> \"$PHP_INI_DIR/conf.d/docker-php-ext-xdebug.ini\"     && echo \"xdebug.remote_autostart=1\" >> \"$PHP_INI_DIR/conf.d/docker-php-ext-xdebug.ini\"     && echo \"xdebug.remote_connect_back=0\" >> \"$PHP_INI_DIR/conf.d/docker-php-ext-xdebug.ini\"     && apk del .build-deps" shape="box"];
  "sha256:385eacc1fa8024283b6c8abb60ff7081782fa1b37d22728ca60de71dc800b4ba" [label="sha256:385eacc1fa8024283b6c8abb60ff7081782fa1b37d22728ca60de71dc800b4ba" shape="plaintext"];
  "sha256:a0e63de0313a1e6c5d4e3d4e8d30e8f03461c8273a8931fe8db1364d432c9227" -> "sha256:48d114e4e3c54774becd5145e1437a32e18ff7750920a5fae098ca3a89f3ebb9" [label=""];
  "sha256:48d114e4e3c54774becd5145e1437a32e18ff7750920a5fae098ca3a89f3ebb9" -> "sha256:385eacc1fa8024283b6c8abb60ff7081782fa1b37d22728ca60de71dc800b4ba" [label=""];
}

