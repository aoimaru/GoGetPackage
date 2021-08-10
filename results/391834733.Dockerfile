[app/sources/391834733.Dockerfile]
digraph {
  "sha256:9760c05b229962bc8a697961abfedff3970fc1a024af7bfc415ed7d0f0aa77f6" [label="docker-image://docker.io/library/php:7.3-cli-stretch" shape="ellipse"];
  "sha256:b812fbe1c0bff081085a7afcd442790ed48cc91d0774bff81ebc722f2d84451e" [label="/bin/sh -c apt-get update     && apt install -y      curl      git      zip      unzip      openssl      libzip-dev     && docker-php-ext-install zip     && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:22150289e65e806e2aaf10e355e78435cb94a4ec3699baf8fd907470d38c0a77" [label="/bin/sh -c pecl install xdebug-2.6.0     \t&& docker-php-ext-enable xdebug     \t&& echo \"error_reporting = E_ALL\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     \t&& echo \"display_startup_errors = On\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     \t&& echo \"display_errors = On\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     \t&& echo \"xdebug.remote_enable=1\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini;" shape="box"];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" [label="docker-image://docker.io/library/composer:latest" shape="ellipse"];
  "sha256:3a62a7e6e710132e6907fcd58d8ddf51250fa9df124ff31b56274699a83e4968" [label="copy{src=/usr/bin/composer, dest=/usr/bin/composer}" shape="note"];
  "sha256:3f2d389d71636f27ce446255c0eec982980d675c21fc065713b0a4bd83a66992" [label="mkdir{path=/docker}" shape="note"];
  "sha256:e2f28d1ace66ebca4d525a2e13106fb6f7632e9f25e1444271b1ed9bee7306b6" [label="sha256:e2f28d1ace66ebca4d525a2e13106fb6f7632e9f25e1444271b1ed9bee7306b6" shape="plaintext"];
  "sha256:9760c05b229962bc8a697961abfedff3970fc1a024af7bfc415ed7d0f0aa77f6" -> "sha256:b812fbe1c0bff081085a7afcd442790ed48cc91d0774bff81ebc722f2d84451e" [label=""];
  "sha256:b812fbe1c0bff081085a7afcd442790ed48cc91d0774bff81ebc722f2d84451e" -> "sha256:22150289e65e806e2aaf10e355e78435cb94a4ec3699baf8fd907470d38c0a77" [label=""];
  "sha256:22150289e65e806e2aaf10e355e78435cb94a4ec3699baf8fd907470d38c0a77" -> "sha256:3a62a7e6e710132e6907fcd58d8ddf51250fa9df124ff31b56274699a83e4968" [label=""];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" -> "sha256:3a62a7e6e710132e6907fcd58d8ddf51250fa9df124ff31b56274699a83e4968" [label=""];
  "sha256:3a62a7e6e710132e6907fcd58d8ddf51250fa9df124ff31b56274699a83e4968" -> "sha256:3f2d389d71636f27ce446255c0eec982980d675c21fc065713b0a4bd83a66992" [label=""];
  "sha256:3f2d389d71636f27ce446255c0eec982980d675c21fc065713b0a4bd83a66992" -> "sha256:e2f28d1ace66ebca4d525a2e13106fb6f7632e9f25e1444271b1ed9bee7306b6" [label=""];
}

