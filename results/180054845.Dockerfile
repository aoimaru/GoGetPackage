[app/sources/180054845.Dockerfile]
digraph {
  "sha256:22a947ff598c6f7f290e9be6ea9037f04755393272b43171b1b73501bf36ed14" [label="local://context" shape="ellipse"];
  "sha256:1169fa0706743e3dde6fba0da7fed38e73e343507dc21607fd42a2a3c9397925" [label="docker-image://docker.io/arm32v6/alpine:3.7" shape="ellipse"];
  "sha256:73c96595045e05d4099d5148e440247782061f32f59c788a8e08afaf0a56bcde" [label="copy{src=/tmp/qemu--static, dest=/usr/bin/qemu--static}" shape="note"];
  "sha256:36ccc92e7ef3e482a15e3b2eab87a9c62f6c026406cb90b26f5177e84b1041a0" [label="/bin/sh -c apk add --no-cache --virtual .build-dependencies         tar         && apk add --no-cache         apk-tools         bash         busybox         ca-certificates         curl         musl-utils         musl         tzdata         nginx         php7-curl         php7-fpm         php7-json         php7-session         php7-zip         php7         && if [[ \"${BUILD_ARCH}\" = \"arm32v6\" ]]; then S6_ARCH=\"armhf\"; else S6_ARCH=\"${BUILD_ARCH}\"; fi         && curl -L -s \"https://github.com/just-containers/s6-overlay/releases/download/v1.21.4.0/s6-overlay-${S6_ARCH}.tar.gz\"         | tar zxf - -C /         && apk del --purge .build-dependencies         && rm -f -r /tmp/*" shape="box"];
  "sha256:6202f8d0c72f53b5547222c7f6e1bd51d77ce1f8451e1bf0de4080e6b1808862" [label="/bin/sh -c echo \"fastcgi_param BUILD_VERSION ${BUILD_VERSION};\" >> /etc/nginx/fastcgi_params" shape="box"];
  "sha256:ef8ae6ab2dada8d14144ca9c018fd5466b7a0565ec8d95d7764757ec5a1f4948" [label="/bin/sh -c echo \"fastcgi_param BUILD_REF ${BUILD_REF};\" >> /etc/nginx/fastcgi_params" shape="box"];
  "sha256:851a1d138d8b328b6d253406dfdc2fdc2be59a10fe693bd6a037f526c413bebc" [label="copy{src=/.docker/rootfs, dest=/}" shape="note"];
  "sha256:7e768df5842ed35ec96d154d784d039f1e3e2c1dc967b0a3d7a9b077877b1293" [label="copy{src=/tasmoadmin, dest=/var/www/tasmoadmin}" shape="note"];
  "sha256:1ae80a8a13624c14e89fe30ecdf29d0bbef5663127bdb112ea07759f3b540262" [label="/bin/sh -c find /var/www/tasmoadmin -type f -name \".htaccess\" -depth -exec rm -f {} \\;     && find /var/www/tasmoadmin -type f -name \".empty\" -depth -exec rm -f {} \\;" shape="box"];
  "sha256:6fa9721525bc5bf9c697142838f00890676e5ef234791ff4a290f454bc7e4e55" [label="sha256:6fa9721525bc5bf9c697142838f00890676e5ef234791ff4a290f454bc7e4e55" shape="plaintext"];
  "sha256:1169fa0706743e3dde6fba0da7fed38e73e343507dc21607fd42a2a3c9397925" -> "sha256:73c96595045e05d4099d5148e440247782061f32f59c788a8e08afaf0a56bcde" [label=""];
  "sha256:22a947ff598c6f7f290e9be6ea9037f04755393272b43171b1b73501bf36ed14" -> "sha256:73c96595045e05d4099d5148e440247782061f32f59c788a8e08afaf0a56bcde" [label=""];
  "sha256:73c96595045e05d4099d5148e440247782061f32f59c788a8e08afaf0a56bcde" -> "sha256:36ccc92e7ef3e482a15e3b2eab87a9c62f6c026406cb90b26f5177e84b1041a0" [label=""];
  "sha256:36ccc92e7ef3e482a15e3b2eab87a9c62f6c026406cb90b26f5177e84b1041a0" -> "sha256:6202f8d0c72f53b5547222c7f6e1bd51d77ce1f8451e1bf0de4080e6b1808862" [label=""];
  "sha256:6202f8d0c72f53b5547222c7f6e1bd51d77ce1f8451e1bf0de4080e6b1808862" -> "sha256:ef8ae6ab2dada8d14144ca9c018fd5466b7a0565ec8d95d7764757ec5a1f4948" [label=""];
  "sha256:ef8ae6ab2dada8d14144ca9c018fd5466b7a0565ec8d95d7764757ec5a1f4948" -> "sha256:851a1d138d8b328b6d253406dfdc2fdc2be59a10fe693bd6a037f526c413bebc" [label=""];
  "sha256:22a947ff598c6f7f290e9be6ea9037f04755393272b43171b1b73501bf36ed14" -> "sha256:851a1d138d8b328b6d253406dfdc2fdc2be59a10fe693bd6a037f526c413bebc" [label=""];
  "sha256:851a1d138d8b328b6d253406dfdc2fdc2be59a10fe693bd6a037f526c413bebc" -> "sha256:7e768df5842ed35ec96d154d784d039f1e3e2c1dc967b0a3d7a9b077877b1293" [label=""];
  "sha256:22a947ff598c6f7f290e9be6ea9037f04755393272b43171b1b73501bf36ed14" -> "sha256:7e768df5842ed35ec96d154d784d039f1e3e2c1dc967b0a3d7a9b077877b1293" [label=""];
  "sha256:7e768df5842ed35ec96d154d784d039f1e3e2c1dc967b0a3d7a9b077877b1293" -> "sha256:1ae80a8a13624c14e89fe30ecdf29d0bbef5663127bdb112ea07759f3b540262" [label=""];
  "sha256:1ae80a8a13624c14e89fe30ecdf29d0bbef5663127bdb112ea07759f3b540262" -> "sha256:6fa9721525bc5bf9c697142838f00890676e5ef234791ff4a290f454bc7e4e55" [label=""];
}

