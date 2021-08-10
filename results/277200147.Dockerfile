[app/sources/277200147.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:294e96ce7b282a9766483ee171eb282727af4b0b785e0c869717f53fe70c05fb" [label="/bin/sh -c rm -rf /var/lib/apt/lists/* && apt-get clean && apt-get update && apt-get upgrade -y     && apt-get install -y --no-install-recommends curl ca-certificates     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b8f35f5dc8d4e4743bbd0d29d836c1ac75e9ecb5d291a84d0d98a6275b747b26" [label="local://context" shape="ellipse"];
  "sha256:51bec4923cc568732b957c633fbd8d73b2b3858de38b7a33efdf8e9ee2ff9484" [label="copy{src=/slim-java*, dest=/usr/local/bin/}" shape="note"];
  "sha256:c9f7ae05662d7b8b65b2fcd25f450221d847a6287fe01d1ec86cee0403102589" [label="/bin/sh -c set -eux;     ARCH=\"$(dpkg --print-architecture)\";     case \"${ARCH}\" in        ppc64el|ppc64le)          ESUM='f5c1b1476d588459d1edc03279025cce3aeaa464a4f28234cd18e8134e946954';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk10-binaries/releases/download/jdk-10.0.2%2B13/OpenJDK10U-jdk_ppc64le_linux_hotspot_10.0.2_13.tar.gz';          ;;        s390x)          ESUM='54091b3d15086b4064aa2493fa578300751fc1b5b7e2028a8f8b889719f2a258';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk10-binaries/releases/download/jdk10u-2018-09-29-10-32/OpenJDK10U_s390x_linux_hotspot_2018-09-29-10-32.tar.gz';          ;;        amd64|x86_64)          ESUM='3998c36c7feb4bb7a565b3d33609ec67acd40f1ae5addf103378f2ef32ab377f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk10-binaries/releases/download/jdk-10.0.2%2B13/OpenJDK10U-jdk_x64_linux_hotspot_10.0.2_13.tar.gz';          ;;        aarch64|arm64)          ESUM='a4fc4e7a9204d6f450c71f0e82f3bf77571a6c52ae612227f99733848e893612';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk10-binaries/releases/download/jdk-10.0.2%2B13/OpenJDK10U-jdk_aarch64_linux_hotspot_10.0.2_13.tar.gz';          ;;        *)          echo \"Unsupported arch: ${ARCH}\";          exit 1;          ;;     esac;     curl -Lso /tmp/openjdk.tar.gz ${BINARY_URL};     sha256sum /tmp/openjdk.tar.gz;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     echo \"${ESUM}  /tmp/openjdk.tar.gz\" | sha256sum -c -;     tar -xf /tmp/openjdk.tar.gz;     jdir=$(dirname $(dirname $(find /opt/java/openjdk -name javac)));     mv ${jdir}/* /opt/java/openjdk;     export PATH=\"/opt/java/openjdk/bin:$PATH\";     apt-get update; apt-get install -y --no-install-recommends binutils;     /usr/local/bin/slim-java.sh /opt/java/openjdk;     apt-get remove -y binutils;     rm -rf /var/lib/apt/lists/*;     rm -rf ${jdir} /tmp/openjdk.tar.gz;" shape="box"];
  "sha256:bd036a3277e6b4d10f8955d0924305dc1835f202bd88b48d4463bfd895123207" [label="sha256:bd036a3277e6b4d10f8955d0924305dc1835f202bd88b48d4463bfd895123207" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:294e96ce7b282a9766483ee171eb282727af4b0b785e0c869717f53fe70c05fb" [label=""];
  "sha256:294e96ce7b282a9766483ee171eb282727af4b0b785e0c869717f53fe70c05fb" -> "sha256:51bec4923cc568732b957c633fbd8d73b2b3858de38b7a33efdf8e9ee2ff9484" [label=""];
  "sha256:b8f35f5dc8d4e4743bbd0d29d836c1ac75e9ecb5d291a84d0d98a6275b747b26" -> "sha256:51bec4923cc568732b957c633fbd8d73b2b3858de38b7a33efdf8e9ee2ff9484" [label=""];
  "sha256:51bec4923cc568732b957c633fbd8d73b2b3858de38b7a33efdf8e9ee2ff9484" -> "sha256:c9f7ae05662d7b8b65b2fcd25f450221d847a6287fe01d1ec86cee0403102589" [label=""];
  "sha256:c9f7ae05662d7b8b65b2fcd25f450221d847a6287fe01d1ec86cee0403102589" -> "sha256:bd036a3277e6b4d10f8955d0924305dc1835f202bd88b48d4463bfd895123207" [label=""];
}
