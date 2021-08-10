[app/sources/204593629.Dockerfile]
digraph {
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" [label="docker-image://docker.io/library/php:7.1-fpm" shape="ellipse"];
  "sha256:82ef983895403ea2c7129715df02553c9f54842a8e6c6208178be9c7859fbf1e" [label="/bin/sh -c apt-get update && apt-get install -y     openssl     git     unzip" shape="box"];
  "sha256:6b59a5961d8c72bad0509660ec46c4688a5016b6eea76f8a2eb548fe367dc0bc" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && composer --version" shape="box"];
  "sha256:c015a537e0912ed7235156d8abb95e5cd6db1148869a13f82cf186cf7891f1fe" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/${TIMEZONE} /etc/localtime && echo ${TIMEZONE} > /etc/timezone && printf '[PHP]\\ndate.timezone = \"%s\"\\n', ${TIMEZONE} > /usr/local/etc/php/conf.d/tzone.ini && \"date\"" shape="box"];
  "sha256:72dff03dfbeb99051a0007d90c322ec9a0ff7251245df2824af277775e3978b1" [label="/bin/sh -c docker-php-ext-install pdo pdo_mysql" shape="box"];
  "sha256:a2bc6b63a040172a8bf41f267db212645c7222d52dfbf40148ef6d93080e4c21" [label="/bin/sh -c pecl install xdebug && docker-php-ext-enable xdebug && echo \"error_reporting = E_ALL\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && echo \"display_startup_errors = On\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && echo \"display_errors = On\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && echo \"xdebug.remote_enable=1\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && echo \"xdebug.remote_connect_back=1\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && echo \"xdebug.idekey=\\\"PHPSTORM\\\"\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini && echo \"xdebug.remote_port=9001\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini" shape="box"];
  "sha256:3a1ef540f907f3620d85834956c3576f1e12999781e326ba2deb649344f0c683" [label="/bin/sh -c echo 'alias sf=\"php app/console\"' >> ~/.bashrc && echo 'alias sf3=\"php bin/console\"' >> ~/.bashrc" shape="box"];
  "sha256:3ea07098661c166ecbf92d9557ea4ce192b5e433131985c22f32f22abdcd006a" [label="mkdir{path=/var/www/symfony}" shape="note"];
  "sha256:90342ee7ccb734d4d70570fa423bc565e9eeebb244d7cc04038186b31a52be20" [label="sha256:90342ee7ccb734d4d70570fa423bc565e9eeebb244d7cc04038186b31a52be20" shape="plaintext"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" -> "sha256:82ef983895403ea2c7129715df02553c9f54842a8e6c6208178be9c7859fbf1e" [label=""];
  "sha256:82ef983895403ea2c7129715df02553c9f54842a8e6c6208178be9c7859fbf1e" -> "sha256:6b59a5961d8c72bad0509660ec46c4688a5016b6eea76f8a2eb548fe367dc0bc" [label=""];
  "sha256:6b59a5961d8c72bad0509660ec46c4688a5016b6eea76f8a2eb548fe367dc0bc" -> "sha256:c015a537e0912ed7235156d8abb95e5cd6db1148869a13f82cf186cf7891f1fe" [label=""];
  "sha256:c015a537e0912ed7235156d8abb95e5cd6db1148869a13f82cf186cf7891f1fe" -> "sha256:72dff03dfbeb99051a0007d90c322ec9a0ff7251245df2824af277775e3978b1" [label=""];
  "sha256:72dff03dfbeb99051a0007d90c322ec9a0ff7251245df2824af277775e3978b1" -> "sha256:a2bc6b63a040172a8bf41f267db212645c7222d52dfbf40148ef6d93080e4c21" [label=""];
  "sha256:a2bc6b63a040172a8bf41f267db212645c7222d52dfbf40148ef6d93080e4c21" -> "sha256:3a1ef540f907f3620d85834956c3576f1e12999781e326ba2deb649344f0c683" [label=""];
  "sha256:3a1ef540f907f3620d85834956c3576f1e12999781e326ba2deb649344f0c683" -> "sha256:3ea07098661c166ecbf92d9557ea4ce192b5e433131985c22f32f22abdcd006a" [label=""];
  "sha256:3ea07098661c166ecbf92d9557ea4ce192b5e433131985c22f32f22abdcd006a" -> "sha256:90342ee7ccb734d4d70570fa423bc565e9eeebb244d7cc04038186b31a52be20" [label=""];
}

