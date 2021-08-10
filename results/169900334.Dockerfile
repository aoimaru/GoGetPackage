[app/sources/169900334.Dockerfile]
digraph {
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" [label="docker-image://docker.io/library/openjdk:8-jdk" shape="ellipse"];
  "sha256:3afe8ff8dde8a15c80aa11161ad2b9944c77429fe87f905766c59e4e0cf821b3" [label="/bin/sh -c mkdir -p \"$CATALINA_HOME\"" shape="box"];
  "sha256:496111e6ea9810f7b490cf23c4e7f443c51954f544edd19c0b72facf6065985f" [label="mkdir{path=/usr/local/tomcat}" shape="note"];
  "sha256:b5d64921e2151ea2ff12bdf59614f54d7fd4c0358d7711703883bba8e3fd7b96" [label="/bin/sh -c set -eux; \t\tsavedAptMark=\"$(apt-mark showmanual)\"; \tapt-get update; \t\tapt-get install -y --no-install-recommends gnupg dirmngr; \t\texport GNUPGHOME=\"$(mktemp -d)\"; \tfor key in $GPG_KEYS; do \t\tgpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys \"$key\"; \tdone; \t\tapt-get install -y --no-install-recommends wget ca-certificates; \t\tsuccess=; \tfor url in $TOMCAT_TGZ_URLS; do \t\tif wget -O tomcat.tar.gz \"$url\"; then \t\t\tsuccess=1; \t\t\tbreak; \t\tfi; \tdone; \t[ -n \"$success\" ]; \t\techo \"$TOMCAT_SHA512 *tomcat.tar.gz\" | sha512sum --strict --check -; \t\tsuccess=; \tfor url in $TOMCAT_ASC_URLS; do \t\tif wget -O tomcat.tar.gz.asc \"$url\"; then \t\t\tsuccess=1; \t\t\tbreak; \t\tfi; \tdone; \t[ -n \"$success\" ]; \t\tgpg --batch --verify tomcat.tar.gz.asc tomcat.tar.gz; \ttar -xvf tomcat.tar.gz --strip-components=1; \trm bin/*.bat; \trm tomcat.tar.gz*; \tcommand -v gpgconf && gpgconf --kill all || :; \trm -rf \"$GNUPGHOME\"; \t\tnativeBuildDir=\"$(mktemp -d)\"; \ttar -xvf bin/tomcat-native.tar.gz -C \"$nativeBuildDir\" --strip-components=1; \tapt-get install -y --no-install-recommends \t\tdpkg-dev \t\tgcc \t\tlibapr1-dev \t\tlibssl-dev \t\tmake \t; \t( \t\texport CATALINA_HOME=\"$PWD\"; \t\tcd \"$nativeBuildDir/native\"; \t\tgnuArch=\"$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)\"; \t\taprConfig=\"$(which apr-1-config)\"; \t\t./configure \t\t\t--build=\"$gnuArch\" \t\t\t--libdir=\"$TOMCAT_NATIVE_LIBDIR\" \t\t\t--prefix=\"$CATALINA_HOME\" \t\t\t--with-apr=\"$aprConfig\" \t\t\t--with-java-home=\"$JAVA_HOME\" \t\t\t--with-ssl=yes; \t\tmake -j \"$(nproc)\"; \t\tmake install; \t); \trm -rf \"$nativeBuildDir\"; \trm bin/tomcat-native.tar.gz; \t\tapt-mark auto '.*' > /dev/null; \t[ -z \"$savedAptMark\" ] || apt-mark manual $savedAptMark > /dev/null; \tfind \"$TOMCAT_NATIVE_LIBDIR\" -type f -executable -exec ldd '{}' ';' \t\t| awk '/=>/ { print $(NF-1) }' \t\t| sort -u \t\t| xargs -r dpkg-query --search \t\t| cut -d: -f1 \t\t| sort -u \t\t| xargs -r apt-mark manual \t; \tapt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \trm -rf /var/lib/apt/lists/*; \t\tfind ./bin/ -name '*.sh' -exec sed -ri 's|^#!/bin/sh$|#!/usr/bin/env bash|' '{}' +; \t\tchmod -R +rX .; \tchmod 777 logs work" shape="box"];
  "sha256:dd5026485b29498764f26f176f793a5b3fa856138b3f520a1d4fb3ce94bc36ff" [label="/bin/sh -c set -e \t&& nativeLines=\"$(catalina.sh configtest 2>&1)\" \t&& nativeLines=\"$(echo \"$nativeLines\" | grep 'Apache Tomcat Native')\" \t&& nativeLines=\"$(echo \"$nativeLines\" | sort -u)\" \t&& if ! echo \"$nativeLines\" | grep 'INFO: Loaded APR based Apache Tomcat Native library' >&2; then \t\techo >&2 \"$nativeLines\"; \t\texit 1; \tfi" shape="box"];
  "sha256:9fd091f717178fa79978b6b0b70e806a80afb9d4e9017f58ba03240ca5022777" [label="sha256:9fd091f717178fa79978b6b0b70e806a80afb9d4e9017f58ba03240ca5022777" shape="plaintext"];
  "sha256:f6b3222c6092a9e9791a834cacf1e7fba1de6483c8bee590b6c32929db42c37d" -> "sha256:3afe8ff8dde8a15c80aa11161ad2b9944c77429fe87f905766c59e4e0cf821b3" [label=""];
  "sha256:3afe8ff8dde8a15c80aa11161ad2b9944c77429fe87f905766c59e4e0cf821b3" -> "sha256:496111e6ea9810f7b490cf23c4e7f443c51954f544edd19c0b72facf6065985f" [label=""];
  "sha256:496111e6ea9810f7b490cf23c4e7f443c51954f544edd19c0b72facf6065985f" -> "sha256:b5d64921e2151ea2ff12bdf59614f54d7fd4c0358d7711703883bba8e3fd7b96" [label=""];
  "sha256:b5d64921e2151ea2ff12bdf59614f54d7fd4c0358d7711703883bba8e3fd7b96" -> "sha256:dd5026485b29498764f26f176f793a5b3fa856138b3f520a1d4fb3ce94bc36ff" [label=""];
  "sha256:dd5026485b29498764f26f176f793a5b3fa856138b3f520a1d4fb3ce94bc36ff" -> "sha256:9fd091f717178fa79978b6b0b70e806a80afb9d4e9017f58ba03240ca5022777" [label=""];
}
