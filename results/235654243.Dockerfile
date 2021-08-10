[app/sources/235654243.Dockerfile]
digraph {
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:bbcd0f87ae9be40b0898d6843559255f91db28fe060750c4ee709ed48a983ca9" [label="/bin/sh -c set -ex     && apt-get update && apt-get install -y         libfreetype6-dev         libjpeg62-turbo-dev         libpng-dev         libmcrypt-dev         libicu-dev         libxml2-dev         libxslt1-dev     && docker-php-ext-install -j$(nproc) iconv mcrypt bcmath intl zip pdo_mysql soap xsl     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install -j$(nproc) gd     && rm -rf /usr/src/* /var/lib/apt/lists/*" shape="box"];
  "sha256:8e25f4f5d67dbd4c7cc15f0448c33c7b42802d07ea4cf93246536be580e2916b" [label="/bin/sh -c set -ex     && cd /var/www/html     && curl -sSL https://github.com/magento/magento2/archive/2.2.7.tar.gz | tar xvz --strip-components=1     && curl -sSL https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename composer     && composer install     && chown www-data:www-data -R .     && a2enmod rewrite" shape="box"];
  "sha256:57d8a2870333988449030f98647c2f0540b01b2f5d779f4468068183a2cbdb09" [label="sha256:57d8a2870333988449030f98647c2f0540b01b2f5d779f4468068183a2cbdb09" shape="plaintext"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:bbcd0f87ae9be40b0898d6843559255f91db28fe060750c4ee709ed48a983ca9" [label=""];
  "sha256:bbcd0f87ae9be40b0898d6843559255f91db28fe060750c4ee709ed48a983ca9" -> "sha256:8e25f4f5d67dbd4c7cc15f0448c33c7b42802d07ea4cf93246536be580e2916b" [label=""];
  "sha256:8e25f4f5d67dbd4c7cc15f0448c33c7b42802d07ea4cf93246536be580e2916b" -> "sha256:57d8a2870333988449030f98647c2f0540b01b2f5d779f4468068183a2cbdb09" [label=""];
}

