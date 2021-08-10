[app/sources/273515804.Dockerfile]
digraph {
  "sha256:3b76e6f0100d4c217ff268b8703ea2b89bae3ee5b0baf078c392bf3feb02d797" [label="local://context" shape="ellipse"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:ebbec57ca9485f1ab7cbe06cb82c0d41732f50f8bcadf270918c6adc16837594" [label="/bin/sh -c useradd -ms /bin/bash -u 1337 vessel" shape="box"];
  "sha256:a3a4905c7e1b5148910bcfcbc5b0e303e75f4e55dd4f399cddc9fea930b6ddb6" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:af4c8a286aa09be5486c44db9c59ca4c4f6877499265779792ad272c36a53c6d" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:f7615284db67bda8c0e08d18f453601162355f18b6790b2dca35b5435eb6a5bf" [label="/bin/sh -c set -x     && apt-get update && apt-get install -y gnupg gosu     && gosu nobody true" shape="box"];
  "sha256:4502f564d4f9553238ad5997079d8bca448ec2059f82c5c5325ab64b524b83a3" [label="/bin/sh -c echo \"deb http://ppa.launchpad.net/ondrej/php/ubuntu bionic main\" > /etc/apt/sources.list.d/ppa_ondrej_php.list     && echo \"deb http://ppa.launchpad.net/nginx/development/ubuntu bionic main\" > /etc/apt/sources.list.d/ppa_nginx_mainline.list     && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys E5267A6C     && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys C300EE8C     && apt-get update     && apt-get install -y curl zip unzip git supervisor sqlite3     && apt-get install -y nginx php7.3-fpm php7.3-cli        php7.3-pgsql php7.3-sqlite3 php7.3-gd        php7.3-curl php7.3-memcached        php7.3-imap php7.3-mysql php7.3-mbstring        php7.3-xml php7.3-zip php7.3-bcmath php7.3-soap        php7.3-intl php7.3-readline php7.3-xdebug        php7.3-msgpack php7.3-igbinary php7.3-ldap     && php -r \"readfile('http://getcomposer.org/installer');\" | php -- --install-dir=/usr/bin/ --filename=composer     && mkdir /run/php     && apt-get -y autoremove     && apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*     && echo \"daemon off;\" >> /etc/nginx/nginx.conf" shape="box"];
  "sha256:b6391dcf9be2d467673ae57668720054f09b9fd517fcf65f02d7752358aef464" [label="/bin/sh -c ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log" shape="box"];
  "sha256:b83a7be0ffc12a94fc62f38c8f4f9be8dcfecf52f439f5dc7858d1fbb494872e" [label="copy{src=/h5bp, dest=/etc/nginx/h5bp}" shape="note"];
  "sha256:8d67a2134848ca9624c65d1bcf93dbf340c533b7c4979672eef94a4e46426141" [label="copy{src=/default, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:ee27710740e122fcfa5d07251d534eba6e432b52175e494f3a12b3f51d52035b" [label="copy{src=/php-fpm.conf, dest=/etc/php/7.3/fpm/php-fpm.conf}" shape="note"];
  "sha256:4009db7a287e9c2efcc08e7e04e05452c4c794b74e7c1c47a3fdcead8dcdd40b" [label="copy{src=/xdebug.ini, dest=/etc/php/7.3/mods-available/xdebug.ini}" shape="note"];
  "sha256:5b36ef05e24a4469acaa188b6555ed7411c8ab9c27683a8bef6f4c05d1ed31a3" [label="copy{src=/vessel.ini, dest=/etc/php/7.3/fpm/conf.d/99-vessel.ini}" shape="note"];
  "sha256:6ac8745036f77d0aeb3d0f432980e8f3d9e61b70393a99950187bde16984ae09" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:f6926658f51a83f5024e6ec9e66e5139dd0a92a1b92985ecc2547e55824bc290" [label="copy{src=/start-container, dest=/usr/local/bin/start-container}" shape="note"];
  "sha256:eb2cbb518fc982f279350d91f757010e5066257e1ff68bf74790d8395ad3c6be" [label="/bin/sh -c chmod +x /usr/local/bin/start-container" shape="box"];
  "sha256:e9fee392c5b800ae63826e9dd2a1c765ea4bd84e8174818a5db4cdce2da12ce6" [label="sha256:e9fee392c5b800ae63826e9dd2a1c765ea4bd84e8174818a5db4cdce2da12ce6" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:ebbec57ca9485f1ab7cbe06cb82c0d41732f50f8bcadf270918c6adc16837594" [label=""];
  "sha256:ebbec57ca9485f1ab7cbe06cb82c0d41732f50f8bcadf270918c6adc16837594" -> "sha256:a3a4905c7e1b5148910bcfcbc5b0e303e75f4e55dd4f399cddc9fea930b6ddb6" [label=""];
  "sha256:a3a4905c7e1b5148910bcfcbc5b0e303e75f4e55dd4f399cddc9fea930b6ddb6" -> "sha256:af4c8a286aa09be5486c44db9c59ca4c4f6877499265779792ad272c36a53c6d" [label=""];
  "sha256:af4c8a286aa09be5486c44db9c59ca4c4f6877499265779792ad272c36a53c6d" -> "sha256:f7615284db67bda8c0e08d18f453601162355f18b6790b2dca35b5435eb6a5bf" [label=""];
  "sha256:f7615284db67bda8c0e08d18f453601162355f18b6790b2dca35b5435eb6a5bf" -> "sha256:4502f564d4f9553238ad5997079d8bca448ec2059f82c5c5325ab64b524b83a3" [label=""];
  "sha256:4502f564d4f9553238ad5997079d8bca448ec2059f82c5c5325ab64b524b83a3" -> "sha256:b6391dcf9be2d467673ae57668720054f09b9fd517fcf65f02d7752358aef464" [label=""];
  "sha256:b6391dcf9be2d467673ae57668720054f09b9fd517fcf65f02d7752358aef464" -> "sha256:b83a7be0ffc12a94fc62f38c8f4f9be8dcfecf52f439f5dc7858d1fbb494872e" [label=""];
  "sha256:3b76e6f0100d4c217ff268b8703ea2b89bae3ee5b0baf078c392bf3feb02d797" -> "sha256:b83a7be0ffc12a94fc62f38c8f4f9be8dcfecf52f439f5dc7858d1fbb494872e" [label=""];
  "sha256:b83a7be0ffc12a94fc62f38c8f4f9be8dcfecf52f439f5dc7858d1fbb494872e" -> "sha256:8d67a2134848ca9624c65d1bcf93dbf340c533b7c4979672eef94a4e46426141" [label=""];
  "sha256:3b76e6f0100d4c217ff268b8703ea2b89bae3ee5b0baf078c392bf3feb02d797" -> "sha256:8d67a2134848ca9624c65d1bcf93dbf340c533b7c4979672eef94a4e46426141" [label=""];
  "sha256:8d67a2134848ca9624c65d1bcf93dbf340c533b7c4979672eef94a4e46426141" -> "sha256:ee27710740e122fcfa5d07251d534eba6e432b52175e494f3a12b3f51d52035b" [label=""];
  "sha256:3b76e6f0100d4c217ff268b8703ea2b89bae3ee5b0baf078c392bf3feb02d797" -> "sha256:ee27710740e122fcfa5d07251d534eba6e432b52175e494f3a12b3f51d52035b" [label=""];
  "sha256:ee27710740e122fcfa5d07251d534eba6e432b52175e494f3a12b3f51d52035b" -> "sha256:4009db7a287e9c2efcc08e7e04e05452c4c794b74e7c1c47a3fdcead8dcdd40b" [label=""];
  "sha256:3b76e6f0100d4c217ff268b8703ea2b89bae3ee5b0baf078c392bf3feb02d797" -> "sha256:4009db7a287e9c2efcc08e7e04e05452c4c794b74e7c1c47a3fdcead8dcdd40b" [label=""];
  "sha256:4009db7a287e9c2efcc08e7e04e05452c4c794b74e7c1c47a3fdcead8dcdd40b" -> "sha256:5b36ef05e24a4469acaa188b6555ed7411c8ab9c27683a8bef6f4c05d1ed31a3" [label=""];
  "sha256:3b76e6f0100d4c217ff268b8703ea2b89bae3ee5b0baf078c392bf3feb02d797" -> "sha256:5b36ef05e24a4469acaa188b6555ed7411c8ab9c27683a8bef6f4c05d1ed31a3" [label=""];
  "sha256:5b36ef05e24a4469acaa188b6555ed7411c8ab9c27683a8bef6f4c05d1ed31a3" -> "sha256:6ac8745036f77d0aeb3d0f432980e8f3d9e61b70393a99950187bde16984ae09" [label=""];
  "sha256:3b76e6f0100d4c217ff268b8703ea2b89bae3ee5b0baf078c392bf3feb02d797" -> "sha256:6ac8745036f77d0aeb3d0f432980e8f3d9e61b70393a99950187bde16984ae09" [label=""];
  "sha256:6ac8745036f77d0aeb3d0f432980e8f3d9e61b70393a99950187bde16984ae09" -> "sha256:f6926658f51a83f5024e6ec9e66e5139dd0a92a1b92985ecc2547e55824bc290" [label=""];
  "sha256:3b76e6f0100d4c217ff268b8703ea2b89bae3ee5b0baf078c392bf3feb02d797" -> "sha256:f6926658f51a83f5024e6ec9e66e5139dd0a92a1b92985ecc2547e55824bc290" [label=""];
  "sha256:f6926658f51a83f5024e6ec9e66e5139dd0a92a1b92985ecc2547e55824bc290" -> "sha256:eb2cbb518fc982f279350d91f757010e5066257e1ff68bf74790d8395ad3c6be" [label=""];
  "sha256:eb2cbb518fc982f279350d91f757010e5066257e1ff68bf74790d8395ad3c6be" -> "sha256:e9fee392c5b800ae63826e9dd2a1c765ea4bd84e8174818a5db4cdce2da12ce6" [label=""];
}

