[app/sources/339338281.Dockerfile]
digraph {
  "sha256:627a3f7acbe0b64f6eb645d5103516a10cb5337aedc24890b23c441c9d05f3aa" [label="docker-image://docker.io/library/php:5.6-fpm" shape="ellipse"];
  "sha256:1f48d303ff7953b7fa7c11399757dafe4f517e812d67ce3e9a92de346b8abc59" [label="/bin/sh -c sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list     && apt-get update && apt-get install -y         libfreetype6-dev         libjpeg62-turbo-dev         libmcrypt-dev         libpng12-dev     && docker-php-ext-install -j$(nproc) iconv mcrypt pdo_mysql mysql mbstring opcache bcmath    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install -j$(nproc) gd" shape="box"];
  "sha256:fb698e14bc35dfb4c584333f007b4fd187ceeaacee82fc244b65688a7f088a60" [label="/bin/sh -c apt-get install curl git openssh-server openssl mercurial bash -y" shape="box"];
  "sha256:11d1dbd7ddca8b0a92f335435a467bd7d15f39b7167637e592353f569688a9e0" [label="/bin/sh -c echo \"memory_limit=-1\" > \"$PHP_INI_DIR/conf.d/memory-limit.ini\"  && echo \"date.timezone=${PHP_TIMEZONE:-UTC}\" > \"$PHP_INI_DIR/conf.d/date_timezone.ini\"" shape="box"];
  "sha256:9eb6a95d429baffcaa6e06ca047ebae100a8ccc0fe10ecc022c4f7bc774874c3" [label="/bin/sh -c curl -s -f -L -o /tmp/installer.php https://raw.githubusercontent.com/composer/getcomposer.org/da290238de6d63faace0343efbdd5aa9354332c5/web/installer  && php -r \"     \\$signature = '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410';     \\$hash = hash('SHA384', file_get_contents('/tmp/installer.php'));     if (!hash_equals(\\$signature, \\$hash)) {         unlink('/tmp/installer.php');         echo 'Integrity check failed, installer is either corrupt or worse.' . PHP_EOL;         exit(1);     }\"  && php /tmp/installer.php --no-ansi --install-dir=/usr/bin --filename=composer --version=${COMPOSER_VERSION}  && rm /tmp/installer.php  && composer --ansi --version --no-interaction" shape="box"];
  "sha256:9f5f2d944ed50126f84719952a386d8872d449025ce1178e2269a216e716a363" [label="mkdir{path=/app}" shape="note"];
  "sha256:86e8ea1082b8b225d65c73a0ed66407c8f55e141e606eb2d04cc18af7dc1f421" [label="sha256:86e8ea1082b8b225d65c73a0ed66407c8f55e141e606eb2d04cc18af7dc1f421" shape="plaintext"];
  "sha256:627a3f7acbe0b64f6eb645d5103516a10cb5337aedc24890b23c441c9d05f3aa" -> "sha256:1f48d303ff7953b7fa7c11399757dafe4f517e812d67ce3e9a92de346b8abc59" [label=""];
  "sha256:1f48d303ff7953b7fa7c11399757dafe4f517e812d67ce3e9a92de346b8abc59" -> "sha256:fb698e14bc35dfb4c584333f007b4fd187ceeaacee82fc244b65688a7f088a60" [label=""];
  "sha256:fb698e14bc35dfb4c584333f007b4fd187ceeaacee82fc244b65688a7f088a60" -> "sha256:11d1dbd7ddca8b0a92f335435a467bd7d15f39b7167637e592353f569688a9e0" [label=""];
  "sha256:11d1dbd7ddca8b0a92f335435a467bd7d15f39b7167637e592353f569688a9e0" -> "sha256:9eb6a95d429baffcaa6e06ca047ebae100a8ccc0fe10ecc022c4f7bc774874c3" [label=""];
  "sha256:9eb6a95d429baffcaa6e06ca047ebae100a8ccc0fe10ecc022c4f7bc774874c3" -> "sha256:9f5f2d944ed50126f84719952a386d8872d449025ce1178e2269a216e716a363" [label=""];
  "sha256:9f5f2d944ed50126f84719952a386d8872d449025ce1178e2269a216e716a363" -> "sha256:86e8ea1082b8b225d65c73a0ed66407c8f55e141e606eb2d04cc18af7dc1f421" [label=""];
}

