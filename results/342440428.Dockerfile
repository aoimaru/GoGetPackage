[app/sources/342440428.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:869fef87758d1dfeb829306304e9bb66d0996bb89fcec2cb3eb1a390a6d6ae40" [label="/bin/sh -c echo \"http://dl-2.alpinelinux.org/alpine/edge/testing\" >> /etc/apk/repositories" shape="box"];
  "sha256:b275199a2899080f8fc3ea257232b2f51bd3f0f174f27c303ccc3dc3414ba4f6" [label="/bin/sh -c apk update && apk add --no-cache bash     alsa-lib     at-spi2-atk     atk     cairo     cups-libs     dbus-libs     eudev-libs     expat     flac     gdk-pixbuf     glib     libgcc     libjpeg-turbo     libpng     libwebp     libx11     libxcomposite     libxdamage     libxext     libxfixes     tzdata     libexif     udev     xvfb     zlib-dev     chromium     wqy-zenhei     && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime     && echo ${TZ} > /etc/timezone     && rm -rf /var/cache/apk/*     /usr/share/man     /tmp/*" shape="box"];
  "sha256:17c62f678e5194c04925945d5861989ba4c0edcfc033215937450e29deab48c5" [label="/bin/sh -c mkdir -p /data && adduser -D chrome     && chown -R chrome:chrome /data" shape="box"];
  "sha256:5c94f83f6e2058e53bd48610c47215f476bd43df955395b7848cbc362119491b" [label="sha256:5c94f83f6e2058e53bd48610c47215f476bd43df955395b7848cbc362119491b" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:869fef87758d1dfeb829306304e9bb66d0996bb89fcec2cb3eb1a390a6d6ae40" [label=""];
  "sha256:869fef87758d1dfeb829306304e9bb66d0996bb89fcec2cb3eb1a390a6d6ae40" -> "sha256:b275199a2899080f8fc3ea257232b2f51bd3f0f174f27c303ccc3dc3414ba4f6" [label=""];
  "sha256:b275199a2899080f8fc3ea257232b2f51bd3f0f174f27c303ccc3dc3414ba4f6" -> "sha256:17c62f678e5194c04925945d5861989ba4c0edcfc033215937450e29deab48c5" [label=""];
  "sha256:17c62f678e5194c04925945d5861989ba4c0edcfc033215937450e29deab48c5" -> "sha256:5c94f83f6e2058e53bd48610c47215f476bd43df955395b7848cbc362119491b" [label=""];
}

