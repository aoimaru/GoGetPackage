[app/sources/189408957.Dockerfile]
digraph {
  "sha256:0c28886af42d62292eb6dd4b7e513563863c10016de684d533441b688837669e" [label="docker-image://docker.io/library/php:7.0.13-cli" shape="ellipse"];
  "sha256:71fa2276e4b6db4a6ca5fe18a8f92c868cbc66bb5da0206e31d9fd30cb0c577b" [label="/bin/sh -c cd /tmp && \t/usr/bin/curl -sL -o setup_6.x https://deb.nodesource.com/setup_6.x && \tbash setup_6.x && \t/usr/bin/apt-get update && \t/usr/bin/apt-get install -y bzip2 rubygems rubygems-integration inotify-tools nodejs git zlib1g-dev libbz2-dev libpng12-dev libjpeg-dev && \tnpm -g install yarn gulp grunt grunt-cli grunt-sass node-sass && \tdocker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr && \tdocker-php-ext-install zip bz2 gd" shape="box"];
  "sha256:0af8e3d685ed19119a177533d270caaf4dd1b3880d94342c2b38528b9e784f83" [label="/bin/sh -c gem install sass -v 3.4.23" shape="box"];
  "sha256:42df17ec453f6bca42d0e74ee4d31197c05f2ff0384a5dddef8f496ca4476b61" [label="/bin/sh -c curl -o /tmp/composer-setup.php https://getcomposer.org/installer   && curl -o /tmp/composer-setup.sig https://composer.github.io/installer.sig   && php -r \"if (hash('SHA384', file_get_contents('/tmp/composer-setup.php')) !== trim(file_get_contents('/tmp/composer-setup.sig'))) { unlink('/tmp/composer-setup.php'); echo 'Invalid installer' . PHP_EOL; exit(1); }\"" shape="box"];
  "sha256:3cd7909ec780f73c402e9f6416437dc77aee2fe469ee3d885cf1206e7fbac3d9" [label="/bin/sh -c php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} && rm -rf /tmp/composer-setup.php" shape="box"];
  "sha256:5470c651df0c646a300ea3979093882c3b71076d0008a1af55b9354d18524fea" [label="/bin/sh -c mkdir ~/.ssh &&     chmod 600 ~/.ssh &&     touch ~/.ssh/known_hosts &&     chmod 600 ~/.ssh/known_hosts &&     ssh-keyscan github.com >> ~/.ssh/known_hosts &&     ssh-keyscan 10up.git.beanstalkapp.com >> ~/.ssh/known_hosts" shape="box"];
  "sha256:f25a7b2f2a88029fd7c9ad2e2d5ab6d201ef377172991c3b0c70f27be77c0ee5" [label="local://context" shape="ellipse"];
  "sha256:c21330daed725a3b71ff31021c395b21889caf379d6d0df5c5f819df262c0622" [label="copy{src=/ssh_config, dest=/root/.ssh/config}" shape="note"];
  "sha256:20fe3ef6f9403a6c9171cfcb78da8e7c086423a6bed29ad309bf3d9a1a1476b3" [label="/bin/sh -c chmod 600 /root/.ssh/config" shape="box"];
  "sha256:f83c8fbff39e66c521187a2bbae0d03b29f228e410ca8648cb5287e6be0c930c" [label="sha256:f83c8fbff39e66c521187a2bbae0d03b29f228e410ca8648cb5287e6be0c930c" shape="plaintext"];
  "sha256:0c28886af42d62292eb6dd4b7e513563863c10016de684d533441b688837669e" -> "sha256:71fa2276e4b6db4a6ca5fe18a8f92c868cbc66bb5da0206e31d9fd30cb0c577b" [label=""];
  "sha256:71fa2276e4b6db4a6ca5fe18a8f92c868cbc66bb5da0206e31d9fd30cb0c577b" -> "sha256:0af8e3d685ed19119a177533d270caaf4dd1b3880d94342c2b38528b9e784f83" [label=""];
  "sha256:0af8e3d685ed19119a177533d270caaf4dd1b3880d94342c2b38528b9e784f83" -> "sha256:42df17ec453f6bca42d0e74ee4d31197c05f2ff0384a5dddef8f496ca4476b61" [label=""];
  "sha256:42df17ec453f6bca42d0e74ee4d31197c05f2ff0384a5dddef8f496ca4476b61" -> "sha256:3cd7909ec780f73c402e9f6416437dc77aee2fe469ee3d885cf1206e7fbac3d9" [label=""];
  "sha256:3cd7909ec780f73c402e9f6416437dc77aee2fe469ee3d885cf1206e7fbac3d9" -> "sha256:5470c651df0c646a300ea3979093882c3b71076d0008a1af55b9354d18524fea" [label=""];
  "sha256:5470c651df0c646a300ea3979093882c3b71076d0008a1af55b9354d18524fea" -> "sha256:c21330daed725a3b71ff31021c395b21889caf379d6d0df5c5f819df262c0622" [label=""];
  "sha256:f25a7b2f2a88029fd7c9ad2e2d5ab6d201ef377172991c3b0c70f27be77c0ee5" -> "sha256:c21330daed725a3b71ff31021c395b21889caf379d6d0df5c5f819df262c0622" [label=""];
  "sha256:c21330daed725a3b71ff31021c395b21889caf379d6d0df5c5f819df262c0622" -> "sha256:20fe3ef6f9403a6c9171cfcb78da8e7c086423a6bed29ad309bf3d9a1a1476b3" [label=""];
  "sha256:20fe3ef6f9403a6c9171cfcb78da8e7c086423a6bed29ad309bf3d9a1a1476b3" -> "sha256:f83c8fbff39e66c521187a2bbae0d03b29f228e410ca8648cb5287e6be0c930c" [label=""];
}

