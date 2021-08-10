[app/sources/264876972.Dockerfile]
digraph {
  "sha256:15beb3c7234e4330622d47fbef598f462dab98cebcecad8f04d5d26db4ad2a27" [label="local://context" shape="ellipse"];
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" [label="docker-image://docker.io/library/php:7.0-apache" shape="ellipse"];
  "sha256:3314f76d428442f2fdb7c733711a839ad951191aca6c4fcda3b2407031c95b6d" [label="/bin/sh -c apt-get update && apt-get install -y         libfreetype6-dev         libjpeg62-turbo-dev         libmcrypt-dev         libpng12-dev         libcurl4-gnutls-dev         libmcrypt-dev         locales         graphicsmagick \tmysql-client         unzip         wget \t&& rm -rf /var/lib/apt/lists/*     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install -j$(nproc) mcrypt pdo_mysql exif zip gd opcache" shape="box"];
  "sha256:9c89bba5b7a9653faca1c79b0ef201684c7ab901ed21812040d277e05971382b" [label="copy{src=/filerun-optimization.ini, dest=/usr/local/etc/php/conf.d/}" shape="note"];
  "sha256:b47d61c1f291bcbc796254d36dae7a71561ff4caa12e6b21c064fdd224b9c50c" [label="/bin/sh -c curl -O http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz  && tar xvfz ioncube_loaders_lin_x86-64.tar.gz  && PHP_EXT_DIR=$(php-config --extension-dir)  && cp \"ioncube/ioncube_loader_lin_7.0.so\" $PHP_EXT_DIR  && echo \"zend_extension=ioncube_loader_lin_7.0.so\" >> /usr/local/etc/php/conf.d/00_ioncube_loader_lin_7.0.ini  && rm -rf ioncube ioncube_loaders_lin_x86-64.tar.gz" shape="box"];
  "sha256:576459a112fa6d78d3aec057e7afc787d8c72226bf1f76ce5fd5d7bedda68c2c" [label="/bin/sh -c curl -o /filerun.zip -L https://www.filerun.com/download-latest  && mkdir /user-files  && chown www-data:www-data /user-files" shape="box"];
  "sha256:97ab37dabc3cf101da7f338215de292507d26c3e1a65063b4c4172ff22749f12" [label="copy{src=/db.sql, dest=/filerun.setup.sql}" shape="note"];
  "sha256:ae5f60a7089000f0a0990915eadb3ee9f8d384789e2038e4f5fa496d8c191ac0" [label="copy{src=/autoconfig.php, dest=/}" shape="note"];
  "sha256:1940fba7dfa813da8293cfeeb5dfd61e9ca53905cbb3e771bea5ae559432e11a" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:601015f2ed14a80d84ecbf04150e90e177cc98810331bc49a10d2cd35e208ecf" [label="copy{src=/wait-for-it.sh, dest=/}" shape="note"];
  "sha256:cec0d4475f930b2b9599bfa9549d222a0245b4e458f951113e3d2a26be9fcf89" [label="copy{src=/import-db.sh, dest=/}" shape="note"];
  "sha256:527384bbd524ac953041bcfb4ade558510d3a3a6bcd71907ef818bd40967c7a7" [label="/bin/sh -c chmod +x /entrypoint.sh /wait-for-it.sh /import-db.sh" shape="box"];
  "sha256:24d41330bb0edd603e7a1e38f803dc600b278abd4e2730212c55e703b63e21be" [label="sha256:24d41330bb0edd603e7a1e38f803dc600b278abd4e2730212c55e703b63e21be" shape="plaintext"];
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" -> "sha256:3314f76d428442f2fdb7c733711a839ad951191aca6c4fcda3b2407031c95b6d" [label=""];
  "sha256:3314f76d428442f2fdb7c733711a839ad951191aca6c4fcda3b2407031c95b6d" -> "sha256:9c89bba5b7a9653faca1c79b0ef201684c7ab901ed21812040d277e05971382b" [label=""];
  "sha256:15beb3c7234e4330622d47fbef598f462dab98cebcecad8f04d5d26db4ad2a27" -> "sha256:9c89bba5b7a9653faca1c79b0ef201684c7ab901ed21812040d277e05971382b" [label=""];
  "sha256:9c89bba5b7a9653faca1c79b0ef201684c7ab901ed21812040d277e05971382b" -> "sha256:b47d61c1f291bcbc796254d36dae7a71561ff4caa12e6b21c064fdd224b9c50c" [label=""];
  "sha256:b47d61c1f291bcbc796254d36dae7a71561ff4caa12e6b21c064fdd224b9c50c" -> "sha256:576459a112fa6d78d3aec057e7afc787d8c72226bf1f76ce5fd5d7bedda68c2c" [label=""];
  "sha256:576459a112fa6d78d3aec057e7afc787d8c72226bf1f76ce5fd5d7bedda68c2c" -> "sha256:97ab37dabc3cf101da7f338215de292507d26c3e1a65063b4c4172ff22749f12" [label=""];
  "sha256:15beb3c7234e4330622d47fbef598f462dab98cebcecad8f04d5d26db4ad2a27" -> "sha256:97ab37dabc3cf101da7f338215de292507d26c3e1a65063b4c4172ff22749f12" [label=""];
  "sha256:97ab37dabc3cf101da7f338215de292507d26c3e1a65063b4c4172ff22749f12" -> "sha256:ae5f60a7089000f0a0990915eadb3ee9f8d384789e2038e4f5fa496d8c191ac0" [label=""];
  "sha256:15beb3c7234e4330622d47fbef598f462dab98cebcecad8f04d5d26db4ad2a27" -> "sha256:ae5f60a7089000f0a0990915eadb3ee9f8d384789e2038e4f5fa496d8c191ac0" [label=""];
  "sha256:ae5f60a7089000f0a0990915eadb3ee9f8d384789e2038e4f5fa496d8c191ac0" -> "sha256:1940fba7dfa813da8293cfeeb5dfd61e9ca53905cbb3e771bea5ae559432e11a" [label=""];
  "sha256:15beb3c7234e4330622d47fbef598f462dab98cebcecad8f04d5d26db4ad2a27" -> "sha256:1940fba7dfa813da8293cfeeb5dfd61e9ca53905cbb3e771bea5ae559432e11a" [label=""];
  "sha256:1940fba7dfa813da8293cfeeb5dfd61e9ca53905cbb3e771bea5ae559432e11a" -> "sha256:601015f2ed14a80d84ecbf04150e90e177cc98810331bc49a10d2cd35e208ecf" [label=""];
  "sha256:15beb3c7234e4330622d47fbef598f462dab98cebcecad8f04d5d26db4ad2a27" -> "sha256:601015f2ed14a80d84ecbf04150e90e177cc98810331bc49a10d2cd35e208ecf" [label=""];
  "sha256:601015f2ed14a80d84ecbf04150e90e177cc98810331bc49a10d2cd35e208ecf" -> "sha256:cec0d4475f930b2b9599bfa9549d222a0245b4e458f951113e3d2a26be9fcf89" [label=""];
  "sha256:15beb3c7234e4330622d47fbef598f462dab98cebcecad8f04d5d26db4ad2a27" -> "sha256:cec0d4475f930b2b9599bfa9549d222a0245b4e458f951113e3d2a26be9fcf89" [label=""];
  "sha256:cec0d4475f930b2b9599bfa9549d222a0245b4e458f951113e3d2a26be9fcf89" -> "sha256:527384bbd524ac953041bcfb4ade558510d3a3a6bcd71907ef818bd40967c7a7" [label=""];
  "sha256:527384bbd524ac953041bcfb4ade558510d3a3a6bcd71907ef818bd40967c7a7" -> "sha256:24d41330bb0edd603e7a1e38f803dc600b278abd4e2730212c55e703b63e21be" [label=""];
}

