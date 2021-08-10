[app/sources/335941911.Dockerfile]
digraph {
  "sha256:2d6ab34f28aaa27d9c0257bd4f6d532a532d83862046fd202222e91f6882524e" [label="docker-image://docker.io/library/php:7.1-fpm-alpine" shape="ellipse"];
  "sha256:7500b2f92ddda9fcd1dfd4363ae8e1de47c322608f3bb7b006ebcde1a544563d" [label="https://github.com/Dolibarr/dolibarr/archive/8.0.5.zip" shape="ellipse"];
  "sha256:f94398a2ef46861131eea0b5855f8b8a8619bdecf193e10a168d1f36f506078c" [label="copy{src=/8.0.5.zip, dest=/tmp/dolibarr.zip}" shape="note"];
  "sha256:a59367f8f8836a1d33132572c55fde976fdacc10b9d85e965d951729d1badac5" [label="/bin/sh -c set -ex; \tapk add --no-cache \t\timagemagick \t\tlibldap \t\tlibpq \t\tlibpng \t\tmysql-client \t\trsync \t\tssmtp \t\tshadow \t; \tapk add --no-cache --virtual .build-deps \t\t$PHPIZE_DEPS \t\tautoconf \t\tcurl-dev \t\tfreetype-dev \t\tgcc \t\tg++ \t\ticu-dev \t\tlibjpeg-turbo-dev \t\timagemagick-dev \t\timagemagick-libs \t\tlibmcrypt-dev \t\tlibpng-dev \t\tlibtool \t\tlibxml2-dev \t\tmake \t\topenldap-dev \t\tpostgresql-dev \t\tpostgresql-libs \t\tunzip \t; \tdocker-php-ext-configure ldap; \tdocker-php-ext-configure gd --with-freetype-dir=/usr --with-png-dir=/usr --with-jpeg-dir=/usr; \tdocker-php-ext-install \t\tcalendar \t\tgd \t\tldap \t\tmbstring \t\tmysqli \t\tpdo \t\tpdo_mysql \t\tpdo_pgsql \t\tpgsql \t\tsoap \t\tzip \t;     pecl install imagick;     docker-php-ext-enable imagick; \tapk --purge del .build-deps;     mkdir -p /var/www/documents;     chown -R www-data:root /var/www;     chmod -R g=u /var/www;     mkdir -p /tmp/dolibarr; \tunzip -q /tmp/dolibarr.zip -d /tmp/dolibarr; \trm /tmp/dolibarr.zip; \tmkdir -p /usr/src/dolibarr; \tcp -r /tmp/dolibarr/dolibarr-${DOLI_VERSION}/* /usr/src/dolibarr; \trm -rf /tmp/dolibarr; \tchmod +x /usr/src/dolibarr/scripts/*" shape="box"];
  "sha256:bd821c543f3a40f87c7734b2c9765ee6f305b468602bbf796549ae0a2885fa85" [label="local://context" shape="ellipse"];
  "sha256:4fc91532a088852b6af23f366b709b61a0290f49fdaf61f84d4a5d99a569eb33" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:146622d43139f4f5dee4712efb2744800ef9066efc98ba596fae378f728ac2a0" [label="/bin/sh -c set -ex; \tchmod 755 /entrypoint.sh" shape="box"];
  "sha256:05b700d8df91a93fbe794eb69fd2bbbf4d51c0ca83ab10632184c96d9e4c97ba" [label="sha256:05b700d8df91a93fbe794eb69fd2bbbf4d51c0ca83ab10632184c96d9e4c97ba" shape="plaintext"];
  "sha256:2d6ab34f28aaa27d9c0257bd4f6d532a532d83862046fd202222e91f6882524e" -> "sha256:f94398a2ef46861131eea0b5855f8b8a8619bdecf193e10a168d1f36f506078c" [label=""];
  "sha256:7500b2f92ddda9fcd1dfd4363ae8e1de47c322608f3bb7b006ebcde1a544563d" -> "sha256:f94398a2ef46861131eea0b5855f8b8a8619bdecf193e10a168d1f36f506078c" [label=""];
  "sha256:f94398a2ef46861131eea0b5855f8b8a8619bdecf193e10a168d1f36f506078c" -> "sha256:a59367f8f8836a1d33132572c55fde976fdacc10b9d85e965d951729d1badac5" [label=""];
  "sha256:a59367f8f8836a1d33132572c55fde976fdacc10b9d85e965d951729d1badac5" -> "sha256:4fc91532a088852b6af23f366b709b61a0290f49fdaf61f84d4a5d99a569eb33" [label=""];
  "sha256:bd821c543f3a40f87c7734b2c9765ee6f305b468602bbf796549ae0a2885fa85" -> "sha256:4fc91532a088852b6af23f366b709b61a0290f49fdaf61f84d4a5d99a569eb33" [label=""];
  "sha256:4fc91532a088852b6af23f366b709b61a0290f49fdaf61f84d4a5d99a569eb33" -> "sha256:146622d43139f4f5dee4712efb2744800ef9066efc98ba596fae378f728ac2a0" [label=""];
  "sha256:146622d43139f4f5dee4712efb2744800ef9066efc98ba596fae378f728ac2a0" -> "sha256:05b700d8df91a93fbe794eb69fd2bbbf4d51c0ca83ab10632184c96d9e4c97ba" [label=""];
}

