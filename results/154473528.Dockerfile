[app/sources/154473528.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:aaedfecc351f75febbe850fd3a4481d1f6ca687ba40eeb88e66ea4803bb7c16f" [label="/bin/sh -c apt-get -y upgrade" shape="box"];
  "sha256:a7c7907c0b511d359a753f3b0785a050ff3826d4f2e892d23743b712df3ccd0b" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -y install apache2 libapache2-mod-php5 php5-mysql php5-gd php-pear php-apc php5-curl php5-ldap curl lynx-cur" shape="box"];
  "sha256:714fc3babae462c1f06b0a1a80e90dedd92def60d008d5956fa4296129244cd2" [label="/bin/sh -c php5enmod openssl" shape="box"];
  "sha256:107a2e40e9924de0644df4ae9d73f8eb4d452fcbf30eb257cd3f13afe77866b5" [label="/bin/sh -c a2enmod php5" shape="box"];
  "sha256:fb26ec3bed77c5cf4f5e17e17b67dce6165cc38f6a51d8d044da5809faecba3f" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:9b5f77b157f61601492d6d3347298f32e67c72540d3b489f845b9530bdb76257" [label="/bin/sh -c sed -i \"s/short_open_tag = Off/short_open_tag = On/\" /etc/php5/apache2/php.ini" shape="box"];
  "sha256:4a217d0c41173feb1774067ed897741b434147401570f7e2e106337476cc8ebe" [label="/bin/sh -c sed -i \"s/error_reporting = .*$/error_reporting = E_ERROR | E_WARNING | E_PARSE/\" /etc/php5/apache2/php.ini" shape="box"];
  "sha256:b679f4c16d68525478f803e64adf5b5bb5a981b07ecd8ee1f2bc0796e3b9ae5a" [label="local://context" shape="ellipse"];
  "sha256:749bac57eb846bf4ba7d4f356aab0f5b90f82baf5cfcdb23093655c553cb4996" [label="copy{src=/app, dest=/var/www/site/app}" shape="note"];
  "sha256:d6c9a7cf44f89c8dc3a63f3c2829f6dc8de27891bcd544e9507b26fd33cabe8c" [label="copy{src=/apache-config.conf, dest=/etc/apache2/sites-enabled/000-default.conf}" shape="note"];
  "sha256:7eba954916c33e63536e2b4392294eba33e95de436622b60dbdd37591840f944" [label="sha256:7eba954916c33e63536e2b4392294eba33e95de436622b60dbdd37591840f944" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label=""];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" -> "sha256:aaedfecc351f75febbe850fd3a4481d1f6ca687ba40eeb88e66ea4803bb7c16f" [label=""];
  "sha256:aaedfecc351f75febbe850fd3a4481d1f6ca687ba40eeb88e66ea4803bb7c16f" -> "sha256:a7c7907c0b511d359a753f3b0785a050ff3826d4f2e892d23743b712df3ccd0b" [label=""];
  "sha256:a7c7907c0b511d359a753f3b0785a050ff3826d4f2e892d23743b712df3ccd0b" -> "sha256:714fc3babae462c1f06b0a1a80e90dedd92def60d008d5956fa4296129244cd2" [label=""];
  "sha256:714fc3babae462c1f06b0a1a80e90dedd92def60d008d5956fa4296129244cd2" -> "sha256:107a2e40e9924de0644df4ae9d73f8eb4d452fcbf30eb257cd3f13afe77866b5" [label=""];
  "sha256:107a2e40e9924de0644df4ae9d73f8eb4d452fcbf30eb257cd3f13afe77866b5" -> "sha256:fb26ec3bed77c5cf4f5e17e17b67dce6165cc38f6a51d8d044da5809faecba3f" [label=""];
  "sha256:fb26ec3bed77c5cf4f5e17e17b67dce6165cc38f6a51d8d044da5809faecba3f" -> "sha256:9b5f77b157f61601492d6d3347298f32e67c72540d3b489f845b9530bdb76257" [label=""];
  "sha256:9b5f77b157f61601492d6d3347298f32e67c72540d3b489f845b9530bdb76257" -> "sha256:4a217d0c41173feb1774067ed897741b434147401570f7e2e106337476cc8ebe" [label=""];
  "sha256:4a217d0c41173feb1774067ed897741b434147401570f7e2e106337476cc8ebe" -> "sha256:749bac57eb846bf4ba7d4f356aab0f5b90f82baf5cfcdb23093655c553cb4996" [label=""];
  "sha256:b679f4c16d68525478f803e64adf5b5bb5a981b07ecd8ee1f2bc0796e3b9ae5a" -> "sha256:749bac57eb846bf4ba7d4f356aab0f5b90f82baf5cfcdb23093655c553cb4996" [label=""];
  "sha256:749bac57eb846bf4ba7d4f356aab0f5b90f82baf5cfcdb23093655c553cb4996" -> "sha256:d6c9a7cf44f89c8dc3a63f3c2829f6dc8de27891bcd544e9507b26fd33cabe8c" [label=""];
  "sha256:b679f4c16d68525478f803e64adf5b5bb5a981b07ecd8ee1f2bc0796e3b9ae5a" -> "sha256:d6c9a7cf44f89c8dc3a63f3c2829f6dc8de27891bcd544e9507b26fd33cabe8c" [label=""];
  "sha256:d6c9a7cf44f89c8dc3a63f3c2829f6dc8de27891bcd544e9507b26fd33cabe8c" -> "sha256:7eba954916c33e63536e2b4392294eba33e95de436622b60dbdd37591840f944" [label=""];
}

