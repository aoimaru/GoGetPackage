[app/sources/137947880.Dockerfile]
digraph {
  "sha256:b323f4c7f46f6d12189d61b0b217494d8c15684627720d0a426ba84fffdcd5a6" [label="docker-image://docker.io/library/php:7.0" shape="ellipse"];
  "sha256:72b5dd99ca2410cabf557f9589cff9056fe5d9e64d0bf5c5412385866f497e9e" [label="/bin/sh -c set -ex     && apt-get update     && apt-get install -y --no-install-recommends git unzip ca-certificates wget     && curl -sL https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:ef5e0aab8f59fb2b61d02fb05d3e63696729c59f05bd746982f184d500cb6e09" [label="/bin/sh -c set -ex     && composer global require phalcon/zephir:${ZEPHIR_VERSION}     && composer clearcache -n" shape="box"];
  "sha256:5b79e042e0652ed92fb1cb2b65b0fb043a34ea1684c847f5a68ba4a87389db95" [label="/bin/sh -c set -ex     && mkdir -p /usr/share/zephir     && curl -sL https://github.com/phalcon/php-zephir-parser/archive/v${ZEPHIR_PARSER_VERSION}.tar.gz         | tar xz --strip-components=1 -C /usr/share/zephir     && cd /usr/share/zephir     && ./install     && {         echo '[Zephir Parser]';         echo 'extension=zephir_parser.so';     } >> /usr/local/etc/php/conf.d/zephir_parser.ini     && {         echo '#!/usr/bin/env bash';         echo 'exec \"$@\"';     } >> /usr/bin/sudo     && chmod +x /usr/bin/sudo     && rm -rf /usr/share/zephir" shape="box"];
  "sha256:8539dce71e78578926d619977ae68d8960e76321f1e9063059841799de756007" [label="sha256:8539dce71e78578926d619977ae68d8960e76321f1e9063059841799de756007" shape="plaintext"];
  "sha256:b323f4c7f46f6d12189d61b0b217494d8c15684627720d0a426ba84fffdcd5a6" -> "sha256:72b5dd99ca2410cabf557f9589cff9056fe5d9e64d0bf5c5412385866f497e9e" [label=""];
  "sha256:72b5dd99ca2410cabf557f9589cff9056fe5d9e64d0bf5c5412385866f497e9e" -> "sha256:ef5e0aab8f59fb2b61d02fb05d3e63696729c59f05bd746982f184d500cb6e09" [label=""];
  "sha256:ef5e0aab8f59fb2b61d02fb05d3e63696729c59f05bd746982f184d500cb6e09" -> "sha256:5b79e042e0652ed92fb1cb2b65b0fb043a34ea1684c847f5a68ba4a87389db95" [label=""];
  "sha256:5b79e042e0652ed92fb1cb2b65b0fb043a34ea1684c847f5a68ba4a87389db95" -> "sha256:8539dce71e78578926d619977ae68d8960e76321f1e9063059841799de756007" [label=""];
}

