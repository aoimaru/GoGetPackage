[app/sources/277200232.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:71078056b73565498620751de7c63821f416798cd7a601da112f76b8e899e732" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends curl ca-certificates locales     && echo \"en_US.UTF-8 UTF-8\" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:dddc6541dec122b985c318134f9be437f76aea6abba267c3842383b340731c6a" [label="/bin/sh -c set -eux;     ARCH=\"$(dpkg --print-architecture)\";     case \"${ARCH}\" in        aarch64|arm64)          ESUM='7641edea12e7b0e738b02242885a4af2ab7cd5ff1fec07f89119a679a0d5326c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk12u-2019-06-24-06-44/OpenJDK12U-jdk_aarch64_linux_hotspot_2019-06-24-06-44.tar.gz';          ;;        amd64|x86_64)          ESUM='d333d900e77b19d9c19bea8bb3a0326545171e76bedacb3a873d92d633191d25';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk12u-2019-06-24-06-44/OpenJDK12U-jdk_x64_linux_hotspot_2019-06-24-06-44.tar.gz';          ;;        armhf)          ESUM='1b165c2831f61b0fd3e407b68c280d510d5273dc027fc329b97da88beef99d8b';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk12u-2019-06-24-06-44/OpenJDK12U-jdk_arm_linux_hotspot_2019-06-24-06-44.tar.gz';          ;;        s390x)          ESUM='d15f626dc319cc3dcc9453e1fa2f3d63c46f6b107a666ab5575ddec6d42adc56';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk12u-2019-06-24-06-44/OpenJDK12U-jdk_s390x_linux_hotspot_2019-06-24-06-44.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='64f004d041f3e7760821e0f6177c935629a7bb91c119878c70140bdc2341e95d';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk12u-2019-06-24-06-44/OpenJDK12U-jdk_ppc64le_linux_hotspot_2019-06-24-06-44.tar.gz';          ;;        *)          echo \"Unsupported arch: ${ARCH}\";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo \"${ESUM} */tmp/openjdk.tar.gz\" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;" shape="box"];
  "sha256:ec8e66a7cd6ec3dc4c87a96da20932120261b899d4068d73815761f5c8d8076f" [label="sha256:ec8e66a7cd6ec3dc4c87a96da20932120261b899d4068d73815761f5c8d8076f" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:71078056b73565498620751de7c63821f416798cd7a601da112f76b8e899e732" [label=""];
  "sha256:71078056b73565498620751de7c63821f416798cd7a601da112f76b8e899e732" -> "sha256:dddc6541dec122b985c318134f9be437f76aea6abba267c3842383b340731c6a" [label=""];
  "sha256:dddc6541dec122b985c318134f9be437f76aea6abba267c3842383b340731c6a" -> "sha256:ec8e66a7cd6ec3dc4c87a96da20932120261b899d4068d73815761f5c8d8076f" [label=""];
}

