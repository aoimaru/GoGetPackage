[app/sources/254921318.Dockerfile]
digraph {
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" [label="docker-image://docker.io/library/php:7.1-fpm" shape="ellipse"];
  "sha256:bb972a3d089d71d70c525e315a208d30b1ab80004c1373965e21375b2698436e" [label="/bin/sh -c apt-get update && apt-get install --no-install-recommends -y         wget         vim         git         unzip" shape="box"];
  "sha256:3c657ec21cfde68e090a7ea5707de1c5ab0d1cddf70afff648b64fe20d7abc13" [label="/bin/sh -c echo \"deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main\" > /etc/apt/sources.list.d/pgdg.list" shape="box"];
  "sha256:11866c17839e5bb64b7380021258deeeddea19a351c3c7fc05293f819a877c63" [label="/bin/sh -c wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc |       apt-key add -" shape="box"];
  "sha256:a137490fe72e10a500076f98c3a60b8f2c58ef79199af1e4edac1458188ca51a" [label="/bin/sh -c apt-get update     && apt-get install --no-install-recommends -y         postgresql-server-dev-9.5         libfreetype6-dev         libjpeg62-turbo-dev         libmcrypt-dev         libpng12-dev         zlib1g-dev         libicu-dev         g++         unixodbc-dev         libxml2-dev         libaio-dev         libmemcached-dev         freetds-dev \tlibssl-dev \topenssl" shape="box"];
  "sha256:c52a9850866fead8e7af4b3fc78bf8ea7bd14d4d2b4a6a1b2e2c3a3693d66fbd" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php --         --install-dir=/usr/local/bin         --filename=composer" shape="box"];
  "sha256:822ac5e7a3a2ed7ba58f4dbc606e8d9df03d4837a5136dc8279daf0daa88078a" [label="/bin/sh -c docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-configure pdo_dblib --with-libdir=/lib/x86_64-linux-gnu     && pecl install sqlsrv-4.1.6.1     && pecl install pdo_sqlsrv-4.1.6.1     && pecl install redis     && pecl install memcached     && pecl install xdebug     && docker-php-ext-install             iconv             mbstring             intl             mcrypt             gd             pgsql             mysqli             pdo_pgsql             pdo_mysql             pdo_dblib             soap             sockets             zip             pcntl             ftp     && docker-php-ext-enable             sqlsrv             pdo_sqlsrv             redis             memcached             opcache             xdebug" shape="box"];
  "sha256:16128ca3c9459d3092948b98c75ca6a4b409fb5a2efc141ddf658660f26e7ef6" [label="/bin/sh -c pecl install apcu     && pecl install apcu_bc-1.0.3     && docker-php-ext-enable apcu --ini-name 10-docker-php-ext-apcu.ini     && docker-php-ext-enable apc --ini-name 20-docker-php-ext-apc.ini" shape="box"];
  "sha256:57dbe104af1adc6182de5189ea28fb795efbc655470ee831435d0b2e7d326024" [label="/bin/sh -c wget https://phar.phpunit.de/phpunit.phar -O /usr/local/bin/phpunit     && chmod +x /usr/local/bin/phpunit" shape="box"];
  "sha256:341abb875e4930904cc274e0875fb4e48b445ff856a0191f067e60f1803134b5" [label="/bin/sh -c apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:806b730386cb0ef50a692d9e60477f3dfd507466925bd02cfd158f91777dff89" [label="sha256:806b730386cb0ef50a692d9e60477f3dfd507466925bd02cfd158f91777dff89" shape="plaintext"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" -> "sha256:bb972a3d089d71d70c525e315a208d30b1ab80004c1373965e21375b2698436e" [label=""];
  "sha256:bb972a3d089d71d70c525e315a208d30b1ab80004c1373965e21375b2698436e" -> "sha256:3c657ec21cfde68e090a7ea5707de1c5ab0d1cddf70afff648b64fe20d7abc13" [label=""];
  "sha256:3c657ec21cfde68e090a7ea5707de1c5ab0d1cddf70afff648b64fe20d7abc13" -> "sha256:11866c17839e5bb64b7380021258deeeddea19a351c3c7fc05293f819a877c63" [label=""];
  "sha256:11866c17839e5bb64b7380021258deeeddea19a351c3c7fc05293f819a877c63" -> "sha256:a137490fe72e10a500076f98c3a60b8f2c58ef79199af1e4edac1458188ca51a" [label=""];
  "sha256:a137490fe72e10a500076f98c3a60b8f2c58ef79199af1e4edac1458188ca51a" -> "sha256:c52a9850866fead8e7af4b3fc78bf8ea7bd14d4d2b4a6a1b2e2c3a3693d66fbd" [label=""];
  "sha256:c52a9850866fead8e7af4b3fc78bf8ea7bd14d4d2b4a6a1b2e2c3a3693d66fbd" -> "sha256:822ac5e7a3a2ed7ba58f4dbc606e8d9df03d4837a5136dc8279daf0daa88078a" [label=""];
  "sha256:822ac5e7a3a2ed7ba58f4dbc606e8d9df03d4837a5136dc8279daf0daa88078a" -> "sha256:16128ca3c9459d3092948b98c75ca6a4b409fb5a2efc141ddf658660f26e7ef6" [label=""];
  "sha256:16128ca3c9459d3092948b98c75ca6a4b409fb5a2efc141ddf658660f26e7ef6" -> "sha256:57dbe104af1adc6182de5189ea28fb795efbc655470ee831435d0b2e7d326024" [label=""];
  "sha256:57dbe104af1adc6182de5189ea28fb795efbc655470ee831435d0b2e7d326024" -> "sha256:341abb875e4930904cc274e0875fb4e48b445ff856a0191f067e60f1803134b5" [label=""];
  "sha256:341abb875e4930904cc274e0875fb4e48b445ff856a0191f067e60f1803134b5" -> "sha256:806b730386cb0ef50a692d9e60477f3dfd507466925bd02cfd158f91777dff89" [label=""];
}

