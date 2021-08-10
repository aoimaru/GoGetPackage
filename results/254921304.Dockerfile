[app/sources/254921304.Dockerfile]
digraph {
  "sha256:3387dae5d0d2453ab649307572bc9c261da1fe023b74e78639648d4c30efb9b1" [label="docker-image://docker.io/merorafael/php-legacy:5.4-cli" shape="ellipse"];
  "sha256:e3c244678100e407908aead86f6ef5e8c24c43529f466150014686bf5bdca37b" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y         wget         vim         git         unzip" shape="box"];
  "sha256:7f87d7f22dd2a3ca7b4542fcb05694e4c209a2baa488e5c871555d59812513e1" [label="/bin/sh -c echo \"deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main\" > /etc/apt/sources.list.d/pgdg.list" shape="box"];
  "sha256:5e6201106f9fe767bd246d868643e193a72744691efe6fd9e07fadd18e00bf15" [label="/bin/sh -c wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc |       apt-key add -" shape="box"];
  "sha256:fd039ff173d3c6b6f2725b4fd37b2491b8e597f49360eb4c657142a641157a78" [label="/bin/sh -c apt-get update     && apt-get install --no-install-recommends -y         postgresql-server-dev-9.5         libfreetype6-dev         libjpeg62-turbo-dev         libmcrypt-dev         libpng12-dev         zlib1g-dev         libicu-dev         g++         unixodbc-dev         libxml2-dev         libaio-dev         libgearman-dev         libmemcached-dev         freetds-dev \tlibssl-dev \topenssl" shape="box"];
  "sha256:0d28e2bd7795192a057abe7d23a2770abe1c98f9a478ade9b9a1a2a1e1f97b6f" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php --         --install-dir=/usr/local/bin         --filename=composer" shape="box"];
  "sha256:d98d619c5987303646c37815153285b2ab397aaee1abb92a54f4740e13cce7c3" [label="/bin/sh -c docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-configure pdo_dblib --with-libdir=/lib/x86_64-linux-gnu     && pecl install apcu-4.0.10     && pecl install redis-2.2.8     && pecl install memcached-2.2.0     && pecl install ZendOpcache-7.0.4     && pecl install xdebug-2.4.1     && docker-php-ext-install             iconv             mbstring             intl             mcrypt             gd             pgsql             mysqli             pdo_pgsql             pdo_mysql             pdo_dblib             soap             sockets             zip             pcntl             ftp     && docker-php-ext-enable             apcu             memcached             redis             opcache             xdebug" shape="box"];
  "sha256:13635d9f4c13904384d2ec0e9a76d9ec37d2283e45aa4ba5a3c78f95b41b3902" [label="/bin/sh -c wget https://phar.phpunit.de/phpunit.phar -O /usr/local/bin/phpunit     && chmod +x /usr/local/bin/phpunit" shape="box"];
  "sha256:183dada3fc068d542bb74da8fa452e64d510bc81dff469d378ca1f5cf7d6b95c" [label="/bin/sh -c apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c8a7dcccc63a7ce5fd8ff7f06ddec8024a09f2bcd9b881917ff84d070ee56cdb" [label="sha256:c8a7dcccc63a7ce5fd8ff7f06ddec8024a09f2bcd9b881917ff84d070ee56cdb" shape="plaintext"];
  "sha256:3387dae5d0d2453ab649307572bc9c261da1fe023b74e78639648d4c30efb9b1" -> "sha256:e3c244678100e407908aead86f6ef5e8c24c43529f466150014686bf5bdca37b" [label=""];
  "sha256:e3c244678100e407908aead86f6ef5e8c24c43529f466150014686bf5bdca37b" -> "sha256:7f87d7f22dd2a3ca7b4542fcb05694e4c209a2baa488e5c871555d59812513e1" [label=""];
  "sha256:7f87d7f22dd2a3ca7b4542fcb05694e4c209a2baa488e5c871555d59812513e1" -> "sha256:5e6201106f9fe767bd246d868643e193a72744691efe6fd9e07fadd18e00bf15" [label=""];
  "sha256:5e6201106f9fe767bd246d868643e193a72744691efe6fd9e07fadd18e00bf15" -> "sha256:fd039ff173d3c6b6f2725b4fd37b2491b8e597f49360eb4c657142a641157a78" [label=""];
  "sha256:fd039ff173d3c6b6f2725b4fd37b2491b8e597f49360eb4c657142a641157a78" -> "sha256:0d28e2bd7795192a057abe7d23a2770abe1c98f9a478ade9b9a1a2a1e1f97b6f" [label=""];
  "sha256:0d28e2bd7795192a057abe7d23a2770abe1c98f9a478ade9b9a1a2a1e1f97b6f" -> "sha256:d98d619c5987303646c37815153285b2ab397aaee1abb92a54f4740e13cce7c3" [label=""];
  "sha256:d98d619c5987303646c37815153285b2ab397aaee1abb92a54f4740e13cce7c3" -> "sha256:13635d9f4c13904384d2ec0e9a76d9ec37d2283e45aa4ba5a3c78f95b41b3902" [label=""];
  "sha256:13635d9f4c13904384d2ec0e9a76d9ec37d2283e45aa4ba5a3c78f95b41b3902" -> "sha256:183dada3fc068d542bb74da8fa452e64d510bc81dff469d378ca1f5cf7d6b95c" [label=""];
  "sha256:183dada3fc068d542bb74da8fa452e64d510bc81dff469d378ca1f5cf7d6b95c" -> "sha256:c8a7dcccc63a7ce5fd8ff7f06ddec8024a09f2bcd9b881917ff84d070ee56cdb" [label=""];
}

