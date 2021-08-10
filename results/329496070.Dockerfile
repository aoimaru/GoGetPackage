[app/sources/329496070.Dockerfile]
digraph {
  "sha256:5dfcfb7f0a9994e0e436e5148031da1aa8868f9522d35247bdc62596dcdc176c" [label="local://context" shape="ellipse"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:e76254f813acd39c590f42cb33e337cf3734a2150d21cd55b93405a7617545eb" [label="/bin/sh -c apk --no-cache add tzdata &&     cp /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     echo \"UTC\" | tee /etc/timezone &&     apk del tzdata" shape="box"];
  "sha256:7e5bbf1aaf7293ea4194ce08779a32455b005a20858fcc9bbdd3c7da6b2d3ed1" [label="/bin/sh -c apk --no-cache add     php7 php7-opcache php7-fpm php7-cgi php7-ctype php7-json php7-dom php7-zip php7-zip php7-gd     php7-curl php7-mbstring php7-redis php7-mcrypt php7-iconv php7-posix php7-pdo_mysql php7-tokenizer php7-simplexml php7-session     php7-xml php7-sockets php7-openssl php7-fileinfo php7-ldap php7-exif php7-pcntl php7-xmlwriter php7-phar php7-zlib     php7-intl" shape="box"];
  "sha256:3075914c21541b9469dadfc8b03c96f7562a286e050d76555c9e9f590ba5d017" [label="copy{src=/etc/php.ini, dest=/etc/php7/php.ini}" shape="note"];
  "sha256:beda39c3cda934965c8a29782d3471ca1fc91e818411d1f2dbe775f968ca4c16" [label="/bin/sh -c apk --no-cache add bash" shape="box"];
  "sha256:fb42a797164a2a7ac5cb34c2a5f5e17971e3d19b6019f33218913b5a6f0d0159" [label="docker-image://docker.io/composer/composer:1.1" shape="ellipse"];
  "sha256:9a3e512079fe21398c92fd17f25218f6db7f41e28c84130b2ad24ff5eb31af53" [label="/bin/sh -c mkdir /ppm && cd /ppm && composer require php-pm/php-pm:${version} && composer require php-pm/httpkernel-adapter:${http_version}" shape="box"];
  "sha256:bc205b4de7a36dd16b20f150ed57152b824a226d0c24e6fe7e67c9a96f52fa01" [label="copy{src=/ppm, dest=/ppm}" shape="note"];
  "sha256:817db6194918d47e7e03d4e17a2dbc5ea91d623bb8215e7e22a7893c43e2e93f" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:4c1983142692217bb44e1ea9608f32cca7e10fb9cf4a4b66abe2fd877dfac6f6" [label="copy{src=/run-ppm.sh, dest=/etc/app/run.sh}" shape="note"];
  "sha256:5670eaec3ab05c74870bab1f0ba6f0ce9aec994c474d15597c6d75ba06d55926" [label="sha256:5670eaec3ab05c74870bab1f0ba6f0ce9aec994c474d15597c6d75ba06d55926" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:e76254f813acd39c590f42cb33e337cf3734a2150d21cd55b93405a7617545eb" [label=""];
  "sha256:e76254f813acd39c590f42cb33e337cf3734a2150d21cd55b93405a7617545eb" -> "sha256:7e5bbf1aaf7293ea4194ce08779a32455b005a20858fcc9bbdd3c7da6b2d3ed1" [label=""];
  "sha256:7e5bbf1aaf7293ea4194ce08779a32455b005a20858fcc9bbdd3c7da6b2d3ed1" -> "sha256:3075914c21541b9469dadfc8b03c96f7562a286e050d76555c9e9f590ba5d017" [label=""];
  "sha256:5dfcfb7f0a9994e0e436e5148031da1aa8868f9522d35247bdc62596dcdc176c" -> "sha256:3075914c21541b9469dadfc8b03c96f7562a286e050d76555c9e9f590ba5d017" [label=""];
  "sha256:3075914c21541b9469dadfc8b03c96f7562a286e050d76555c9e9f590ba5d017" -> "sha256:beda39c3cda934965c8a29782d3471ca1fc91e818411d1f2dbe775f968ca4c16" [label=""];
  "sha256:fb42a797164a2a7ac5cb34c2a5f5e17971e3d19b6019f33218913b5a6f0d0159" -> "sha256:9a3e512079fe21398c92fd17f25218f6db7f41e28c84130b2ad24ff5eb31af53" [label=""];
  "sha256:beda39c3cda934965c8a29782d3471ca1fc91e818411d1f2dbe775f968ca4c16" -> "sha256:bc205b4de7a36dd16b20f150ed57152b824a226d0c24e6fe7e67c9a96f52fa01" [label=""];
  "sha256:9a3e512079fe21398c92fd17f25218f6db7f41e28c84130b2ad24ff5eb31af53" -> "sha256:bc205b4de7a36dd16b20f150ed57152b824a226d0c24e6fe7e67c9a96f52fa01" [label=""];
  "sha256:bc205b4de7a36dd16b20f150ed57152b824a226d0c24e6fe7e67c9a96f52fa01" -> "sha256:817db6194918d47e7e03d4e17a2dbc5ea91d623bb8215e7e22a7893c43e2e93f" [label=""];
  "sha256:817db6194918d47e7e03d4e17a2dbc5ea91d623bb8215e7e22a7893c43e2e93f" -> "sha256:4c1983142692217bb44e1ea9608f32cca7e10fb9cf4a4b66abe2fd877dfac6f6" [label=""];
  "sha256:5dfcfb7f0a9994e0e436e5148031da1aa8868f9522d35247bdc62596dcdc176c" -> "sha256:4c1983142692217bb44e1ea9608f32cca7e10fb9cf4a4b66abe2fd877dfac6f6" [label=""];
  "sha256:4c1983142692217bb44e1ea9608f32cca7e10fb9cf4a4b66abe2fd877dfac6f6" -> "sha256:5670eaec3ab05c74870bab1f0ba6f0ce9aec994c474d15597c6d75ba06d55926" [label=""];
}

