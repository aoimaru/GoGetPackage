[app/sources/320096879.Dockerfile]
digraph {
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" [label="local://context" shape="ellipse"];
  "sha256:04dd1d141853ab8c3d3324bd28b56272aa940bd0175b67b7b959e5ae12be4b55" [label="docker-image://docker.io/dockette/alpine:3.7" shape="ellipse"];
  "sha256:070a0ad5f1c2a55f4b6f738e01772cedeeae3f10dfe6a1ab315055ca17eb9417" [label="/bin/sh -c apk update &&     echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&     echo '@community http://nl.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories &&     apk upgrade &&     addgroup -g ${USER_ID} -S ${USER_NAME} &&     adduser -u ${USER_ID} -D -h ${USER_WORKDIR} -S -G ${USER_NAME} ${USER_NAME} &&     apk add --update     git     mercurial     curl     bash     supervisor     openssl     openssh     nginx     php7@testing     php7-bcmath@testing     php7-bz2@testing     php7-calendar@testing     php7-ctype@testing     php7-curl@testing     php7-dom@testing     php7-fileinfo@testing     php7-fpm@testing     php7-gd@testing     php7-iconv@testing     php7-imap@testing     php7-intl@testing     php7-json@testing     php7-mbstring@testing     php7-mcrypt@testing     php7-mysqli@testing     php7-mysqlnd@testing     php7-openssl@testing     php7-phar@testing     php7-pdo@testing     php7-pdo_mysql@testing     php7-session@testing     php7-simplexml@testing     php7-tokenizer@testing     php7-xmlwriter@testing     php7-zip@testing     php7-xml@testing     php7-xmlreader@testing &&     curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer &&     git clone https://github.com/composer/packagist.git /srv &&     git -C /srv reset --hard 2d90743bec035e87928f4afa356ba28a1547608f &&     composer install -d /srv --no-dev --no-interaction --no-scripts -v -o &&     mkdir -p /run/nginx &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:d6adbd846852e6032f3e713fd53db8382b22d22ca30c8cd1c16c62ea3b35fe3e" [label="copy{src=/web/app_dev.php, dest=/srv/web/app_dev.php}" shape="note"];
  "sha256:ff2697fc9e9ab8850a26e895be7059c06eb6e123cc6b082f9743cec8f50f5a93" [label="copy{src=/php/php-fpm.conf, dest=/etc/php/7.1/fpm/php-fpm.conf}" shape="note"];
  "sha256:ad5f7faaf71a660db756684bb81836bdf2d792948ec7fa861c282f2482fee52c" [label="copy{src=/nginx/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:58884c6820409261b4337c5f8845161048d668564780cd9ea1c75fb4eeaaa5e3" [label="copy{src=/nginx/mime.types, dest=/etc/nginx/mime.types}" shape="note"];
  "sha256:9f3b3a97efdd7e2e449ffbf3f468cd550bc0ca923774f6954df24483357b30c7" [label="copy{src=/nginx/sites/dev.conf, dest=/etc/nginx/sites.d/dev.conf}" shape="note"];
  "sha256:782aa0ec427635ac081ba6a1ad74f1b365c45e7dc48c7d1ce1895dc5eb034d35" [label="copy{src=/nginx/sites/stable.conf, dest=/etc/nginx/sites.d/stable.conf}" shape="note"];
  "sha256:024921ecceb874bd757096d08f7a0689dddb7359c4f81bcafdd57bbec18dbaff" [label="copy{src=/ssh, dest=/tpl/ssh}" shape="note"];
  "sha256:67326aae9d2063eeb971697b2c054dd061496c2516f40b0f5879c2fa4b5a2bda" [label="copy{src=/cron/root, dest=/etc/crontabs/root}" shape="note"];
  "sha256:b34c767f393ab41e9af4055cb9fc8a9120350ea6a1fad57eb000999378914710" [label="copy{src=/cron/packagist, dest=/etc/periodic/1min/packagist}" shape="note"];
  "sha256:3f0611318cc45c264855ff0aaae174beb6920536b19048dcf3f62a6d6701e40e" [label="copy{src=/supervisor/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:f9095e73ad73bed471776606113fa5d764d337755a9d38e40d4335e3ca03dea3" [label="mkdir{path=/srv}" shape="note"];
  "sha256:950bb800104da28ba20230b6c006734f4e6208b8dfa221d7f13ac3cfd5987175" [label="copy{src=/entrypoint.sh, dest=/}" shape="note"];
  "sha256:88d16884358ac19ec85c97337c15a86f6b53df0cb54c8fefdd16e05a1bb51d6a" [label="sha256:88d16884358ac19ec85c97337c15a86f6b53df0cb54c8fefdd16e05a1bb51d6a" shape="plaintext"];
  "sha256:04dd1d141853ab8c3d3324bd28b56272aa940bd0175b67b7b959e5ae12be4b55" -> "sha256:070a0ad5f1c2a55f4b6f738e01772cedeeae3f10dfe6a1ab315055ca17eb9417" [label=""];
  "sha256:070a0ad5f1c2a55f4b6f738e01772cedeeae3f10dfe6a1ab315055ca17eb9417" -> "sha256:d6adbd846852e6032f3e713fd53db8382b22d22ca30c8cd1c16c62ea3b35fe3e" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:d6adbd846852e6032f3e713fd53db8382b22d22ca30c8cd1c16c62ea3b35fe3e" [label=""];
  "sha256:d6adbd846852e6032f3e713fd53db8382b22d22ca30c8cd1c16c62ea3b35fe3e" -> "sha256:ff2697fc9e9ab8850a26e895be7059c06eb6e123cc6b082f9743cec8f50f5a93" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:ff2697fc9e9ab8850a26e895be7059c06eb6e123cc6b082f9743cec8f50f5a93" [label=""];
  "sha256:ff2697fc9e9ab8850a26e895be7059c06eb6e123cc6b082f9743cec8f50f5a93" -> "sha256:ad5f7faaf71a660db756684bb81836bdf2d792948ec7fa861c282f2482fee52c" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:ad5f7faaf71a660db756684bb81836bdf2d792948ec7fa861c282f2482fee52c" [label=""];
  "sha256:ad5f7faaf71a660db756684bb81836bdf2d792948ec7fa861c282f2482fee52c" -> "sha256:58884c6820409261b4337c5f8845161048d668564780cd9ea1c75fb4eeaaa5e3" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:58884c6820409261b4337c5f8845161048d668564780cd9ea1c75fb4eeaaa5e3" [label=""];
  "sha256:58884c6820409261b4337c5f8845161048d668564780cd9ea1c75fb4eeaaa5e3" -> "sha256:9f3b3a97efdd7e2e449ffbf3f468cd550bc0ca923774f6954df24483357b30c7" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:9f3b3a97efdd7e2e449ffbf3f468cd550bc0ca923774f6954df24483357b30c7" [label=""];
  "sha256:9f3b3a97efdd7e2e449ffbf3f468cd550bc0ca923774f6954df24483357b30c7" -> "sha256:782aa0ec427635ac081ba6a1ad74f1b365c45e7dc48c7d1ce1895dc5eb034d35" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:782aa0ec427635ac081ba6a1ad74f1b365c45e7dc48c7d1ce1895dc5eb034d35" [label=""];
  "sha256:782aa0ec427635ac081ba6a1ad74f1b365c45e7dc48c7d1ce1895dc5eb034d35" -> "sha256:024921ecceb874bd757096d08f7a0689dddb7359c4f81bcafdd57bbec18dbaff" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:024921ecceb874bd757096d08f7a0689dddb7359c4f81bcafdd57bbec18dbaff" [label=""];
  "sha256:024921ecceb874bd757096d08f7a0689dddb7359c4f81bcafdd57bbec18dbaff" -> "sha256:67326aae9d2063eeb971697b2c054dd061496c2516f40b0f5879c2fa4b5a2bda" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:67326aae9d2063eeb971697b2c054dd061496c2516f40b0f5879c2fa4b5a2bda" [label=""];
  "sha256:67326aae9d2063eeb971697b2c054dd061496c2516f40b0f5879c2fa4b5a2bda" -> "sha256:b34c767f393ab41e9af4055cb9fc8a9120350ea6a1fad57eb000999378914710" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:b34c767f393ab41e9af4055cb9fc8a9120350ea6a1fad57eb000999378914710" [label=""];
  "sha256:b34c767f393ab41e9af4055cb9fc8a9120350ea6a1fad57eb000999378914710" -> "sha256:3f0611318cc45c264855ff0aaae174beb6920536b19048dcf3f62a6d6701e40e" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:3f0611318cc45c264855ff0aaae174beb6920536b19048dcf3f62a6d6701e40e" [label=""];
  "sha256:3f0611318cc45c264855ff0aaae174beb6920536b19048dcf3f62a6d6701e40e" -> "sha256:f9095e73ad73bed471776606113fa5d764d337755a9d38e40d4335e3ca03dea3" [label=""];
  "sha256:f9095e73ad73bed471776606113fa5d764d337755a9d38e40d4335e3ca03dea3" -> "sha256:950bb800104da28ba20230b6c006734f4e6208b8dfa221d7f13ac3cfd5987175" [label=""];
  "sha256:9ba9fdbee2c04f9bfc97f117225c320e3bf61e32dbacfd7bd1e49ce2b5961d4b" -> "sha256:950bb800104da28ba20230b6c006734f4e6208b8dfa221d7f13ac3cfd5987175" [label=""];
  "sha256:950bb800104da28ba20230b6c006734f4e6208b8dfa221d7f13ac3cfd5987175" -> "sha256:88d16884358ac19ec85c97337c15a86f6b53df0cb54c8fefdd16e05a1bb51d6a" [label=""];
}

