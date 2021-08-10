[app/sources/320102699.Dockerfile]
digraph {
  "sha256:3f09f3ab9273ccce3e0570cc8b47d971c44f3870242a5a5bc6c9a393445a2521" [label="docker-image://docker.io/webdevops/base-app:ubuntu-15.10@sha256:72220a66ab0df0c299b25b25364591c6f01e0ed4b8ca2d988cb0c2e806e67851" shape="ellipse"];
  "sha256:97a40b49e8cf14b57d74fe444766e89c41ebbfd6290bdf3fe1df6138ec6da818" [label="local://context" shape="ellipse"];
  "sha256:06644767cbe7c4bcb7a14d3a381e1dda5f297148a4e613897fb981787d835dcb" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:def6becdb483851d85e1385c4154ba90fd46ba1a21d51b5fc35318c673703613" [label="/bin/sh -c set -x     && apt-install         imagemagick         graphicsmagick         ghostscript         php5-cli         php5-fpm         php5-json         php5-intl         php5-curl         php5-mysqlnd         php5-mcrypt         php5-gd         php5-sqlite         php5-xmlrpc         php5-xsl         php5-geoip         php5-ldap         php5-memcache         php5-memcached         php5-imagick         php5-redis         php5-apcu         php-pear     && pecl channel-update pecl.php.net     && pear channel-update pear.php.net     && pear upgrade-all     && pear config-set auto_discover 1     && ln -sf /etc/php5/mods-available/mcrypt.in /etc/php5/cli/conf.d/20-mcrypt.ini     && ln -sf /etc/php5/mods-available/mcrypt.in /etc/php5/fpm/conf.d/20-mcrypt.ini     && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer     && docker-service enable syslog     && docker-service enable cron     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:1db8fa1916b98fcaf6b55589ddf7de64f2cebbf18464f179bde3f66a79017399" [label="sha256:1db8fa1916b98fcaf6b55589ddf7de64f2cebbf18464f179bde3f66a79017399" shape="plaintext"];
  "sha256:3f09f3ab9273ccce3e0570cc8b47d971c44f3870242a5a5bc6c9a393445a2521" -> "sha256:06644767cbe7c4bcb7a14d3a381e1dda5f297148a4e613897fb981787d835dcb" [label=""];
  "sha256:97a40b49e8cf14b57d74fe444766e89c41ebbfd6290bdf3fe1df6138ec6da818" -> "sha256:06644767cbe7c4bcb7a14d3a381e1dda5f297148a4e613897fb981787d835dcb" [label=""];
  "sha256:06644767cbe7c4bcb7a14d3a381e1dda5f297148a4e613897fb981787d835dcb" -> "sha256:def6becdb483851d85e1385c4154ba90fd46ba1a21d51b5fc35318c673703613" [label=""];
  "sha256:def6becdb483851d85e1385c4154ba90fd46ba1a21d51b5fc35318c673703613" -> "sha256:1db8fa1916b98fcaf6b55589ddf7de64f2cebbf18464f179bde3f66a79017399" [label=""];
}

