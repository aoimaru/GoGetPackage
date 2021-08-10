[app/sources/346803682.Dockerfile]
digraph {
  "sha256:07778cf89e8773411ef83e303411059586fcdd9e0f95804c8e8651711ff7d0a2" [label="local://context" shape="ellipse"];
  "sha256:50879e820d9d643e41ccb5211fa6e2a881b836f79c5f9919db4b0a85e82b8bfa" [label="docker-image://docker.io/library/php:5-fpm" shape="ellipse"];
  "sha256:e7700e43450b761f7f1912333ac85ba3aaa0b1125ad4324c6314dd0a5c1d00bd" [label="/bin/sh -c apt-get update \t&& apt-get install -y libmcrypt-dev \t\tlibjpeg62-turbo-dev \t\tlibpcre3-dev \t\tlibpng-dev \t\tlibfreetype6-dev \t\tlibxml2-dev \t\tlibicu-dev \t\tlibzip-dev \t\tmysql-client \t\twget \t\tunzip     && rm -rf /var/lib/apt/lists/*     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install iconv intl pdo_mysql mbstring soap gd zip" shape="box"];
  "sha256:abc0fe85b5d10e510c59b596b9b4760c19af5a6c0df6372352b1e7f85883582b" [label="/bin/sh -c docker-php-source extract   && if [ -d \"/usr/src/php/ext/mysql\" ]; then docker-php-ext-install mysql; fi   && if [ -d \"/usr/src/php/ext/mcrypt\" ]; then docker-php-ext-install mcrypt; fi \t&& if [ -d \"/usr/src/php/ext/opcache\" ]; then docker-php-ext-install opcache; fi \t&& docker-php-source delete" shape="box"];
  "sha256:7d34f4d2a62e251b1cf998ded47b7ae1f2390eed8f5853a683bcc99c382bd4e1" [label="copy{src=/config_files/ps-extractor.sh, dest=/tmp/},copy{src=/config_files/docker_run.sh, dest=/tmp/}" shape="note"];
  "sha256:2f1453d8c1eebf0a9ffe50c5cd647b4da14d5f5139cd9007dc1b36cf4beadc02" [label="copy{src=/config_files/docker_updt_ps_domains.php, dest=/tmp/}" shape="note"];
  "sha256:f2b1eb8158679d44b74096436910a5155bfd69f072323778c8e6c4da7f61dbdd" [label="copy{src=/config_files/defines_custom.inc.php, dest=/tmp/}" shape="note"];
  "sha256:02b907b0b5fb25968e290c9b727ef8083c8127a83ec9f00cac4e3b6c006b04d4" [label="/bin/sh -c chown www-data:www-data /tmp/defines_custom.inc.php" shape="box"];
  "sha256:e0dc8ec0037b82fced12a8508a1427919666b024ee3af02f1a19b6940e5f3982" [label="/bin/sh -c if [ -x \"$(command -v apache2-foreground)\" ]; then a2enmod rewrite; fi" shape="box"];
  "sha256:e9c65c30e8eee12e0f954c70466391a65d7566c2fbdb2aed7ae336120fd27994" [label="copy{src=/config_files/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:20af8acb92339f0c03b1428e87b4bb19645ae39acd6b292d6db8dd93e6affdd2" [label="sha256:20af8acb92339f0c03b1428e87b4bb19645ae39acd6b292d6db8dd93e6affdd2" shape="plaintext"];
  "sha256:50879e820d9d643e41ccb5211fa6e2a881b836f79c5f9919db4b0a85e82b8bfa" -> "sha256:e7700e43450b761f7f1912333ac85ba3aaa0b1125ad4324c6314dd0a5c1d00bd" [label=""];
  "sha256:e7700e43450b761f7f1912333ac85ba3aaa0b1125ad4324c6314dd0a5c1d00bd" -> "sha256:abc0fe85b5d10e510c59b596b9b4760c19af5a6c0df6372352b1e7f85883582b" [label=""];
  "sha256:abc0fe85b5d10e510c59b596b9b4760c19af5a6c0df6372352b1e7f85883582b" -> "sha256:7d34f4d2a62e251b1cf998ded47b7ae1f2390eed8f5853a683bcc99c382bd4e1" [label=""];
  "sha256:07778cf89e8773411ef83e303411059586fcdd9e0f95804c8e8651711ff7d0a2" -> "sha256:7d34f4d2a62e251b1cf998ded47b7ae1f2390eed8f5853a683bcc99c382bd4e1" [label=""];
  "sha256:7d34f4d2a62e251b1cf998ded47b7ae1f2390eed8f5853a683bcc99c382bd4e1" -> "sha256:2f1453d8c1eebf0a9ffe50c5cd647b4da14d5f5139cd9007dc1b36cf4beadc02" [label=""];
  "sha256:07778cf89e8773411ef83e303411059586fcdd9e0f95804c8e8651711ff7d0a2" -> "sha256:2f1453d8c1eebf0a9ffe50c5cd647b4da14d5f5139cd9007dc1b36cf4beadc02" [label=""];
  "sha256:2f1453d8c1eebf0a9ffe50c5cd647b4da14d5f5139cd9007dc1b36cf4beadc02" -> "sha256:f2b1eb8158679d44b74096436910a5155bfd69f072323778c8e6c4da7f61dbdd" [label=""];
  "sha256:07778cf89e8773411ef83e303411059586fcdd9e0f95804c8e8651711ff7d0a2" -> "sha256:f2b1eb8158679d44b74096436910a5155bfd69f072323778c8e6c4da7f61dbdd" [label=""];
  "sha256:f2b1eb8158679d44b74096436910a5155bfd69f072323778c8e6c4da7f61dbdd" -> "sha256:02b907b0b5fb25968e290c9b727ef8083c8127a83ec9f00cac4e3b6c006b04d4" [label=""];
  "sha256:02b907b0b5fb25968e290c9b727ef8083c8127a83ec9f00cac4e3b6c006b04d4" -> "sha256:e0dc8ec0037b82fced12a8508a1427919666b024ee3af02f1a19b6940e5f3982" [label=""];
  "sha256:e0dc8ec0037b82fced12a8508a1427919666b024ee3af02f1a19b6940e5f3982" -> "sha256:e9c65c30e8eee12e0f954c70466391a65d7566c2fbdb2aed7ae336120fd27994" [label=""];
  "sha256:07778cf89e8773411ef83e303411059586fcdd9e0f95804c8e8651711ff7d0a2" -> "sha256:e9c65c30e8eee12e0f954c70466391a65d7566c2fbdb2aed7ae336120fd27994" [label=""];
  "sha256:e9c65c30e8eee12e0f954c70466391a65d7566c2fbdb2aed7ae336120fd27994" -> "sha256:20af8acb92339f0c03b1428e87b4bb19645ae39acd6b292d6db8dd93e6affdd2" [label=""];
}

