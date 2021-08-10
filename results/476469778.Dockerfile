[app/sources/476469778.Dockerfile]
digraph {
  "sha256:ac44dd9ac15129cba729764a7792988355427ed971ae98756220db854e056757" [label="local://context" shape="ellipse"];
  "sha256:877abb6787d0b779b109f78800c008b1e3f28074052584ce70b92eabb8edf800" [label="docker-image://docker.io/library/alpine:3.7@sha256:8421d9a84432575381bfabd248f1eb56f3aa21d9d7cd2511583c68c9b7511d10" shape="ellipse"];
  "sha256:d0090546d773336a8d74708597d8fe8cc7b4998087b319ce65dee3c007f4b55c" [label="copy{src=/sgerrand.rsa.pub, dest=/etc/apk/keys}" shape="note"];
  "sha256:ebc31105d61d8915118a69fd8d7547c64bcd2339ea112011ced583fbf0a027ee" [label="/bin/sh -c apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER=\"2.29-r0\"     && ALPINE_GLIBC_REPO=\"https://github.com/sgerrand/alpine-pkg-glibc/releases/download\"     && GCC_LIBS_URL=\"https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz\"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo \"${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz\" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub" shape="box"];
  "sha256:19872a43478ab803a753f6403d467997d10fd14e1592e68e65f1c7b957f36f57" [label="/bin/sh -c set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH=\"$(apk --print-arch)\";     case \"${ARCH}\" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo \"Unsupported arch: ${ARCH}\";          exit 1;          ;;     esac;     BASE_URL=\"https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/\";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\\s*uri:\\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo \"${ESUM}  /tmp/ibm-java.bin\" | sha256sum -c -;     echo \"INSTALLER_UI=silent\" > /tmp/response.properties;     echo \"USER_INSTALL_DIR=/opt/ibm/java\" >> /tmp/response.properties;     echo \"LICENSE_ACCEPTED=TRUE\" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;" shape="box"];
  "sha256:b32def65eb7929ec559b90b15ef4bf1c18784c3ad0199eaadbe5af21e9a486b7" [label="sha256:b32def65eb7929ec559b90b15ef4bf1c18784c3ad0199eaadbe5af21e9a486b7" shape="plaintext"];
  "sha256:877abb6787d0b779b109f78800c008b1e3f28074052584ce70b92eabb8edf800" -> "sha256:d0090546d773336a8d74708597d8fe8cc7b4998087b319ce65dee3c007f4b55c" [label=""];
  "sha256:ac44dd9ac15129cba729764a7792988355427ed971ae98756220db854e056757" -> "sha256:d0090546d773336a8d74708597d8fe8cc7b4998087b319ce65dee3c007f4b55c" [label=""];
  "sha256:d0090546d773336a8d74708597d8fe8cc7b4998087b319ce65dee3c007f4b55c" -> "sha256:ebc31105d61d8915118a69fd8d7547c64bcd2339ea112011ced583fbf0a027ee" [label=""];
  "sha256:ebc31105d61d8915118a69fd8d7547c64bcd2339ea112011ced583fbf0a027ee" -> "sha256:19872a43478ab803a753f6403d467997d10fd14e1592e68e65f1c7b957f36f57" [label=""];
  "sha256:19872a43478ab803a753f6403d467997d10fd14e1592e68e65f1c7b957f36f57" -> "sha256:b32def65eb7929ec559b90b15ef4bf1c18784c3ad0199eaadbe5af21e9a486b7" [label=""];
}

