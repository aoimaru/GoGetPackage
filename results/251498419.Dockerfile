[app/sources/251498419.Dockerfile]
digraph {
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:7c0dd32f360d4963262820c55cda3312f312ab715f510de23c9dc13904b8bf2d" [label="/bin/sh -c apt-get -y update     && apt-get install -y libicu-dev    \ttree         vim         wget         git         libzip-dev         zlib1g-dev         zip     && docker-php-ext-configure intl     && docker-php-ext-install intl     && docker-php-ext-configure zip --with-libzip     && docker-php-ext-install zip mysqli pdo pdo_mysql     && chmod -R 777 /etc/apache2  /var/www /var/lib/apache2 /var/log     && chown -R www-data:www-data /var/www             && sed -i \"s/80/8080/g\" /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf     && sed -i 's/\\/var\\/www\\/html/\\/projects/g'  /etc/apache2/sites-available/000-default.conf     && sed -i 's/\\/var\\/www/\\/projects/g'  /etc/apache2/apache2.conf     && sed -i 's/None/All/g' /etc/apache2/sites-available/000-default.conf     && echo \"ServerName localhost\" | tee -a /etc/apache2/apache2.conf" shape="box"];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" [label="docker-image://docker.io/library/composer:latest" shape="ellipse"];
  "sha256:50f052b27fe06f2445a1434c5afea274552597c361798c6ba9d7f12e638d8583" [label="copy{src=/usr/bin/composer, dest=/usr/bin/composer}" shape="note"];
  "sha256:269119f494817aa419a67c2b2a55bdd81862c6361b467b6db76902e5d487f32d" [label="mkdir{path=/projects}" shape="note"];
  "sha256:0f03c93c9d6e26547a7631495b431a8e18b1043bbfeca9ef1c34b3941fdb1e1f" [label="sha256:0f03c93c9d6e26547a7631495b431a8e18b1043bbfeca9ef1c34b3941fdb1e1f" shape="plaintext"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:7c0dd32f360d4963262820c55cda3312f312ab715f510de23c9dc13904b8bf2d" [label=""];
  "sha256:7c0dd32f360d4963262820c55cda3312f312ab715f510de23c9dc13904b8bf2d" -> "sha256:50f052b27fe06f2445a1434c5afea274552597c361798c6ba9d7f12e638d8583" [label=""];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" -> "sha256:50f052b27fe06f2445a1434c5afea274552597c361798c6ba9d7f12e638d8583" [label=""];
  "sha256:50f052b27fe06f2445a1434c5afea274552597c361798c6ba9d7f12e638d8583" -> "sha256:269119f494817aa419a67c2b2a55bdd81862c6361b467b6db76902e5d487f32d" [label=""];
  "sha256:269119f494817aa419a67c2b2a55bdd81862c6361b467b6db76902e5d487f32d" -> "sha256:0f03c93c9d6e26547a7631495b431a8e18b1043bbfeca9ef1c34b3941fdb1e1f" [label=""];
}

