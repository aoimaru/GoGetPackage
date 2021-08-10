[app/sources/188466555.Dockerfile]
digraph {
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" [label="docker-image://docker.io/library/ubuntu:bionic" shape="ellipse"];
  "sha256:3dd66c1e6c0105d1c6447c7460c7098e3873f80ed104411631c8b7dbdc1092ab" [label="/bin/sh -c apt-get update;   dpkg-divert --local --rename --add /sbin/initctl;   ln -sf /bin/true /sbin/initctl;   apt-get -y install git curl wget supervisor openssh-server locales   mysql-client mysql-server apache2 pwgen vim-tiny mc iproute2 python-setuptools   unison netcat net-tools memcached nano libapache2-mod-php php php-cli php-common   php-gd php-json php-mbstring php-xdebug php-mysql php-opcache php-curl   php-readline php-xml php-memcached php-oauth php-bcmath;   apt-get clean;   apt-get autoclean;   apt-get -y autoremove;   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0b1b5f857daec3ee4aef2d861ac91ab513c46caff44dc7299c96af20201960f6" [label="/bin/sh -c sed 's@session\\s*required\\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd;   echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config;   locale-gen en_US.UTF-8;   mkdir -p /var/lock/apache2 /var/run/apache2 /var/run/sshd /var/log/supervisor" shape="box"];
  "sha256:d0e65a6f53d28a21dabf5e542c14213bbc5d9db9da6dd5bf96cc2beb7133a25b" [label="/bin/sh -c echo \"export VISIBLE=now\" >> /etc/profile;   rm -rf /var/lib/mysql/*; /usr/sbin/mysqld --initialize-insecure;   sed -i 's/^bind-address/#bind-address/g' /etc/mysql/mysql.conf.d/mysqld.cnf;   sed -i \"s/^bind-address/#bind-address/\" /etc/mysql/my.cnf" shape="box"];
  "sha256:30a30781ac7f6f657c835eff47104462d6673b2b70b5abc255ef64dbd93badaa" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer   && HOME=/ /usr/local/bin/composer global require drush/drush:~8   && ln -s /.composer/vendor/drush/drush/drush /usr/local/bin/drush   && curl https://drupalconsole.com/installer -L -o /usr/local/bin/drupal   && chmod +x /usr/local/bin/drupal   && php --version; composer --version; drupal --version; drush --version" shape="box"];
  "sha256:16fcedc5ba1233a52cbab4ccdefad725906d92a3709ee95fc27ca94d553fe5ee" [label="local://context" shape="ellipse"];
  "sha256:aea3d88b2476defb696e7520e857ae24fba37c0eebf6b381a89e0ef7b78c0107" [label="copy{src=/files/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:6d303adda1e025f70ca466e8875b8ccebd0d64881ce9be52135ae1ad4f668535" [label="copy{src=/files/start.sh, dest=/start.sh}" shape="note"];
  "sha256:f8389270da8b3ca993662b70c020dea2006b05ad554e361d1d2e624060390931" [label="copy{src=/files/foreground.sh, dest=/etc/apache2/foreground.sh}" shape="note"];
  "sha256:4544d67a47372d4d38d0eab70f74716d399ea7f64b94775d594d8383d28210fd" [label="/bin/sh -c rm /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-enabled/*" shape="box"];
  "sha256:5932693c446efdfb27a78dfd8b1a00f55dc373042e9a0a0afff28bfc34edf5ee" [label="copy{src=/files/000-default.conf, dest=/etc/apache2/sites-available/000-default.conf}" shape="note"];
  "sha256:e05f81781c1b7c8abae2618837341f62790fc81e4c03a0893fa23c230710c00b" [label="copy{src=/files/xdebug.ini, dest=/etc/php/7.2/mods-available/xdebug.ini}" shape="note"];
  "sha256:ea7e7939c13d8919f278d86d9046905059974c2a4f5ce5d394a20f7b23cb68f3" [label="/bin/sh -c a2ensite 000-default ; a2enmod rewrite vhost_alias" shape="box"];
  "sha256:8140c4db256475433c8fe981367a758ea59e53b7198aa5895cb3220bfcc2b822" [label="https://updates.drupal.org/release-history/drupal/8.x" shape="ellipse"];
  "sha256:6e5fa4697b259cd69c894e0dcb9544d53cf8b029d096a510dde34f359110d7f4" [label="copy{src=/8.x, dest=/tmp/latest.xml}" shape="note"];
  "sha256:ad83a766ab1863d4d17e2b71644fe8834a409fc2abd92aed41deb1d3c20949c7" [label="/bin/sh -c /bin/bash -t     && cd /var/www/html; drush -v dl drupal --default-major=8  --drupal-project-rename=\"web\"     && cd /var/www/html; chmod a+w web/sites/default;     mkdir web/sites/default/files; chown -R www-data:www-data /var/www/html/;     chmod -R ug+w /var/www/html/ ;     wget \"http://www.adminer.org/latest.php\" -O /var/www/html/web/adminer.php" shape="box"];
  "sha256:662950ecf772e45fbc3b9ee56c1a0e85863588425a49d4f135998f8c7b64b4fd" [label="/bin/sh -c mkdir -p /var/run/mysqld;     chown mysql:mysql /var/run/mysqld;     chmod 755 /start.sh /etc/apache2/foreground.sh" shape="box"];
  "sha256:98edd636963a78c73bb2fc1a807fcb6c25114ff6581858e11ee04c09c803a4f1" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:3473154a2de1e3785e5696169fbbc0ba96012e238e7995735b31d9d09d66a0ae" [label="sha256:3473154a2de1e3785e5696169fbbc0ba96012e238e7995735b31d9d09d66a0ae" shape="plaintext"];
  "sha256:d20029e6da5ee62f143d53bd3ac8bc169940d82a921fe26eaaf03f2977c65579" -> "sha256:3dd66c1e6c0105d1c6447c7460c7098e3873f80ed104411631c8b7dbdc1092ab" [label=""];
  "sha256:3dd66c1e6c0105d1c6447c7460c7098e3873f80ed104411631c8b7dbdc1092ab" -> "sha256:0b1b5f857daec3ee4aef2d861ac91ab513c46caff44dc7299c96af20201960f6" [label=""];
  "sha256:0b1b5f857daec3ee4aef2d861ac91ab513c46caff44dc7299c96af20201960f6" -> "sha256:d0e65a6f53d28a21dabf5e542c14213bbc5d9db9da6dd5bf96cc2beb7133a25b" [label=""];
  "sha256:d0e65a6f53d28a21dabf5e542c14213bbc5d9db9da6dd5bf96cc2beb7133a25b" -> "sha256:30a30781ac7f6f657c835eff47104462d6673b2b70b5abc255ef64dbd93badaa" [label=""];
  "sha256:30a30781ac7f6f657c835eff47104462d6673b2b70b5abc255ef64dbd93badaa" -> "sha256:aea3d88b2476defb696e7520e857ae24fba37c0eebf6b381a89e0ef7b78c0107" [label=""];
  "sha256:16fcedc5ba1233a52cbab4ccdefad725906d92a3709ee95fc27ca94d553fe5ee" -> "sha256:aea3d88b2476defb696e7520e857ae24fba37c0eebf6b381a89e0ef7b78c0107" [label=""];
  "sha256:aea3d88b2476defb696e7520e857ae24fba37c0eebf6b381a89e0ef7b78c0107" -> "sha256:6d303adda1e025f70ca466e8875b8ccebd0d64881ce9be52135ae1ad4f668535" [label=""];
  "sha256:16fcedc5ba1233a52cbab4ccdefad725906d92a3709ee95fc27ca94d553fe5ee" -> "sha256:6d303adda1e025f70ca466e8875b8ccebd0d64881ce9be52135ae1ad4f668535" [label=""];
  "sha256:6d303adda1e025f70ca466e8875b8ccebd0d64881ce9be52135ae1ad4f668535" -> "sha256:f8389270da8b3ca993662b70c020dea2006b05ad554e361d1d2e624060390931" [label=""];
  "sha256:16fcedc5ba1233a52cbab4ccdefad725906d92a3709ee95fc27ca94d553fe5ee" -> "sha256:f8389270da8b3ca993662b70c020dea2006b05ad554e361d1d2e624060390931" [label=""];
  "sha256:f8389270da8b3ca993662b70c020dea2006b05ad554e361d1d2e624060390931" -> "sha256:4544d67a47372d4d38d0eab70f74716d399ea7f64b94775d594d8383d28210fd" [label=""];
  "sha256:4544d67a47372d4d38d0eab70f74716d399ea7f64b94775d594d8383d28210fd" -> "sha256:5932693c446efdfb27a78dfd8b1a00f55dc373042e9a0a0afff28bfc34edf5ee" [label=""];
  "sha256:16fcedc5ba1233a52cbab4ccdefad725906d92a3709ee95fc27ca94d553fe5ee" -> "sha256:5932693c446efdfb27a78dfd8b1a00f55dc373042e9a0a0afff28bfc34edf5ee" [label=""];
  "sha256:5932693c446efdfb27a78dfd8b1a00f55dc373042e9a0a0afff28bfc34edf5ee" -> "sha256:e05f81781c1b7c8abae2618837341f62790fc81e4c03a0893fa23c230710c00b" [label=""];
  "sha256:16fcedc5ba1233a52cbab4ccdefad725906d92a3709ee95fc27ca94d553fe5ee" -> "sha256:e05f81781c1b7c8abae2618837341f62790fc81e4c03a0893fa23c230710c00b" [label=""];
  "sha256:e05f81781c1b7c8abae2618837341f62790fc81e4c03a0893fa23c230710c00b" -> "sha256:ea7e7939c13d8919f278d86d9046905059974c2a4f5ce5d394a20f7b23cb68f3" [label=""];
  "sha256:ea7e7939c13d8919f278d86d9046905059974c2a4f5ce5d394a20f7b23cb68f3" -> "sha256:6e5fa4697b259cd69c894e0dcb9544d53cf8b029d096a510dde34f359110d7f4" [label=""];
  "sha256:8140c4db256475433c8fe981367a758ea59e53b7198aa5895cb3220bfcc2b822" -> "sha256:6e5fa4697b259cd69c894e0dcb9544d53cf8b029d096a510dde34f359110d7f4" [label=""];
  "sha256:6e5fa4697b259cd69c894e0dcb9544d53cf8b029d096a510dde34f359110d7f4" -> "sha256:ad83a766ab1863d4d17e2b71644fe8834a409fc2abd92aed41deb1d3c20949c7" [label=""];
  "sha256:ad83a766ab1863d4d17e2b71644fe8834a409fc2abd92aed41deb1d3c20949c7" -> "sha256:662950ecf772e45fbc3b9ee56c1a0e85863588425a49d4f135998f8c7b64b4fd" [label=""];
  "sha256:662950ecf772e45fbc3b9ee56c1a0e85863588425a49d4f135998f8c7b64b4fd" -> "sha256:98edd636963a78c73bb2fc1a807fcb6c25114ff6581858e11ee04c09c803a4f1" [label=""];
  "sha256:98edd636963a78c73bb2fc1a807fcb6c25114ff6581858e11ee04c09c803a4f1" -> "sha256:3473154a2de1e3785e5696169fbbc0ba96012e238e7995735b31d9d09d66a0ae" [label=""];
}

