[app/sources/396515626.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:b0b1fa9aed474277f0774b5ce59f7a6b2016f2666855c8e244ec327fab29755e" [label="/bin/sh -c set -xe     && echo \"@php http://dl-cdn.alpinelinux.org/alpine/v3.7/community\" >> /etc/apk/repositories     && apk add --update --no-cache     ca-certificates     curl     openssh-client     libmemcached-libs     libevent     libssl1.0     musl     yaml     php7     php7-apcu     php7-bcmath     php7-ctype     php7-curl     php7-dom     php7-fileinfo     php7-iconv     php7-intl     php7-json     php7-openssl     php7-opcache     php7-mbstring     php7-memcached     php7-mcrypt     php7-mysqlnd     php7-mysqli     php7-pcntl     php7-pgsql     php7-pdo_mysql     php7-pdo_pgsql     php7-pdo_sqlite     php7-phar     php7-posix     php7-session     php7-simplexml     php7-soap     php7-sockets     php7-tokenizer     php7-xml     php7-xmlreader     php7-xmlwriter     php7-zip     php7-zlib     && apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted     gnu-libiconv" shape="box"];
  "sha256:ceb53ddc1de76b88cf3c070f7dcc6943e5b8e731f8390b99b9657592934a9056" [label="/bin/sh -c set -xe     && apk add --no-cache --repository \"http://dl-cdn.alpinelinux.org/alpine/edge/testing\"     --virtual .phpize-deps     $PHPIZE_DEPS     && sed -i 's/^exec $PHP -C -n/exec $PHP -C/g' $(which pecl)     && pecl channel-update pecl.php.net     && pecl install yaml event     && echo \"extension=yaml.so\" > $PHP_INI_DIR/conf.d/01_yaml.ini     && echo \"extension=event.so\" > $PHP_INI_DIR/conf.d/01_event.ini     && rm -rf /usr/share/php7     && rm -rf /tmp/*     && apk del .phpize-deps" shape="box"];
  "sha256:2a0c4732e337b720caa46946fd458f09dd0736125cff467cdcf560cadceabeba" [label="local://context" shape="ellipse"];
  "sha256:4a027da3b3af1ea368d7e753ad82e8cad319a52af8dbe646ac97becc30a4de26" [label="copy{src=/php/conf.d/00_memlimit.ini, dest=/etc/php7/conf.d/00_memlimit.ini}" shape="note"];
  "sha256:1af905894c5b73cf34f749ecd87f44608cef07858f6e64470be9937525fa7402" [label="mkdir{path=/srv}" shape="note"];
  "sha256:f8f714f2f5f00d4bbef736b85250a525b23d4d943237ed562229e5428250544f" [label="sha256:f8f714f2f5f00d4bbef736b85250a525b23d4d943237ed562229e5428250544f" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:b0b1fa9aed474277f0774b5ce59f7a6b2016f2666855c8e244ec327fab29755e" [label=""];
  "sha256:b0b1fa9aed474277f0774b5ce59f7a6b2016f2666855c8e244ec327fab29755e" -> "sha256:ceb53ddc1de76b88cf3c070f7dcc6943e5b8e731f8390b99b9657592934a9056" [label=""];
  "sha256:ceb53ddc1de76b88cf3c070f7dcc6943e5b8e731f8390b99b9657592934a9056" -> "sha256:4a027da3b3af1ea368d7e753ad82e8cad319a52af8dbe646ac97becc30a4de26" [label=""];
  "sha256:2a0c4732e337b720caa46946fd458f09dd0736125cff467cdcf560cadceabeba" -> "sha256:4a027da3b3af1ea368d7e753ad82e8cad319a52af8dbe646ac97becc30a4de26" [label=""];
  "sha256:4a027da3b3af1ea368d7e753ad82e8cad319a52af8dbe646ac97becc30a4de26" -> "sha256:1af905894c5b73cf34f749ecd87f44608cef07858f6e64470be9937525fa7402" [label=""];
  "sha256:1af905894c5b73cf34f749ecd87f44608cef07858f6e64470be9937525fa7402" -> "sha256:f8f714f2f5f00d4bbef736b85250a525b23d4d943237ed562229e5428250544f" [label=""];
}

