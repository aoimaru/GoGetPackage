[app/sources/320096117.Dockerfile]
digraph {
  "sha256:2880023ed8aa9c6afa44a719c06c0ca725e0ddb2e307ce322fdc38f31b1a7036" [label="local://context" shape="ellipse"];
  "sha256:4a751c5e67698a4ebcb3619b041be070bac834d1e552cb6bf7a9acc34d56a670" [label="docker-image://docker.io/wonderfall/nginx-php:7.1" shape="ellipse"];
  "sha256:5473853c767cf78c044771b4b2475946a0fe7b4164eff508305ae74121ca9978" [label="/bin/sh -c apk -U upgrade  && apk add -t build-dependencies     gnupg     tar     build-base     autoconf     automake     pcre-dev     libtool     samba-dev  && apk add     libressl     ca-certificates     libsmbclient     tzdata  && pecl install     smbclient     apcu     redis  && echo \"extension=smbclient.so\" > /php/conf.d/smbclient.ini  && echo \"extension=redis.so\" > /php/conf.d/redis.ini  && mkdir /nextcloud  && cd /tmp  && NEXTCLOUD_TARBALL=\"nextcloud-${NEXTCLOUD_VERSION}.tar.bz2\"  && wget -q https://download.nextcloud.com/server/releases/${NEXTCLOUD_TARBALL}  && wget -q https://download.nextcloud.com/server/releases/${NEXTCLOUD_TARBALL}.sha512  && wget -q https://download.nextcloud.com/server/releases/${NEXTCLOUD_TARBALL}.asc  && wget -q https://nextcloud.com/nextcloud.asc  && echo \"Verifying both integrity and authenticity of ${NEXTCLOUD_TARBALL}...\"  && CHECKSUM_STATE=$(echo -n $(sha512sum -c ${NEXTCLOUD_TARBALL}.sha512) | tail -c 2)  && if [ \"${CHECKSUM_STATE}\" != \"OK\" ]; then echo \"Warning! Checksum does not match!\" && exit 1; fi  && gpg --import nextcloud.asc  && FINGERPRINT=\"$(LANG=C gpg --verify ${NEXTCLOUD_TARBALL}.asc ${NEXTCLOUD_TARBALL} 2>&1   | sed -n \"s#Primary key fingerprint: \\(.*\\)#\\1#p\")\"  && if [ -z \"${FINGERPRINT}\" ]; then echo \"Warning! Invalid GPG signature!\" && exit 1; fi  && if [ \"${FINGERPRINT}\" != \"${GPG_nextcloud}\" ]; then echo \"Warning! Wrong GPG fingerprint!\" && exit 1; fi  && echo \"All seems good, now unpacking ${NEXTCLOUD_TARBALL}...\"  && tar xjf ${NEXTCLOUD_TARBALL} --strip 1 -C /nextcloud  && update-ca-certificates  && apk del build-dependencies  && rm -rf /var/cache/apk/* /tmp/* /root/.gnupg" shape="box"];
  "sha256:3ea02ee65036afe159094cdbcb890156533fe15bb221b8e7726f1a52a3244248" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:2ffee5ee635a9cb05077317a35019fdcc934c2367765cb63bd7d628fc13ac81d" [label="/bin/sh -c chmod +x /usr/local/bin/* /etc/s6.d/*/* /etc/s6.d/.s6-svscan/*" shape="box"];
  "sha256:c3b9dabfa2c5b2b105adf71b228a204b9f2fa8be633c6581c14fb0c036e0507e" [label="sha256:c3b9dabfa2c5b2b105adf71b228a204b9f2fa8be633c6581c14fb0c036e0507e" shape="plaintext"];
  "sha256:4a751c5e67698a4ebcb3619b041be070bac834d1e552cb6bf7a9acc34d56a670" -> "sha256:5473853c767cf78c044771b4b2475946a0fe7b4164eff508305ae74121ca9978" [label=""];
  "sha256:5473853c767cf78c044771b4b2475946a0fe7b4164eff508305ae74121ca9978" -> "sha256:3ea02ee65036afe159094cdbcb890156533fe15bb221b8e7726f1a52a3244248" [label=""];
  "sha256:2880023ed8aa9c6afa44a719c06c0ca725e0ddb2e307ce322fdc38f31b1a7036" -> "sha256:3ea02ee65036afe159094cdbcb890156533fe15bb221b8e7726f1a52a3244248" [label=""];
  "sha256:3ea02ee65036afe159094cdbcb890156533fe15bb221b8e7726f1a52a3244248" -> "sha256:2ffee5ee635a9cb05077317a35019fdcc934c2367765cb63bd7d628fc13ac81d" [label=""];
  "sha256:2ffee5ee635a9cb05077317a35019fdcc934c2367765cb63bd7d628fc13ac81d" -> "sha256:c3b9dabfa2c5b2b105adf71b228a204b9f2fa8be633c6581c14fb0c036e0507e" [label=""];
}

