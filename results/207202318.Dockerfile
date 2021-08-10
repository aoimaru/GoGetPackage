[app/sources/207202318.Dockerfile]
digraph {
  "sha256:c30647a036b4912a62e085241288011ca97c7a5378b6fc82ed459876e595bbd1" [label="docker-image://docker.io/library/php:7-apache" shape="ellipse"];
  "sha256:88a8ee0b3db65c26403b291b42e0a659e7b3a19f02bbf445db6cfc8ce92bf107" [label="local://context" shape="ellipse"];
  "sha256:1fc56bfbcd3757539aebf2bd7ae83b6b16cf3941e99067396686e91dadb43d10" [label="copy{src=/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:f6ebc026ecdf4f131617c7b1a04c26d24052a20b6a43ab2abbb8c385e47875d2" [label="/bin/sh -c apt update" shape="box"];
  "sha256:4eb24f4943ccd28e264087a5f9d3fc4e566e04e51d3e010544388a0cfe887310" [label="/bin/sh -c apt install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev sudo" shape="box"];
  "sha256:ba45166b528177f117aa27e1749fc6d657e38ff70ba2055eff63367d43dc12c2" [label="/bin/sh -c docker-php-ext-install pdo pdo_mysql mbstring mysqli gd iconv" shape="box"];
  "sha256:def46225445761a14abd33b818ee194f42878903831f9325fc55e0a600cbd373" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:65f97234dae79850b7269ca07ebdbcf1f25ed07a38928893ab2ed69d099f5edf" [label="/bin/sh -c service apache2 restart" shape="box"];
  "sha256:37e48ce2ef818cb7941b0d34a438b7edb7d0cae72d6c8c238adc3f3cdeaa245c" [label="/bin/sh -c usermod -u $DOCKER_UID www-data     && groupmod -g $DOCKER_UID www-data     && chsh -s /bin/bash www-data     && echo \"www-data ALL=(ALL) NOPASSWD:ALL\" > /etc/sudoers.d/90-www-data" shape="box"];
  "sha256:cf0689aac80873f7433102a577e9e1438a6c216bce4c1b2ba7e3e684f14201cb" [label="/bin/sh -c chown -R $DOCKER_UID /var/www/html" shape="box"];
  "sha256:2dfa20e32f81ee6c089d5679a81f7bc7cc8843bc4c6397aa74ccabd0efdc2275" [label="sha256:2dfa20e32f81ee6c089d5679a81f7bc7cc8843bc4c6397aa74ccabd0efdc2275" shape="plaintext"];
  "sha256:c30647a036b4912a62e085241288011ca97c7a5378b6fc82ed459876e595bbd1" -> "sha256:1fc56bfbcd3757539aebf2bd7ae83b6b16cf3941e99067396686e91dadb43d10" [label=""];
  "sha256:88a8ee0b3db65c26403b291b42e0a659e7b3a19f02bbf445db6cfc8ce92bf107" -> "sha256:1fc56bfbcd3757539aebf2bd7ae83b6b16cf3941e99067396686e91dadb43d10" [label=""];
  "sha256:1fc56bfbcd3757539aebf2bd7ae83b6b16cf3941e99067396686e91dadb43d10" -> "sha256:f6ebc026ecdf4f131617c7b1a04c26d24052a20b6a43ab2abbb8c385e47875d2" [label=""];
  "sha256:f6ebc026ecdf4f131617c7b1a04c26d24052a20b6a43ab2abbb8c385e47875d2" -> "sha256:4eb24f4943ccd28e264087a5f9d3fc4e566e04e51d3e010544388a0cfe887310" [label=""];
  "sha256:4eb24f4943ccd28e264087a5f9d3fc4e566e04e51d3e010544388a0cfe887310" -> "sha256:ba45166b528177f117aa27e1749fc6d657e38ff70ba2055eff63367d43dc12c2" [label=""];
  "sha256:ba45166b528177f117aa27e1749fc6d657e38ff70ba2055eff63367d43dc12c2" -> "sha256:def46225445761a14abd33b818ee194f42878903831f9325fc55e0a600cbd373" [label=""];
  "sha256:def46225445761a14abd33b818ee194f42878903831f9325fc55e0a600cbd373" -> "sha256:65f97234dae79850b7269ca07ebdbcf1f25ed07a38928893ab2ed69d099f5edf" [label=""];
  "sha256:65f97234dae79850b7269ca07ebdbcf1f25ed07a38928893ab2ed69d099f5edf" -> "sha256:37e48ce2ef818cb7941b0d34a438b7edb7d0cae72d6c8c238adc3f3cdeaa245c" [label=""];
  "sha256:37e48ce2ef818cb7941b0d34a438b7edb7d0cae72d6c8c238adc3f3cdeaa245c" -> "sha256:cf0689aac80873f7433102a577e9e1438a6c216bce4c1b2ba7e3e684f14201cb" [label=""];
  "sha256:cf0689aac80873f7433102a577e9e1438a6c216bce4c1b2ba7e3e684f14201cb" -> "sha256:2dfa20e32f81ee6c089d5679a81f7bc7cc8843bc4c6397aa74ccabd0efdc2275" [label=""];
}

