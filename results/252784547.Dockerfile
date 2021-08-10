[app/sources/252784547.Dockerfile]
digraph {
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" [label="docker-image://docker.io/library/php:5.6-apache" shape="ellipse"];
  "sha256:04d99be004e66c0274853e16afedbe8c6eca96be47bb37b85dbfa8fe15606e00" [label="/bin/sh -c docker-php-source extract && apt-get update && apt-get install -y libmcrypt-dev libldap2-dev nano libmagickwand-dev && rm -rf /var/lib/apt/lists/* && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu && docker-php-ext-install ldap mysqli opcache && pecl install redis-3.1.0 && pecl install xdebug-2.5.0 && pecl install imagick-3.4.1 && docker-php-ext-enable redis xdebug && docker-php-ext-enable imagick && docker-php-source delete && a2enmod rewrite headers" shape="box"];
  "sha256:64550361a87fd2aa5c1e34464d4646cc95cf3f1d68666e3201f756cb916301be" [label="/bin/sh -c { echo 'opcache.memory_consumption=128'; echo 'opcache.interned_strings_buffer=8'; echo 'opcache.max_accelerated_files=4000'; echo 'opcache.revalidate_freq=60'; echo 'opcache.fast_shutdown=1'; echo 'opcache.enable_cli=1'; } > /usr/local/etc/php/conf.d/opcache-recommended.ini && { echo 'max_execution_time=300'; echo 'upload_max_filesize=1000M'; echo 'max_file_uploads=1000'; echo 'post_max_size=1000M'; echo 'xdebug.remote_enable=1'; echo 'xdebug.remote_host='$XDEBUG_REMOTE_HOST; } > /usr/local/etc/php/conf.d/custom-php.ini" shape="box"];
  "sha256:331647466a39f7dda36ad047774ec4239b6b7f432ec3a90741ce84dd154bccb3" [label="local://context" shape="ellipse"];
  "sha256:b646073382207b2e1acf6c2fda6ddcab0885cbb909c5a1ef2989b503d9b5f156" [label="copy{src=/index.php, dest=/var/www/html}" shape="note"];
  "sha256:f5c8de25cbca7232d6f38f8d7629b542327344ecf9d74ddfa16f19d1e88c30e6" [label="sha256:f5c8de25cbca7232d6f38f8d7629b542327344ecf9d74ddfa16f19d1e88c30e6" shape="plaintext"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" -> "sha256:04d99be004e66c0274853e16afedbe8c6eca96be47bb37b85dbfa8fe15606e00" [label=""];
  "sha256:04d99be004e66c0274853e16afedbe8c6eca96be47bb37b85dbfa8fe15606e00" -> "sha256:64550361a87fd2aa5c1e34464d4646cc95cf3f1d68666e3201f756cb916301be" [label=""];
  "sha256:64550361a87fd2aa5c1e34464d4646cc95cf3f1d68666e3201f756cb916301be" -> "sha256:b646073382207b2e1acf6c2fda6ddcab0885cbb909c5a1ef2989b503d9b5f156" [label=""];
  "sha256:331647466a39f7dda36ad047774ec4239b6b7f432ec3a90741ce84dd154bccb3" -> "sha256:b646073382207b2e1acf6c2fda6ddcab0885cbb909c5a1ef2989b503d9b5f156" [label=""];
  "sha256:b646073382207b2e1acf6c2fda6ddcab0885cbb909c5a1ef2989b503d9b5f156" -> "sha256:f5c8de25cbca7232d6f38f8d7629b542327344ecf9d74ddfa16f19d1e88c30e6" [label=""];
}

