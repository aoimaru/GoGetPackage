[app/sources/320100906.Dockerfile]
digraph {
  "sha256:8c13abff778301e9232882ff11292c547bb74545a76e5d2b798a93ff0a4f900a" [label="local://context" shape="ellipse"];
  "sha256:f5b42853d71735fd5134f7cd1567bbc4171bd4f297ee3a989adbf28f01545a10" [label="docker-image://docker.io/nutshells/base:latest" shape="ellipse"];
  "sha256:0935989c0e51fe3f3e66c987b0653d3d885d53de469cfba27457436bb1210bd6" [label="mkdir{path=/usr/local/src}" shape="note"];
  "sha256:83cba51985861569f26c0b2306235aeccba58dc6a35be5130bc29ab5cd697c3e" [label="/bin/sh -c set -ex;     apk add --no-cache --virtual .build-deps         build-base         linux-headers         autoconf         automake         libtool         pcre-dev         mbedtls-dev         libsodium-dev         c-ares-dev         libev-dev     ;     apk add --no-cache --virtual .runtime-deps         pcre         mbedtls         libsodium         c-ares         libev     ;     curl -sSLO \"https://github.com/shadowsocks/shadowsocks-libev/releases/download/v${SS_VERSION}/shadowsocks-libev-${SS_VERSION}.tar.gz\";     echo \"${SS_SHA256}  shadowsocks-libev-${SS_VERSION}.tar.gz\" | sha256sum -c -;     tar xzf \"shadowsocks-libev-${SS_VERSION}.tar.gz\";     cd \"shadowsocks-libev-${SS_VERSION}\";     ./configure --disable-documentation;     make;     cp src/ss-server src/ss-local /usr/local/bin/;     cd ..;     rm -f \"shadowsocks-libev-${SS_VERSION}.tar.gz\";     rm -rf \"shadowsocks-libev-${SS_VERSION}\";     if [ \"${WITH_OBFS}\" = 'true' ]; then         curl -sSLO \"https://github.com/shadowsocks/simple-obfs/archive/v${OBFS_VERSION}.tar.gz\";         echo \"${OBFS_SHA256}  v${OBFS_VERSION}.tar.gz\" | sha256sum -c -;         tar xzf \"v${OBFS_VERSION}.tar.gz\";         cd \"simple-obfs-${OBFS_VERSION}\";         rm -rf libcork;         curl -sSLO \"https://github.com/shadowsocks/libcork/archive/${LIBCORK_COMMIT}.tar.gz\";         echo \"${LIBCORK_SHA256}  ${LIBCORK_COMMIT}.tar.gz\" | sha256sum -c -;         tar xzf \"${LIBCORK_COMMIT}.tar.gz\";         mv libcork-* libcork;         ./autogen.sh;         ./configure --disable-documentation;         make;         cp src/obfs-server src/obfs-local /usr/local/bin/;         cd ..;         rm -f \"simple-obfs-${OBFS_VERSION}.tar.gz\";         rm -rf \"simple-obfs-${OBFS_VERSION}\";     fi;     apk del --purge .build-deps;     rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /usr/local/src/*;" shape="box"];
  "sha256:9e50543990273e0c13be35217ad0a90bcc39988181424a22f8eb899419cf919a" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:03df7e80ed4c976e2f0592412ebdf9d96290fa65eac53f135a41f2e206969c6b" [label="/bin/sh -c set -ex;     chmod +x /usr/local/bin/docker-entrypoint.sh;     chown \"${RUN_AS_USER}\":\"${RUN_AS_USER}\" /usr/local/bin/ss-*;     chown \"${RUN_AS_USER}\":\"${RUN_AS_USER}\" /usr/local/bin/obfs-*;" shape="box"];
  "sha256:6ef2990451ad7a9858ba79782d690741ff54f243d788f17231a6d12cd7eb9f94" [label="mkdir{path=/usr/local/var/ss-obfs}" shape="note"];
  "sha256:b7e83ece5c9204bdee351b76669e7a655a50b650b99c76a2429e350acd6129f2" [label="sha256:b7e83ece5c9204bdee351b76669e7a655a50b650b99c76a2429e350acd6129f2" shape="plaintext"];
  "sha256:f5b42853d71735fd5134f7cd1567bbc4171bd4f297ee3a989adbf28f01545a10" -> "sha256:0935989c0e51fe3f3e66c987b0653d3d885d53de469cfba27457436bb1210bd6" [label=""];
  "sha256:0935989c0e51fe3f3e66c987b0653d3d885d53de469cfba27457436bb1210bd6" -> "sha256:83cba51985861569f26c0b2306235aeccba58dc6a35be5130bc29ab5cd697c3e" [label=""];
  "sha256:83cba51985861569f26c0b2306235aeccba58dc6a35be5130bc29ab5cd697c3e" -> "sha256:9e50543990273e0c13be35217ad0a90bcc39988181424a22f8eb899419cf919a" [label=""];
  "sha256:8c13abff778301e9232882ff11292c547bb74545a76e5d2b798a93ff0a4f900a" -> "sha256:9e50543990273e0c13be35217ad0a90bcc39988181424a22f8eb899419cf919a" [label=""];
  "sha256:9e50543990273e0c13be35217ad0a90bcc39988181424a22f8eb899419cf919a" -> "sha256:03df7e80ed4c976e2f0592412ebdf9d96290fa65eac53f135a41f2e206969c6b" [label=""];
  "sha256:03df7e80ed4c976e2f0592412ebdf9d96290fa65eac53f135a41f2e206969c6b" -> "sha256:6ef2990451ad7a9858ba79782d690741ff54f243d788f17231a6d12cd7eb9f94" [label=""];
  "sha256:6ef2990451ad7a9858ba79782d690741ff54f243d788f17231a6d12cd7eb9f94" -> "sha256:b7e83ece5c9204bdee351b76669e7a655a50b650b99c76a2429e350acd6129f2" [label=""];
}
