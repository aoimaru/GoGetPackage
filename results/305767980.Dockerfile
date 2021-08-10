[app/sources/305767980.Dockerfile]
digraph {
  "sha256:5ea5dcdd0b199b0f1caab752945f608ab101465b74507891d6287ca7ffc6880a" [label="local://context" shape="ellipse"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:1f633893b239589b006148b5424eac4161c8054520301c6cb267ef4ddd3804b3" [label="copy{src=/apache-config.conf, dest=/etc/apache2/sites-enabled/000-default.conf}" shape="note"];
  "sha256:157895205b6b72f1c686cb838a89aa2cdc73cb925710adf6e3c56dbb3e079a39" [label="/bin/sh -c a2enmod rewrite && a2enmod headers && a2enmod expires &&     sed -i '/Listen/{s/\\([0-9]\\+\\)/8080/; :a;n; ba}' /etc/apache2/ports.conf &&     chmod og+rwx /var/lock/apache2 && chmod -R og+rwx /var/run/apache2" shape="box"];
  "sha256:08a6e1f28f88c948b217244da6531748cf307896ebdf36b5fc2b6f58df28a851" [label="/bin/sh -c apt-get -yq update &&     apt-get -yq install gnupg libmagickwand-dev --no-install-recommends &&     apt-get -yq clean all" shape="box"];
  "sha256:5ddb1b4b819876038ab7179d043d08febc542fd75f77e875495463b79a30289e" [label="/bin/sh -c docker-php-ext-install mysqli &&     pecl install imagick && docker-php-ext-enable imagick" shape="box"];
  "sha256:6cf84d6afd0e5abd0d56e63d74c8d86d0c7c133094172e911b0ba522180ec079" [label="copy{src=/, dest=/var/www/html}" shape="note"];
  "sha256:8490533a5741aced55f1161b9c2a764ad75d755085f145dbd9a5465507431a8f" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_6.x | bash - &&     apt-get -yq update &&     apt-get -yq install nodejs &&     npm install &&     npm run-script build &&     rm -rf node_modules &&     apt-get -yq remove nodejs &&     apt-get -yq clean all" shape="box"];
  "sha256:9244fb1bbbf90679f942cbe0c8188bcda7f67a1d973ffa33b897dc034c22858a" [label="sha256:9244fb1bbbf90679f942cbe0c8188bcda7f67a1d973ffa33b897dc034c22858a" shape="plaintext"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:1f633893b239589b006148b5424eac4161c8054520301c6cb267ef4ddd3804b3" [label=""];
  "sha256:5ea5dcdd0b199b0f1caab752945f608ab101465b74507891d6287ca7ffc6880a" -> "sha256:1f633893b239589b006148b5424eac4161c8054520301c6cb267ef4ddd3804b3" [label=""];
  "sha256:1f633893b239589b006148b5424eac4161c8054520301c6cb267ef4ddd3804b3" -> "sha256:157895205b6b72f1c686cb838a89aa2cdc73cb925710adf6e3c56dbb3e079a39" [label=""];
  "sha256:157895205b6b72f1c686cb838a89aa2cdc73cb925710adf6e3c56dbb3e079a39" -> "sha256:08a6e1f28f88c948b217244da6531748cf307896ebdf36b5fc2b6f58df28a851" [label=""];
  "sha256:08a6e1f28f88c948b217244da6531748cf307896ebdf36b5fc2b6f58df28a851" -> "sha256:5ddb1b4b819876038ab7179d043d08febc542fd75f77e875495463b79a30289e" [label=""];
  "sha256:5ddb1b4b819876038ab7179d043d08febc542fd75f77e875495463b79a30289e" -> "sha256:6cf84d6afd0e5abd0d56e63d74c8d86d0c7c133094172e911b0ba522180ec079" [label=""];
  "sha256:5ea5dcdd0b199b0f1caab752945f608ab101465b74507891d6287ca7ffc6880a" -> "sha256:6cf84d6afd0e5abd0d56e63d74c8d86d0c7c133094172e911b0ba522180ec079" [label=""];
  "sha256:6cf84d6afd0e5abd0d56e63d74c8d86d0c7c133094172e911b0ba522180ec079" -> "sha256:8490533a5741aced55f1161b9c2a764ad75d755085f145dbd9a5465507431a8f" [label=""];
  "sha256:8490533a5741aced55f1161b9c2a764ad75d755085f145dbd9a5465507431a8f" -> "sha256:9244fb1bbbf90679f942cbe0c8188bcda7f67a1d973ffa33b897dc034c22858a" [label=""];
}

