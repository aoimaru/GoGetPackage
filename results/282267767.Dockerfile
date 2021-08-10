[app/sources/282267767.Dockerfile]
digraph {
  "sha256:8f3ba236b0be13e2902e7e321de1e55526512e3bff4faa182d02b052224dc63d" [label="local://context" shape="ellipse"];
  "sha256:40183ab8a455b60b2dd3647beda6c0fd2598e99eb5ebda64e513867b277698f0" [label="docker-image://docker.io/webdevops/base-app:ubuntu-14.04@sha256:f567a426fc38c56cc4b0fb3262f702c5ea59795ac1b7c6a41717897bb0c841da" shape="ellipse"];
  "sha256:c4c691d3db4536d366ed9a7524d166508c34c8718bf2668c0a5d07f71d9c06f1" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:d2855d6e7739645ca3c723c5dc236f5979b4bf11af0d0d28a202f9e88e7ca723" [label="/bin/sh -c set -x     && apt-install         imagemagick         graphicsmagick         ghostscript         php5-cli         php5-fpm         php5-json         php5-intl         php5-imap         php5-curl         php5-mysqlnd         php5-mongo         php5-mcrypt         php5-gd         php5-sqlite         php5-pgsql         php5-xmlrpc         php5-xsl         php5-geoip         php5-ldap         php5-memcache         php5-memcached         php5-imagick         php5-redis         php5-apcu         php-pear     && pecl channel-update pecl.php.net     && pear config-set auto_discover 1     && ln -sf /etc/php5/mods-available/mcrypt.in /etc/php5/cli/conf.d/20-mcrypt.ini     && ln -sf /etc/php5/mods-available/mcrypt.in /etc/php5/fpm/conf.d/20-mcrypt.ini     && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer     && docker-service enable syslog     && docker-service enable cron     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:67f840b2cab7a879b440791eed6450002f1c6d8f42c6685bf80dbd782e4b8822" [label="sha256:67f840b2cab7a879b440791eed6450002f1c6d8f42c6685bf80dbd782e4b8822" shape="plaintext"];
  "sha256:40183ab8a455b60b2dd3647beda6c0fd2598e99eb5ebda64e513867b277698f0" -> "sha256:c4c691d3db4536d366ed9a7524d166508c34c8718bf2668c0a5d07f71d9c06f1" [label=""];
  "sha256:8f3ba236b0be13e2902e7e321de1e55526512e3bff4faa182d02b052224dc63d" -> "sha256:c4c691d3db4536d366ed9a7524d166508c34c8718bf2668c0a5d07f71d9c06f1" [label=""];
  "sha256:c4c691d3db4536d366ed9a7524d166508c34c8718bf2668c0a5d07f71d9c06f1" -> "sha256:d2855d6e7739645ca3c723c5dc236f5979b4bf11af0d0d28a202f9e88e7ca723" [label=""];
  "sha256:d2855d6e7739645ca3c723c5dc236f5979b4bf11af0d0d28a202f9e88e7ca723" -> "sha256:67f840b2cab7a879b440791eed6450002f1c6d8f42c6685bf80dbd782e4b8822" [label=""];
}

