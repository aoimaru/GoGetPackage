[app/sources/320096082.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:3751faab852bf5e989830dca32471c408157a8d00aedf5d343cd33032cad31d2" [label="/bin/sh -c echo \"@testing https://nl.alpinelinux.org/alpine/edge/testing\" >> /etc/apk/repositories  && BUILD_DEPS=\"     imagemagick-dev     tar     libressl     ca-certificates     build-base     autoconf     pcre-dev     libtool\"  && apk -U upgrade && apk add     ${BUILD_DEPS}     nginx     php7.1-mbstring@testing     php7.1-fpm@testing     php7.1-exif@testing     php7.1-gd@testing     php7.1-json@testing     php7.1-mysqli@testing     php7.1-zip@testing     php7.1-session@testing     php7.1-pear@testing     php7.1-dev@testing     s6     su-exec     imagemagick  && pecl install imagick  && echo \"extension=imagick.so\" > /etc/php7.1/conf.d/imagick.ini  && sed -i -e \"s/max_execution_time = 30/max_execution_time = 200/g\"     -e \"s/post_max_size = 8M/post_max_size = 100M/g\"     -e \"s/upload_max_filesize = 2M/upload_max_filesize = 20M/g\"     -e \"s/memory_limit = 256M/memory_limit = 512M/g\"     /etc/php7.1/php.ini  && mkdir /lychee && cd /lychee  && wget -qO- https://github.com/electerious/Lychee/archive/v${LYCHEE_VERSION}.tar.gz | tar xz --strip 1  && apk del ${BUILD_DEPS} php7.1-pear php7.1-dev  && rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:05302862ec81389563d92faf3ea55403a25f7c27986a6ae6f79be55be6af74e6" [label="local://context" shape="ellipse"];
  "sha256:75733ec5a93cfb48c4eaa1a9d1032e8a20b2aed682e00dfef3cbde3adf199e87" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:ddfebe9af7bdb663657d847556c8659b61d8247fd94f6b40b5c6f34740acdf5b" [label="copy{src=/php-fpm.conf, dest=/etc/php7.1/php-fpm.conf}" shape="note"];
  "sha256:1c35329608a4c1e665d57f070aea5554dccd22a2ad9ffede44ccb46a4caff87b" [label="copy{src=/s6.d, dest=/etc/s6.d}" shape="note"];
  "sha256:46d7bf11b9e4d848a9034a4f6b579de7b8db8f17648eae9b71c9dbb8c45db52d" [label="copy{src=/run.sh, dest=/usr/local/bin/run.sh}" shape="note"];
  "sha256:177f07aaaf4d746cbc3b0ec34c09a8338492d4aefa547734124271073f92347c" [label="/bin/sh -c chmod +x /usr/local/bin/run.sh /etc/s6.d/*/* /etc/s6.d/.s6-svscan/*" shape="box"];
  "sha256:425448990917473e1e60ac97be63f918c1ea7067c6664b95da9e865914e7b0dd" [label="sha256:425448990917473e1e60ac97be63f918c1ea7067c6664b95da9e865914e7b0dd" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:3751faab852bf5e989830dca32471c408157a8d00aedf5d343cd33032cad31d2" [label=""];
  "sha256:3751faab852bf5e989830dca32471c408157a8d00aedf5d343cd33032cad31d2" -> "sha256:75733ec5a93cfb48c4eaa1a9d1032e8a20b2aed682e00dfef3cbde3adf199e87" [label=""];
  "sha256:05302862ec81389563d92faf3ea55403a25f7c27986a6ae6f79be55be6af74e6" -> "sha256:75733ec5a93cfb48c4eaa1a9d1032e8a20b2aed682e00dfef3cbde3adf199e87" [label=""];
  "sha256:75733ec5a93cfb48c4eaa1a9d1032e8a20b2aed682e00dfef3cbde3adf199e87" -> "sha256:ddfebe9af7bdb663657d847556c8659b61d8247fd94f6b40b5c6f34740acdf5b" [label=""];
  "sha256:05302862ec81389563d92faf3ea55403a25f7c27986a6ae6f79be55be6af74e6" -> "sha256:ddfebe9af7bdb663657d847556c8659b61d8247fd94f6b40b5c6f34740acdf5b" [label=""];
  "sha256:ddfebe9af7bdb663657d847556c8659b61d8247fd94f6b40b5c6f34740acdf5b" -> "sha256:1c35329608a4c1e665d57f070aea5554dccd22a2ad9ffede44ccb46a4caff87b" [label=""];
  "sha256:05302862ec81389563d92faf3ea55403a25f7c27986a6ae6f79be55be6af74e6" -> "sha256:1c35329608a4c1e665d57f070aea5554dccd22a2ad9ffede44ccb46a4caff87b" [label=""];
  "sha256:1c35329608a4c1e665d57f070aea5554dccd22a2ad9ffede44ccb46a4caff87b" -> "sha256:46d7bf11b9e4d848a9034a4f6b579de7b8db8f17648eae9b71c9dbb8c45db52d" [label=""];
  "sha256:05302862ec81389563d92faf3ea55403a25f7c27986a6ae6f79be55be6af74e6" -> "sha256:46d7bf11b9e4d848a9034a4f6b579de7b8db8f17648eae9b71c9dbb8c45db52d" [label=""];
  "sha256:46d7bf11b9e4d848a9034a4f6b579de7b8db8f17648eae9b71c9dbb8c45db52d" -> "sha256:177f07aaaf4d746cbc3b0ec34c09a8338492d4aefa547734124271073f92347c" [label=""];
  "sha256:177f07aaaf4d746cbc3b0ec34c09a8338492d4aefa547734124271073f92347c" -> "sha256:425448990917473e1e60ac97be63f918c1ea7067c6664b95da9e865914e7b0dd" [label=""];
}

