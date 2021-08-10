[app/sources/320096200.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:079cd6005709ae8ab824f6e997b4e79f3080cc2641e20c453c9d9e47004d592c" [label="/bin/sh -c echo \"@commuedge https://nl.alpinelinux.org/alpine/edge/community\" >> /etc/apk/repositories  && apk -U add     gnupg     nginx     s6     su-exec     php7-fpm@commuedge     php7-curl@commuedge     php7-iconv@commuedge     php7-xml@commuedge     php7-dom@commuedge     php7-openssl@commuedge     php7-json@commuedge     php7-zlib@commuedge     php7-pdo_mysql@commuedge     php7-pdo_pgsql@commuedge     php7-pdo_sqlite@commuedge     php7-sqlite3@commuedge  && cd /tmp  && wget -q http://repository.rainloop.net/v2/webmail/rainloop-community-latest.zip  && wget -q http://repository.rainloop.net/v2/webmail/rainloop-community-latest.zip.asc  && wget -q http://repository.rainloop.net/RainLoop.asc  && echo \"Verifying authenticity of rainloop-community-latest.zip using GPG...\"  && gpg --import RainLoop.asc  && FINGERPRINT=\"$(LANG=C gpg --verify rainloop-community-latest.zip.asc rainloop-community-latest.zip 2>&1   | sed -n \"s#Primary key fingerprint: \\(.*\\)#\\1#p\")\"  && if [ -z \"${FINGERPRINT}\" ]; then echo \"Warning! Invalid GPG signature!\" && exit 1; fi  && if [ \"${FINGERPRINT}\" != \"${GPG_rainloop}\" ]; then echo \"Warning! Wrong GPG fingerprint!\" && exit 1; fi  && echo \"All seems good, now unzipping rainloop-community-latest.zip...\"  && mkdir /rainloop && unzip -q /tmp/rainloop-community-latest.zip -d /rainloop  && find /rainloop -type d -exec chmod 755 {} \\;  && find /rainloop -type f -exec chmod 644 {} \\;  && apk del gnupg  && rm -rf /tmp/* /var/cache/apk/* /root/.gnupg" shape="box"];
  "sha256:0f64ff69f762cbccb8e67277f1c92e86715cfee737ea5198dfb5277824c7a04c" [label="local://context" shape="ellipse"];
  "sha256:2fa5c1394571e7746802ba47139d96564c7b59df4d74b7fefa4d79903e38cfa4" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:10526d81c02a85bc6bab5114ce5ab6c41e847516aecebd72fec0ace60aeeedad" [label="copy{src=/php-fpm.conf, dest=/etc/php7/php-fpm.conf}" shape="note"];
  "sha256:8a5e0fca7a6e8bdd50670d56adb9bda51a7eb69a0662505608f3c0996c110d8a" [label="copy{src=/s6.d, dest=/etc/s6.d}" shape="note"];
  "sha256:0fa5d979ce4e63f5cd8333f36f3010c094726cf7486279c08c6cbfb2f10a4b51" [label="copy{src=/run.sh, dest=/usr/local/bin/run.sh}" shape="note"];
  "sha256:cbc52074ae7bd8d0c706024df221eb39f79b7375c5b5b09d2d0f6a7eb2cf4b20" [label="/bin/sh -c chmod +x /usr/local/bin/run.sh /etc/s6.d/*/* /etc/s6.d/.s6-svscan/*" shape="box"];
  "sha256:07e6ff3dbea22a83a2b7e372f1218732fb946156f42bd40f99a084fa4d466948" [label="sha256:07e6ff3dbea22a83a2b7e372f1218732fb946156f42bd40f99a084fa4d466948" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:079cd6005709ae8ab824f6e997b4e79f3080cc2641e20c453c9d9e47004d592c" [label=""];
  "sha256:079cd6005709ae8ab824f6e997b4e79f3080cc2641e20c453c9d9e47004d592c" -> "sha256:2fa5c1394571e7746802ba47139d96564c7b59df4d74b7fefa4d79903e38cfa4" [label=""];
  "sha256:0f64ff69f762cbccb8e67277f1c92e86715cfee737ea5198dfb5277824c7a04c" -> "sha256:2fa5c1394571e7746802ba47139d96564c7b59df4d74b7fefa4d79903e38cfa4" [label=""];
  "sha256:2fa5c1394571e7746802ba47139d96564c7b59df4d74b7fefa4d79903e38cfa4" -> "sha256:10526d81c02a85bc6bab5114ce5ab6c41e847516aecebd72fec0ace60aeeedad" [label=""];
  "sha256:0f64ff69f762cbccb8e67277f1c92e86715cfee737ea5198dfb5277824c7a04c" -> "sha256:10526d81c02a85bc6bab5114ce5ab6c41e847516aecebd72fec0ace60aeeedad" [label=""];
  "sha256:10526d81c02a85bc6bab5114ce5ab6c41e847516aecebd72fec0ace60aeeedad" -> "sha256:8a5e0fca7a6e8bdd50670d56adb9bda51a7eb69a0662505608f3c0996c110d8a" [label=""];
  "sha256:0f64ff69f762cbccb8e67277f1c92e86715cfee737ea5198dfb5277824c7a04c" -> "sha256:8a5e0fca7a6e8bdd50670d56adb9bda51a7eb69a0662505608f3c0996c110d8a" [label=""];
  "sha256:8a5e0fca7a6e8bdd50670d56adb9bda51a7eb69a0662505608f3c0996c110d8a" -> "sha256:0fa5d979ce4e63f5cd8333f36f3010c094726cf7486279c08c6cbfb2f10a4b51" [label=""];
  "sha256:0f64ff69f762cbccb8e67277f1c92e86715cfee737ea5198dfb5277824c7a04c" -> "sha256:0fa5d979ce4e63f5cd8333f36f3010c094726cf7486279c08c6cbfb2f10a4b51" [label=""];
  "sha256:0fa5d979ce4e63f5cd8333f36f3010c094726cf7486279c08c6cbfb2f10a4b51" -> "sha256:cbc52074ae7bd8d0c706024df221eb39f79b7375c5b5b09d2d0f6a7eb2cf4b20" [label=""];
  "sha256:cbc52074ae7bd8d0c706024df221eb39f79b7375c5b5b09d2d0f6a7eb2cf4b20" -> "sha256:07e6ff3dbea22a83a2b7e372f1218732fb946156f42bd40f99a084fa4d466948" [label=""];
}

