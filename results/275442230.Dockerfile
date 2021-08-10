[app/sources/275442230.Dockerfile]
digraph {
  "sha256:e7f5062c740c912f5f9065dd00646fad952de5703f3bde3531e452f845c362ec" [label="local://context" shape="ellipse"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" [label="docker-image://docker.io/library/php:7.2-fpm" shape="ellipse"];
  "sha256:e79a9c42aa516f97d345e05d8ca345e3558f9ca2974587c0d76281ec66f1d490" [label="/bin/sh -c apt-get update && apt-get install -y ${BUILD_DEPS} ${RUN_DEPS}     && pecl install xdebug && docker-php-ext-enable xdebug     && docker-php-ext-configure intl     && docker-php-ext-configure gd --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/     && docker-php-ext-install -j$(nproc) pdo_mysql bcmath mbstring iconv zip intl sockets pcntl gd     && apt-get purge         -y --auto-remove         -o APT::AutoRemove::RecommendsImportant=false         ${BUILD_DEPS}" shape="box"];
  "sha256:8a9277f59860f6c64ee55f9a27688ae392f7e516de0c8ba9b00ca2c033e6d6cd" [label="copy{src=/xdebug.ini, dest=/tmp/xdebug.ini}" shape="note"];
  "sha256:15963864f942fa810962f836605db6788b01d012827556c635af8e5ca9562a47" [label="/bin/sh -c cat /tmp/xdebug.ini >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini" shape="box"];
  "sha256:dc7995ff3de23e6e31202cca94f35a4d54564c4f8ceea04a7f4b470b5afa2c3e" [label="copy{src=/log.conf, dest=/usr/local/etc/php-fpm.d/zz-log.conf}" shape="note"];
  "sha256:7303cab848f14166c3f06884bcb03bb8762cfec441f6e52c42e541d08762e171" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:af51a16ee277fbfd8d20ead33aafa8f6e482d843ee9dac910b5c14c52bae131c" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d119d316c1e99b4c704e3347c9b366b6165d077dd40396753281bd63f8bfa629" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash -" shape="box"];
  "sha256:1bb06d44684ebe684e4c7cb5fb611113fbda21388c58a76993dbdeb440fba93d" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:d8b012c1b757162efdb0325fdeee1e58ffd4ecb4bcafd66f32980edfb7392fe7" [label="/bin/sh -c curl -sL https://yarnpkg.com/install.sh | bash -" shape="box"];
  "sha256:3ed6b57782b0dcc81e4516b3237bcfad5e05f5686196dff7d9af685e8f82569c" [label="/bin/sh -c chmod 777 /var/www/html" shape="box"];
  "sha256:7fcfc846facbe0f1922ff987d3b7dc24938666ce71acccc6ca075513f627209d" [label="copy{src=/remp.sh, dest=/root/remp.sh}" shape="note"];
  "sha256:4437cdab78f357a1f173a07848c2970a574e51c2fd5c5385bbac15a1ce8228f9" [label="/bin/sh -c chmod +x /root/remp.sh" shape="box"];
  "sha256:f59ff8cd5518250dbabd87e88e171a2c934a5ef22d5527ff8ffb6e493224f5fd" [label="/bin/sh -c wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz" shape="box"];
  "sha256:3609639ea66977a50880ecb3b962ed7dd473bc4a2f6a07cdc8b8be18c76f1ee4" [label="sha256:3609639ea66977a50880ecb3b962ed7dd473bc4a2f6a07cdc8b8be18c76f1ee4" shape="plaintext"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" -> "sha256:e79a9c42aa516f97d345e05d8ca345e3558f9ca2974587c0d76281ec66f1d490" [label=""];
  "sha256:e79a9c42aa516f97d345e05d8ca345e3558f9ca2974587c0d76281ec66f1d490" -> "sha256:8a9277f59860f6c64ee55f9a27688ae392f7e516de0c8ba9b00ca2c033e6d6cd" [label=""];
  "sha256:e7f5062c740c912f5f9065dd00646fad952de5703f3bde3531e452f845c362ec" -> "sha256:8a9277f59860f6c64ee55f9a27688ae392f7e516de0c8ba9b00ca2c033e6d6cd" [label=""];
  "sha256:8a9277f59860f6c64ee55f9a27688ae392f7e516de0c8ba9b00ca2c033e6d6cd" -> "sha256:15963864f942fa810962f836605db6788b01d012827556c635af8e5ca9562a47" [label=""];
  "sha256:15963864f942fa810962f836605db6788b01d012827556c635af8e5ca9562a47" -> "sha256:dc7995ff3de23e6e31202cca94f35a4d54564c4f8ceea04a7f4b470b5afa2c3e" [label=""];
  "sha256:e7f5062c740c912f5f9065dd00646fad952de5703f3bde3531e452f845c362ec" -> "sha256:dc7995ff3de23e6e31202cca94f35a4d54564c4f8ceea04a7f4b470b5afa2c3e" [label=""];
  "sha256:dc7995ff3de23e6e31202cca94f35a4d54564c4f8ceea04a7f4b470b5afa2c3e" -> "sha256:7303cab848f14166c3f06884bcb03bb8762cfec441f6e52c42e541d08762e171" [label=""];
  "sha256:7303cab848f14166c3f06884bcb03bb8762cfec441f6e52c42e541d08762e171" -> "sha256:af51a16ee277fbfd8d20ead33aafa8f6e482d843ee9dac910b5c14c52bae131c" [label=""];
  "sha256:af51a16ee277fbfd8d20ead33aafa8f6e482d843ee9dac910b5c14c52bae131c" -> "sha256:d119d316c1e99b4c704e3347c9b366b6165d077dd40396753281bd63f8bfa629" [label=""];
  "sha256:d119d316c1e99b4c704e3347c9b366b6165d077dd40396753281bd63f8bfa629" -> "sha256:1bb06d44684ebe684e4c7cb5fb611113fbda21388c58a76993dbdeb440fba93d" [label=""];
  "sha256:1bb06d44684ebe684e4c7cb5fb611113fbda21388c58a76993dbdeb440fba93d" -> "sha256:d8b012c1b757162efdb0325fdeee1e58ffd4ecb4bcafd66f32980edfb7392fe7" [label=""];
  "sha256:d8b012c1b757162efdb0325fdeee1e58ffd4ecb4bcafd66f32980edfb7392fe7" -> "sha256:3ed6b57782b0dcc81e4516b3237bcfad5e05f5686196dff7d9af685e8f82569c" [label=""];
  "sha256:3ed6b57782b0dcc81e4516b3237bcfad5e05f5686196dff7d9af685e8f82569c" -> "sha256:7fcfc846facbe0f1922ff987d3b7dc24938666ce71acccc6ca075513f627209d" [label=""];
  "sha256:e7f5062c740c912f5f9065dd00646fad952de5703f3bde3531e452f845c362ec" -> "sha256:7fcfc846facbe0f1922ff987d3b7dc24938666ce71acccc6ca075513f627209d" [label=""];
  "sha256:7fcfc846facbe0f1922ff987d3b7dc24938666ce71acccc6ca075513f627209d" -> "sha256:4437cdab78f357a1f173a07848c2970a574e51c2fd5c5385bbac15a1ce8228f9" [label=""];
  "sha256:4437cdab78f357a1f173a07848c2970a574e51c2fd5c5385bbac15a1ce8228f9" -> "sha256:f59ff8cd5518250dbabd87e88e171a2c934a5ef22d5527ff8ffb6e493224f5fd" [label=""];
  "sha256:f59ff8cd5518250dbabd87e88e171a2c934a5ef22d5527ff8ffb6e493224f5fd" -> "sha256:3609639ea66977a50880ecb3b962ed7dd473bc4a2f6a07cdc8b8be18c76f1ee4" [label=""];
}

