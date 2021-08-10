[app/sources/350313606.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:167cafbc91e440ada75fd230ff3a59b00424be2eb8197fbd090cae2d6caed02f" [label="/bin/sh -c yum -y update && yum clean all" shape="box"];
  "sha256:76f460312684cc1f91e7e705487924af5590bfd0c2b73c5c892dbb290e167e45" [label="/bin/sh -c yum -y install httpd && yum clean all" shape="box"];
  "sha256:05b4151b07e1df1227fd3e6fdf93ffd485052e66322bc6d88dd7c932bf1e6676" [label="/bin/sh -c yum -y install gcc php-pear php-devel make openssl-devel && yum clean all" shape="box"];
  "sha256:03380d8bd7f167334d25b5b7cef35eec95598b2e7606b54470aeeda88962c3f4" [label="/bin/sh -c yum install -y \tpsmisc \thttpd \tpostfix \tphp \tphp-common \tphp-dba \tphp-gd \tphp-intl \tphp-ldap \tphp-mbstring \tphp-mysqlnd \tphp-odbc \tphp-pdo \tphp-pecl-memcache \tphp-pgsql \tphp-pspell \tphp-recode \tphp-snmp \tphp-soap \tphp-xml \tphp-xmlrpc \tImageMagick \tImageMagick-devel" shape="box"];
  "sha256:bf6d0d8bd5ae9ee5a3a31ed9b7a203be0d27484f5731f06a66e7e7027ce5606e" [label="/bin/sh -c sh -c 'printf \"\\n\" | pecl install mongo imagick'" shape="box"];
  "sha256:cf094b1cf1fbfd3115870966187a29849f56536b0dc5c16e8ef68ca4128daebf" [label="/bin/sh -c sh -c 'echo short_open_tag=On >> /etc/php.ini'" shape="box"];
  "sha256:47e96002fd647f3e74adf4d46b11fa13877a2fa0ff37ada5f978c463a5d08ad8" [label="/bin/sh -c sh -c 'echo extension=mongo.so >> /etc/php.ini'" shape="box"];
  "sha256:aeb46c86cc090e0b55655906084b72afad428d32a314a8014cf08773117bbbef" [label="/bin/sh -c sh -c 'echo extension=imagick.so >> /etc/php.ini'" shape="box"];
  "sha256:63b1f209fa22739b5608c23ec8632cf0b5b6d4c388ec84a9ee0d209b5a2d883b" [label="local://context" shape="ellipse"];
  "sha256:1a2763b8326cf76eec5a958ffa163e23cdd280f73acae2c8d0c7f806b6b85451" [label="copy{src=/index.php, dest=/var/www/html/}" shape="note"];
  "sha256:c08065d0030f0fb48b0deb280b5f3f3f51fca940b4f19732ff5e6221b576be26" [label="copy{src=/run-lap.sh, dest=/usr/sbin/}" shape="note"];
  "sha256:3d2a41e28fe6eb7a13c8ef8b56afc15e15463ea9d2b29cd9a9ea00bf3f0390c6" [label="/bin/sh -c chmod +x /usr/sbin/run-lap.sh" shape="box"];
  "sha256:2a78fe5bdd843dc8abae5bbbb2bf4a9b0bbaf2b54bf3f4273812de3da1217bd0" [label="/bin/sh -c chown -R apache:apache /var/www/html" shape="box"];
  "sha256:34c23aebe1cc358890293ebf4894d44c577e25de2ea68a3bc8e68f7e8a18be79" [label="sha256:34c23aebe1cc358890293ebf4894d44c577e25de2ea68a3bc8e68f7e8a18be79" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:167cafbc91e440ada75fd230ff3a59b00424be2eb8197fbd090cae2d6caed02f" [label=""];
  "sha256:167cafbc91e440ada75fd230ff3a59b00424be2eb8197fbd090cae2d6caed02f" -> "sha256:76f460312684cc1f91e7e705487924af5590bfd0c2b73c5c892dbb290e167e45" [label=""];
  "sha256:76f460312684cc1f91e7e705487924af5590bfd0c2b73c5c892dbb290e167e45" -> "sha256:05b4151b07e1df1227fd3e6fdf93ffd485052e66322bc6d88dd7c932bf1e6676" [label=""];
  "sha256:05b4151b07e1df1227fd3e6fdf93ffd485052e66322bc6d88dd7c932bf1e6676" -> "sha256:03380d8bd7f167334d25b5b7cef35eec95598b2e7606b54470aeeda88962c3f4" [label=""];
  "sha256:03380d8bd7f167334d25b5b7cef35eec95598b2e7606b54470aeeda88962c3f4" -> "sha256:bf6d0d8bd5ae9ee5a3a31ed9b7a203be0d27484f5731f06a66e7e7027ce5606e" [label=""];
  "sha256:bf6d0d8bd5ae9ee5a3a31ed9b7a203be0d27484f5731f06a66e7e7027ce5606e" -> "sha256:cf094b1cf1fbfd3115870966187a29849f56536b0dc5c16e8ef68ca4128daebf" [label=""];
  "sha256:cf094b1cf1fbfd3115870966187a29849f56536b0dc5c16e8ef68ca4128daebf" -> "sha256:47e96002fd647f3e74adf4d46b11fa13877a2fa0ff37ada5f978c463a5d08ad8" [label=""];
  "sha256:47e96002fd647f3e74adf4d46b11fa13877a2fa0ff37ada5f978c463a5d08ad8" -> "sha256:aeb46c86cc090e0b55655906084b72afad428d32a314a8014cf08773117bbbef" [label=""];
  "sha256:aeb46c86cc090e0b55655906084b72afad428d32a314a8014cf08773117bbbef" -> "sha256:1a2763b8326cf76eec5a958ffa163e23cdd280f73acae2c8d0c7f806b6b85451" [label=""];
  "sha256:63b1f209fa22739b5608c23ec8632cf0b5b6d4c388ec84a9ee0d209b5a2d883b" -> "sha256:1a2763b8326cf76eec5a958ffa163e23cdd280f73acae2c8d0c7f806b6b85451" [label=""];
  "sha256:1a2763b8326cf76eec5a958ffa163e23cdd280f73acae2c8d0c7f806b6b85451" -> "sha256:c08065d0030f0fb48b0deb280b5f3f3f51fca940b4f19732ff5e6221b576be26" [label=""];
  "sha256:63b1f209fa22739b5608c23ec8632cf0b5b6d4c388ec84a9ee0d209b5a2d883b" -> "sha256:c08065d0030f0fb48b0deb280b5f3f3f51fca940b4f19732ff5e6221b576be26" [label=""];
  "sha256:c08065d0030f0fb48b0deb280b5f3f3f51fca940b4f19732ff5e6221b576be26" -> "sha256:3d2a41e28fe6eb7a13c8ef8b56afc15e15463ea9d2b29cd9a9ea00bf3f0390c6" [label=""];
  "sha256:3d2a41e28fe6eb7a13c8ef8b56afc15e15463ea9d2b29cd9a9ea00bf3f0390c6" -> "sha256:2a78fe5bdd843dc8abae5bbbb2bf4a9b0bbaf2b54bf3f4273812de3da1217bd0" [label=""];
  "sha256:2a78fe5bdd843dc8abae5bbbb2bf4a9b0bbaf2b54bf3f4273812de3da1217bd0" -> "sha256:34c23aebe1cc358890293ebf4894d44c577e25de2ea68a3bc8e68f7e8a18be79" [label=""];
}

