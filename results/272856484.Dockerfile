[app/sources/272856484.Dockerfile]
digraph {
  "sha256:a1cada5cb3819b9290c438b7eccf107dcae67a747420ffd11606887c113dbeed" [label="docker-image://docker.io/library/node:10-alpine@sha256:dc98dac24efd4254f75976c40bce46944697a110d06ce7fa47e7268470cf2e28" shape="ellipse"];
  "sha256:b1702ee4963da431def676d48cb0a149cd21a4f972ff2b070940a0596cfcabfd" [label="/bin/sh -c echo \"http://dl-cdn.alpinelinux.org/alpine/edge/community\" >> /etc/apk/repositories   && echo \"http://dl-cdn.alpinelinux.org/alpine/edge/main\" >> /etc/apk/repositories   && echo \"http://dl-cdn.alpinelinux.org/alpine/edge/testing\" >> /etc/apk/repositories   && apk --no-cache  update   && apk --no-cache  upgrade   && apk add --no-cache --virtual .build-deps     gifsicle pngquant optipng libjpeg-turbo-utils     udev ttf-opensans chromium   && rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:fd3c7661bb247cf816e704348f6557be2b4ad499d2673123ea9ff51c660e6634" [label="sha256:fd3c7661bb247cf816e704348f6557be2b4ad499d2673123ea9ff51c660e6634" shape="plaintext"];
  "sha256:a1cada5cb3819b9290c438b7eccf107dcae67a747420ffd11606887c113dbeed" -> "sha256:b1702ee4963da431def676d48cb0a149cd21a4f972ff2b070940a0596cfcabfd" [label=""];
  "sha256:b1702ee4963da431def676d48cb0a149cd21a4f972ff2b070940a0596cfcabfd" -> "sha256:fd3c7661bb247cf816e704348f6557be2b4ad499d2673123ea9ff51c660e6634" [label=""];
}

