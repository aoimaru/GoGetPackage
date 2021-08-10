[app/sources/277200219.Dockerfile]
digraph {
  "sha256:8bd0cf470e7c45de50c2497941e1361904b6a53670796fb87e087a90d964f48f" [label="docker-image://docker.io/library/alpine:3.10" shape="ellipse"];
  "sha256:f8f1da738e14492dacef8864a843978be94a402bb5aa3e97ae96ed86f3797590" [label="/bin/sh -c apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER=\"2.29-r0\"     && ALPINE_GLIBC_REPO=\"https://github.com/sgerrand/alpine-pkg-glibc/releases/download\"     && GCC_LIBS_URL=\"https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz\"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && ZLIB_URL=\"https://archive.archlinux.org/packages/z/zlib/zlib-1%3A1.2.11-3-x86_64.pkg.tar.xz\"     && ZLIB_SHA256=17aede0b9f8baa789c5aa3f358fbf8c68a5f1228c5e6cba1a5dd34102ef4d4e5     && curl -LfsS https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub     && SGERRAND_RSA_SHA256=\"823b54589c93b02497f1ba4dc622eaef9c813e6b0f0ebbb2f771e32adf9f4ef2\"     && echo \"${SGERRAND_RSA_SHA256} */etc/apk/keys/sgerrand.rsa.pub\" | sha256sum -c -     && curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/glibc-${GLIBC_VER}.apk     && apk add /tmp/glibc-${GLIBC_VER}.apk     && curl -LfsS ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk > /tmp/glibc-bin-${GLIBC_VER}.apk     && apk add /tmp/glibc-bin-${GLIBC_VER}.apk     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-i18n-${GLIBC_VER}.apk > /tmp/glibc-i18n-${GLIBC_VER}.apk     && apk add /tmp/glibc-i18n-${GLIBC_VER}.apk     && /usr/glibc-compat/bin/localedef --force --inputfile POSIX --charmap UTF-8 \"$LANG\" || true     && echo \"export LANG=$LANG\" > /etc/profile.d/locale.sh     && curl -LfsS ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo \"${GCC_LIBS_SHA256} */tmp/gcc-libs.tar.xz\" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && curl -LfsS ${ZLIB_URL} -o /tmp/libz.tar.xz     && echo \"${ZLIB_SHA256} */tmp/libz.tar.xz\" | sha256sum -c -     && mkdir /tmp/libz     && tar -xf /tmp/libz.tar.xz -C /tmp/libz     && mv /tmp/libz/usr/lib/libz.so* /usr/glibc-compat/lib     && apk del --purge .build-deps glibc-i18n     && rm -rf /tmp/*.apk /tmp/gcc /tmp/gcc-libs.tar.xz /tmp/libz /tmp/libz.tar.xz /var/cache/apk/*" shape="box"];
  "sha256:2082616716b1c5ff52519d476e7071752bcc6eb3134b490c3b51aa68fb85cf04" [label="local://context" shape="ellipse"];
  "sha256:70a1c1ba37f1eb71130e4415e66291a432f50b6a84ddca76bfe312c1fbd77ab6" [label="copy{src=/slim-java*, dest=/usr/local/bin/}" shape="note"];
  "sha256:a28d510a07c307a3898ce3a1d330fc55e079bc6c3e08aff282d5e8a161ca134a" [label="/bin/sh -c set -eux;     apk add --virtual .fetch-deps curl;     ARCH=\"$(apk --print-arch)\";     case \"${ARCH}\" in        aarch64|arm64)          ESUM='7641edea12e7b0e738b02242885a4af2ab7cd5ff1fec07f89119a679a0d5326c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk12u-2019-06-24-06-44/OpenJDK12U-jdk_aarch64_linux_hotspot_2019-06-24-06-44.tar.gz';          ;;        amd64|x86_64)          ESUM='d333d900e77b19d9c19bea8bb3a0326545171e76bedacb3a873d92d633191d25';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk12u-2019-06-24-06-44/OpenJDK12U-jdk_x64_linux_hotspot_2019-06-24-06-44.tar.gz';          ;;        armhf)          ESUM='1b165c2831f61b0fd3e407b68c280d510d5273dc027fc329b97da88beef99d8b';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk12u-2019-06-24-06-44/OpenJDK12U-jdk_arm_linux_hotspot_2019-06-24-06-44.tar.gz';          ;;        s390x)          ESUM='d15f626dc319cc3dcc9453e1fa2f3d63c46f6b107a666ab5575ddec6d42adc56';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk12u-2019-06-24-06-44/OpenJDK12U-jdk_s390x_linux_hotspot_2019-06-24-06-44.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='64f004d041f3e7760821e0f6177c935629a7bb91c119878c70140bdc2341e95d';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk12u-2019-06-24-06-44/OpenJDK12U-jdk_ppc64le_linux_hotspot_2019-06-24-06-44.tar.gz';          ;;        *)          echo \"Unsupported arch: ${ARCH}\";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo \"${ESUM} */tmp/openjdk.tar.gz\" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     export PATH=\"/opt/java/openjdk/bin:$PATH\";     apk add --virtual .build-deps bash binutils;     /usr/local/bin/slim-java.sh /opt/java/openjdk;     apk del --purge .build-deps;     rm -rf /var/cache/apk/*;     apk del --purge .fetch-deps;     rm -rf /var/cache/apk/*;     rm -rf /tmp/openjdk.tar.gz;" shape="box"];
  "sha256:59f09947e7f3ce7a4bcbd232fdc5ff4bcced7d5fb47ad73b623d828fee39f5bc" [label="sha256:59f09947e7f3ce7a4bcbd232fdc5ff4bcced7d5fb47ad73b623d828fee39f5bc" shape="plaintext"];
  "sha256:8bd0cf470e7c45de50c2497941e1361904b6a53670796fb87e087a90d964f48f" -> "sha256:f8f1da738e14492dacef8864a843978be94a402bb5aa3e97ae96ed86f3797590" [label=""];
  "sha256:f8f1da738e14492dacef8864a843978be94a402bb5aa3e97ae96ed86f3797590" -> "sha256:70a1c1ba37f1eb71130e4415e66291a432f50b6a84ddca76bfe312c1fbd77ab6" [label=""];
  "sha256:2082616716b1c5ff52519d476e7071752bcc6eb3134b490c3b51aa68fb85cf04" -> "sha256:70a1c1ba37f1eb71130e4415e66291a432f50b6a84ddca76bfe312c1fbd77ab6" [label=""];
  "sha256:70a1c1ba37f1eb71130e4415e66291a432f50b6a84ddca76bfe312c1fbd77ab6" -> "sha256:a28d510a07c307a3898ce3a1d330fc55e079bc6c3e08aff282d5e8a161ca134a" [label=""];
  "sha256:a28d510a07c307a3898ce3a1d330fc55e079bc6c3e08aff282d5e8a161ca134a" -> "sha256:59f09947e7f3ce7a4bcbd232fdc5ff4bcced7d5fb47ad73b623d828fee39f5bc" [label=""];
}

