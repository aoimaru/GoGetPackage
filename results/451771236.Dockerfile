[app/sources/451771236.Dockerfile]
digraph {
  "sha256:e0c6b04597d619b78a851d48fb962985f3c032e79c8382268614ad0f50ef041e" [label="docker-image://docker.io/library/php:7.3-apache-stretch@sha256:77ca73b730abea4a9e94b547e9708ba8bdd592a4a6c0cf44a27b4aa4d60996c6" shape="ellipse"];
  "sha256:746c6cac641c98a0b1bc22ee73fce6cfcb22cc9c1eb10e5b0867c95a14bacca4" [label="docker-image://docker.io/library/composer@sha256:0d86184f928c117a601f21d60bc6138b1aa18b20ecbe3a1e7eb3dcbc30434cde" shape="ellipse"];
  "sha256:7249bb1c2901bada2a7168fbb728280ed6cadc6f2b1d55133254bcb0a20fc01f" [label="copy{src=/usr/bin/composer, dest=/usr/bin/composer}" shape="note"];
  "sha256:7d0c6107ef182c506f2737aa79d4c2e125b12babd645a5c6af1c01fa536a8221" [label="/bin/sh -c apt-get update     && apt-get install sudo libldap2-dev zlib1g-dev libicu-dev libzip-dev libzip4 -y     && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu/     && docker-php-ext-install ldap     && docker-php-ext-install zip     && docker-php-ext-install pdo_mysql     && docker-php-ext-install intl     && pecl channel-update pecl.php.net     && pecl install apcu     && docker-php-ext-enable apcu     && docker-php-ext-enable opcache     && a2enmod rewrite socache_shmcb mpm_prefork http2     && rm -rf /var/lib/apt/lists/*     && apt-get purge libldap2-dev zlib1g-dev libicu-dev -y     && apt-get autoremove -y" shape="box"];
  "sha256:5bef8a7b11e38f96f3c54532c0245bd61986ab4ddb1276a712a554efa51c5ee8" [label="local://context" shape="ellipse"];
  "sha256:c0eb2d4e6bed97c1b31c4da73ff766f68c72614a96b8f4eef2cb84d7a54d45ea" [label="copy{src=/docker/php.ini, dest=/usr/local/etc/php}" shape="note"];
  "sha256:08d28f9c2f70d7138de73026f1592ee0905c5fa6c3e3dd7b5bdf68f236ce13e0" [label="copy{src=/docker/apache.conf, dest=/etc/apache2/sites-enabled/000-default.conf}" shape="note"];
  "sha256:f20f41701c433fa646b109d003a49b046e719c415c83d807737bddb259669c2b" [label="copy{src=/, dest=/var/www/ilios}" shape="note"];
  "sha256:91258dc4b820ad1b19296da69c5e4a8f5a154b14a0609548b0f8e7bb551c614c" [label="copy{src=/docker/monolog.yaml, dest=/var/www/ilios/config/packages/prod}" shape="note"];
  "sha256:904977252f062d6ba6552386efa130de5fcdcc6de54bb7135c1d3475dcee35a5" [label="copy{src=/docker/ilios-entrypoint, dest=/usr/local/bin/}" shape="note"];
  "sha256:55a38804d57628d224152eeae860a52925a97300e410901487e4fc566257b797" [label="mkdir{path=/var/www/ilios}" shape="note"];
  "sha256:5283a39b1f5ae112be967d5eab4227257e89de9e31b0f1c4678c9937e2628e0d" [label="/bin/sh -c chown -R www-data:www-data /var/www/ilios" shape="box"];
  "sha256:6b2980b598140fbcac67b32bfdbcd059b988e3109030f2deaf1c8d4692e39546" [label="/bin/sh -c /usr/bin/composer install     --working-dir /var/www/ilios     --prefer-dist     --no-dev     --no-progress     --no-interaction     --no-suggest     --classmap-authoritative     && /usr/bin/composer dump-env $APP_ENV     && /usr/bin/composer clear-cache     && /var/www/ilios/bin/console assets:install" shape="box"];
  "sha256:358c65314b057730bc046b886623898e2b82af08f9db7d78f24f0fcd0e21f650" [label="sha256:358c65314b057730bc046b886623898e2b82af08f9db7d78f24f0fcd0e21f650" shape="plaintext"];
  "sha256:e0c6b04597d619b78a851d48fb962985f3c032e79c8382268614ad0f50ef041e" -> "sha256:7249bb1c2901bada2a7168fbb728280ed6cadc6f2b1d55133254bcb0a20fc01f" [label=""];
  "sha256:746c6cac641c98a0b1bc22ee73fce6cfcb22cc9c1eb10e5b0867c95a14bacca4" -> "sha256:7249bb1c2901bada2a7168fbb728280ed6cadc6f2b1d55133254bcb0a20fc01f" [label=""];
  "sha256:7249bb1c2901bada2a7168fbb728280ed6cadc6f2b1d55133254bcb0a20fc01f" -> "sha256:7d0c6107ef182c506f2737aa79d4c2e125b12babd645a5c6af1c01fa536a8221" [label=""];
  "sha256:7d0c6107ef182c506f2737aa79d4c2e125b12babd645a5c6af1c01fa536a8221" -> "sha256:c0eb2d4e6bed97c1b31c4da73ff766f68c72614a96b8f4eef2cb84d7a54d45ea" [label=""];
  "sha256:5bef8a7b11e38f96f3c54532c0245bd61986ab4ddb1276a712a554efa51c5ee8" -> "sha256:c0eb2d4e6bed97c1b31c4da73ff766f68c72614a96b8f4eef2cb84d7a54d45ea" [label=""];
  "sha256:c0eb2d4e6bed97c1b31c4da73ff766f68c72614a96b8f4eef2cb84d7a54d45ea" -> "sha256:08d28f9c2f70d7138de73026f1592ee0905c5fa6c3e3dd7b5bdf68f236ce13e0" [label=""];
  "sha256:5bef8a7b11e38f96f3c54532c0245bd61986ab4ddb1276a712a554efa51c5ee8" -> "sha256:08d28f9c2f70d7138de73026f1592ee0905c5fa6c3e3dd7b5bdf68f236ce13e0" [label=""];
  "sha256:08d28f9c2f70d7138de73026f1592ee0905c5fa6c3e3dd7b5bdf68f236ce13e0" -> "sha256:f20f41701c433fa646b109d003a49b046e719c415c83d807737bddb259669c2b" [label=""];
  "sha256:5bef8a7b11e38f96f3c54532c0245bd61986ab4ddb1276a712a554efa51c5ee8" -> "sha256:f20f41701c433fa646b109d003a49b046e719c415c83d807737bddb259669c2b" [label=""];
  "sha256:f20f41701c433fa646b109d003a49b046e719c415c83d807737bddb259669c2b" -> "sha256:91258dc4b820ad1b19296da69c5e4a8f5a154b14a0609548b0f8e7bb551c614c" [label=""];
  "sha256:5bef8a7b11e38f96f3c54532c0245bd61986ab4ddb1276a712a554efa51c5ee8" -> "sha256:91258dc4b820ad1b19296da69c5e4a8f5a154b14a0609548b0f8e7bb551c614c" [label=""];
  "sha256:91258dc4b820ad1b19296da69c5e4a8f5a154b14a0609548b0f8e7bb551c614c" -> "sha256:904977252f062d6ba6552386efa130de5fcdcc6de54bb7135c1d3475dcee35a5" [label=""];
  "sha256:5bef8a7b11e38f96f3c54532c0245bd61986ab4ddb1276a712a554efa51c5ee8" -> "sha256:904977252f062d6ba6552386efa130de5fcdcc6de54bb7135c1d3475dcee35a5" [label=""];
  "sha256:904977252f062d6ba6552386efa130de5fcdcc6de54bb7135c1d3475dcee35a5" -> "sha256:55a38804d57628d224152eeae860a52925a97300e410901487e4fc566257b797" [label=""];
  "sha256:55a38804d57628d224152eeae860a52925a97300e410901487e4fc566257b797" -> "sha256:5283a39b1f5ae112be967d5eab4227257e89de9e31b0f1c4678c9937e2628e0d" [label=""];
  "sha256:5283a39b1f5ae112be967d5eab4227257e89de9e31b0f1c4678c9937e2628e0d" -> "sha256:6b2980b598140fbcac67b32bfdbcd059b988e3109030f2deaf1c8d4692e39546" [label=""];
  "sha256:6b2980b598140fbcac67b32bfdbcd059b988e3109030f2deaf1c8d4692e39546" -> "sha256:358c65314b057730bc046b886623898e2b82af08f9db7d78f24f0fcd0e21f650" [label=""];
}

