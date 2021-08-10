[app/sources/250949971.Dockerfile]
digraph {
  "sha256:b323f4c7f46f6d12189d61b0b217494d8c15684627720d0a426ba84fffdcd5a6" [label="docker-image://docker.io/library/php:7.0" shape="ellipse"];
  "sha256:1467522388b4d8d37d726095ebb7d3de6f08d19d93a082eed6abe3425c59a63f" [label="/bin/sh -c apt-get update   && apt-get install -y libcurl4-openssl-dev sudo git libxslt-dev mercurial subversion zlib1g-dev graphviz zip libmcrypt-dev libicu-dev g++ libpcre3-dev libgd-dev libfreetype6-dev sqlite   && apt-get clean   && docker-php-ext-install soap   && docker-php-ext-install zip   && docker-php-ext-install xsl   && docker-php-ext-install mcrypt   && docker-php-ext-install mbstring   && docker-php-ext-install gettext   && docker-php-ext-install curl   && docker-php-ext-install pdo_mysql   && docker-php-ext-install json   && docker-php-ext-install intl   && docker-php-ext-install opcache   && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/   && docker-php-ext-install gd" shape="box"];
  "sha256:14b27f4b3b1784ac79928ec3f6253c5f2d13f43749bbd01a44387d69e43deaf8" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:87630148c01bec4de6838352edc257119802d7328bd695cc12ae4f114f30dd43" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_12.x | bash && apt-get install -y nodejs && apt-get clean" shape="box"];
  "sha256:b3c8cfce9df65c6469da194ab641492b88284a12085d45b6a64eb00b4328d3b8" [label="sha256:b3c8cfce9df65c6469da194ab641492b88284a12085d45b6a64eb00b4328d3b8" shape="plaintext"];
  "sha256:b323f4c7f46f6d12189d61b0b217494d8c15684627720d0a426ba84fffdcd5a6" -> "sha256:1467522388b4d8d37d726095ebb7d3de6f08d19d93a082eed6abe3425c59a63f" [label=""];
  "sha256:1467522388b4d8d37d726095ebb7d3de6f08d19d93a082eed6abe3425c59a63f" -> "sha256:14b27f4b3b1784ac79928ec3f6253c5f2d13f43749bbd01a44387d69e43deaf8" [label=""];
  "sha256:14b27f4b3b1784ac79928ec3f6253c5f2d13f43749bbd01a44387d69e43deaf8" -> "sha256:87630148c01bec4de6838352edc257119802d7328bd695cc12ae4f114f30dd43" [label=""];
  "sha256:87630148c01bec4de6838352edc257119802d7328bd695cc12ae4f114f30dd43" -> "sha256:b3c8cfce9df65c6469da194ab641492b88284a12085d45b6a64eb00b4328d3b8" [label=""];
}

