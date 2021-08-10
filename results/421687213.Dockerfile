[app/sources/421687213.Dockerfile]
digraph {
  "sha256:726ab1bf39f2f1b453bbd3db66f2c96d5dbeea72e949d3b910a8304e35ed78f8" [label="docker-image://docker.io/library/php:7.3-cli" shape="ellipse"];
  "sha256:353846f5a41ce63ea2d0827276c6f2e87346946894cd9385379fa9f82e723908" [label="/bin/sh -c apt-get update   && apt-get install -y     curl     git     libzip-dev     libxml2-dev     unzip     zlib1g-dev" shape="box"];
  "sha256:914a88b2e86f8eeb665e27d99473adf1b70dbd8dd9698478ba771f48d222fdd2" [label="/bin/sh -c curl -sSLo xdebug-latest.tar.gz https://xdebug.org/files/xdebug-2.7.0beta1.tgz   && mkdir -p /tmp/xdebug   && tar --strip-components=1 -C /tmp/xdebug -xf xdebug-latest.tar.gz   && rm xdebug-latest.tar.gz   && (     cd /tmp/xdebug     && phpize     && ./configure --with-php-config=/usr/local/bin/php-config --enable-xdebug     && make -j \"$(nproc)\"     && make install   )   && rm -rf /tmp/xdebug   && docker-php-ext-enable xdebug" shape="box"];
  "sha256:88a5b4a8b9d200cb4038d38bb51d1fc83f1092518e77901ef7f475ddb85e0f81" [label="/bin/sh -c docker-php-ext-install -j$(nproc)     soap     pcntl     zip" shape="box"];
  "sha256:bdf2d0b237a995f571f019293e349c59a1bf45b81759458a052d899394e6f638" [label="/bin/sh -c useradd -m -s /bin/bash phpuser   && mkdir -p /usr/src/php   && chown -R phpuser:phpuser /usr/src/php   && chown -R phpuser:phpuser /home/phpuser   && chmod -R ug+w /usr/src/php" shape="box"];
  "sha256:533a26c50288963f36d2e87bca3a44152bae2fcd16a31801c855db536c8536f2" [label="mkdir{path=/usr/src/php}" shape="note"];
  "sha256:9b9feb18445d5f7387bd7c0ddd1d2172d5fe07e07f58a8ace399bb3fe36b1932" [label="/bin/sh -c curl -sSL https://getcomposer.org/installer | php" shape="box"];
  "sha256:591eb2b63c42c60ba9cf3b7fae6a8b06893ed1dbd17b5785751fa5767f902ee7" [label="sha256:591eb2b63c42c60ba9cf3b7fae6a8b06893ed1dbd17b5785751fa5767f902ee7" shape="plaintext"];
  "sha256:726ab1bf39f2f1b453bbd3db66f2c96d5dbeea72e949d3b910a8304e35ed78f8" -> "sha256:353846f5a41ce63ea2d0827276c6f2e87346946894cd9385379fa9f82e723908" [label=""];
  "sha256:353846f5a41ce63ea2d0827276c6f2e87346946894cd9385379fa9f82e723908" -> "sha256:914a88b2e86f8eeb665e27d99473adf1b70dbd8dd9698478ba771f48d222fdd2" [label=""];
  "sha256:914a88b2e86f8eeb665e27d99473adf1b70dbd8dd9698478ba771f48d222fdd2" -> "sha256:88a5b4a8b9d200cb4038d38bb51d1fc83f1092518e77901ef7f475ddb85e0f81" [label=""];
  "sha256:88a5b4a8b9d200cb4038d38bb51d1fc83f1092518e77901ef7f475ddb85e0f81" -> "sha256:bdf2d0b237a995f571f019293e349c59a1bf45b81759458a052d899394e6f638" [label=""];
  "sha256:bdf2d0b237a995f571f019293e349c59a1bf45b81759458a052d899394e6f638" -> "sha256:533a26c50288963f36d2e87bca3a44152bae2fcd16a31801c855db536c8536f2" [label=""];
  "sha256:533a26c50288963f36d2e87bca3a44152bae2fcd16a31801c855db536c8536f2" -> "sha256:9b9feb18445d5f7387bd7c0ddd1d2172d5fe07e07f58a8ace399bb3fe36b1932" [label=""];
  "sha256:9b9feb18445d5f7387bd7c0ddd1d2172d5fe07e07f58a8ace399bb3fe36b1932" -> "sha256:591eb2b63c42c60ba9cf3b7fae6a8b06893ed1dbd17b5785751fa5767f902ee7" [label=""];
}

