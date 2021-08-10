[app/sources/187721342.Dockerfile]
digraph {
  "sha256:50f6540eb5d428896fce25c1867c249c076b47db0050398f6bfc701f5eeaa9ed" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:e2fdb92637cb4161c5612c6c4a446d523cab4083534a07f95d6674c60e4e825b" [label="/bin/sh -c apt-get update && apt-get install -y ca-certificates curl libxml2 --no-install-recommends && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:22ce5071d8d3c607508648be6d44799e0c22810a5b834e2b88833a40b1fc0cb1" [label="/bin/sh -c apt-get update && apt-get install -y autoconf gcc libc-dev make pkg-config --no-install-recommends && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:9a4d501182ae18599138dd971e8862df730f0eca621831c3f38d85c3fc7b0fc8" [label="/bin/sh -c mkdir -p $PHP_INI_DIR/conf.d" shape="box"];
  "sha256:ef497ebeef162a77a9147ded6e8145dafd64be529d82e6d5ae9c762f3f29355b" [label="/bin/sh -c apt-get update && apt-get install -y apache2-bin apache2.2-common --no-install-recommends && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3b1af6b318a55b9dd7c880d85d228affecad42ca0e95bb395b0e2109bfb3174b" [label="/bin/sh -c rm -rf /var/www/html && mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/apache2 /var/www/html && chown -R www-data:www-data /var/lock/apache2 /var/run/apache2 /var/log/apache2 /var/www/html" shape="box"];
  "sha256:91cd751763a0ec959902818c43393ab931b00e257f56cc8051fb013e8ee0faea" [label="/bin/sh -c a2dismod mpm_event && a2enmod mpm_prefork" shape="box"];
  "sha256:1106da251e440f22f2bec74af75a67f53b83fbb2cb82ddbd6caeb519e8a90dd9" [label="/bin/sh -c mv /etc/apache2/apache2.conf /etc/apache2/apache2.conf.dist" shape="box"];
  "sha256:0108052eec9fbd2515f4f3560fed94e558671576ba360f46c5205470e2a09f38" [label="copy{src=/apache2.conf, dest=/etc/apache2/apache2.conf}" shape="note"];
  "sha256:a24960c80e533fd2f5c82ea0dcbd92666e79e18627047560733923637e06a535" [label="/bin/sh -c gpg --keyserver pool.sks-keyservers.net --recv-keys F38252826ACD957EF380D39F2F7956BC5DA04B5D" shape="box"];
  "sha256:429c8aa37f16c3fc47245bace7f32e001462568d3d06a443f5ee325b8f1acaa2" [label="/bin/sh -c buildDeps=\" \t\t$PHP_EXTRA_BUILD_DEPS \t\tbzip2 \t\tfile \t\tlibcurl4-openssl-dev \t\tlibreadline6-dev \t\tlibssl-dev \t\tlibxml2-dev \t\"; \tset -x \t&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& curl -SL \"http://php.net/get/php-$PHP_VERSION.tar.bz2/from/this/mirror\" -o php.tar.bz2 \t&& curl -SL \"http://php.net/get/php-$PHP_VERSION.tar.bz2.asc/from/this/mirror\" -o php.tar.bz2.asc \t&& gpg --verify php.tar.bz2.asc \t&& mkdir -p /usr/src/php \t&& tar -xf php.tar.bz2 -C /usr/src/php --strip-components=1 \t&& rm php.tar.bz2* \t&& cd /usr/src/php \t&& ./configure \t\t--with-config-file-path=\"$PHP_INI_DIR\" \t\t--with-config-file-scan-dir=\"$PHP_INI_DIR/conf.d\" \t\t$PHP_EXTRA_CONFIGURE_ARGS \t\t--disable-cgi \t\t--enable-mysqlnd \t\t--with-curl \t\t--with-openssl \t\t--with-readline \t\t--with-zlib \t&& make -j\"$(nproc)\" \t&& make install \t&& { find /usr/local/bin /usr/local/sbin -type f -executable -exec strip --strip-all '{}' + || true; } \t&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps \t&& make clean" shape="box"];
  "sha256:e311b259b51635e42acd030cd9f8dfb02b05d7f2549e5c72e63486ba2ef65d2b" [label="copy{src=/docker-php-ext-*, dest=/usr/local/bin/}" shape="note"];
  "sha256:b8f91cc48410192cebeff4778d80a2b88c2bd08a1ea4eb394f7a5e8a0a62be85" [label="copy{src=/apache2-foreground, dest=/usr/local/bin/}" shape="note"];
  "sha256:2f40fdcd6b79f941046c8dd141990cdec4ba3de1da475eb11a94872bb34e7afb" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:a6e32b352721e76c23182934f38d0876b2e842785b626ad6fbb0fc3840524809" [label="sha256:a6e32b352721e76c23182934f38d0876b2e842785b626ad6fbb0fc3840524809" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:e2fdb92637cb4161c5612c6c4a446d523cab4083534a07f95d6674c60e4e825b" [label=""];
  "sha256:e2fdb92637cb4161c5612c6c4a446d523cab4083534a07f95d6674c60e4e825b" -> "sha256:22ce5071d8d3c607508648be6d44799e0c22810a5b834e2b88833a40b1fc0cb1" [label=""];
  "sha256:22ce5071d8d3c607508648be6d44799e0c22810a5b834e2b88833a40b1fc0cb1" -> "sha256:9a4d501182ae18599138dd971e8862df730f0eca621831c3f38d85c3fc7b0fc8" [label=""];
  "sha256:9a4d501182ae18599138dd971e8862df730f0eca621831c3f38d85c3fc7b0fc8" -> "sha256:ef497ebeef162a77a9147ded6e8145dafd64be529d82e6d5ae9c762f3f29355b" [label=""];
  "sha256:ef497ebeef162a77a9147ded6e8145dafd64be529d82e6d5ae9c762f3f29355b" -> "sha256:3b1af6b318a55b9dd7c880d85d228affecad42ca0e95bb395b0e2109bfb3174b" [label=""];
  "sha256:3b1af6b318a55b9dd7c880d85d228affecad42ca0e95bb395b0e2109bfb3174b" -> "sha256:91cd751763a0ec959902818c43393ab931b00e257f56cc8051fb013e8ee0faea" [label=""];
  "sha256:91cd751763a0ec959902818c43393ab931b00e257f56cc8051fb013e8ee0faea" -> "sha256:1106da251e440f22f2bec74af75a67f53b83fbb2cb82ddbd6caeb519e8a90dd9" [label=""];
  "sha256:1106da251e440f22f2bec74af75a67f53b83fbb2cb82ddbd6caeb519e8a90dd9" -> "sha256:0108052eec9fbd2515f4f3560fed94e558671576ba360f46c5205470e2a09f38" [label=""];
  "sha256:50f6540eb5d428896fce25c1867c249c076b47db0050398f6bfc701f5eeaa9ed" -> "sha256:0108052eec9fbd2515f4f3560fed94e558671576ba360f46c5205470e2a09f38" [label=""];
  "sha256:0108052eec9fbd2515f4f3560fed94e558671576ba360f46c5205470e2a09f38" -> "sha256:a24960c80e533fd2f5c82ea0dcbd92666e79e18627047560733923637e06a535" [label=""];
  "sha256:a24960c80e533fd2f5c82ea0dcbd92666e79e18627047560733923637e06a535" -> "sha256:429c8aa37f16c3fc47245bace7f32e001462568d3d06a443f5ee325b8f1acaa2" [label=""];
  "sha256:429c8aa37f16c3fc47245bace7f32e001462568d3d06a443f5ee325b8f1acaa2" -> "sha256:e311b259b51635e42acd030cd9f8dfb02b05d7f2549e5c72e63486ba2ef65d2b" [label=""];
  "sha256:50f6540eb5d428896fce25c1867c249c076b47db0050398f6bfc701f5eeaa9ed" -> "sha256:e311b259b51635e42acd030cd9f8dfb02b05d7f2549e5c72e63486ba2ef65d2b" [label=""];
  "sha256:e311b259b51635e42acd030cd9f8dfb02b05d7f2549e5c72e63486ba2ef65d2b" -> "sha256:b8f91cc48410192cebeff4778d80a2b88c2bd08a1ea4eb394f7a5e8a0a62be85" [label=""];
  "sha256:50f6540eb5d428896fce25c1867c249c076b47db0050398f6bfc701f5eeaa9ed" -> "sha256:b8f91cc48410192cebeff4778d80a2b88c2bd08a1ea4eb394f7a5e8a0a62be85" [label=""];
  "sha256:b8f91cc48410192cebeff4778d80a2b88c2bd08a1ea4eb394f7a5e8a0a62be85" -> "sha256:2f40fdcd6b79f941046c8dd141990cdec4ba3de1da475eb11a94872bb34e7afb" [label=""];
  "sha256:2f40fdcd6b79f941046c8dd141990cdec4ba3de1da475eb11a94872bb34e7afb" -> "sha256:a6e32b352721e76c23182934f38d0876b2e842785b626ad6fbb0fc3840524809" [label=""];
}

