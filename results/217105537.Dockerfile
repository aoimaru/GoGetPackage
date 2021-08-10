[app/sources/217105537.Dockerfile]
digraph {
  "sha256:cf06c96901fe0212bc8597801065a7b08483116ec58aead101025caf17648bbc" [label="docker-image://docker.io/spritsail/busybox:latest" shape="ellipse"];
  "sha256:6a0d28e3a348744eed713e9dee6ab8cc3eeaa724cd86110af09abd7a1a0e1b71" [label="docker-image://docker.io/spritsail/debian-builder:stretch-slim" shape="ellipse"];
  "sha256:09099e4ce7fa09761c52c4713fe0a0b15d16607bd3af51643ca35b9a252646e2" [label="mkdir{path=/tmp/iptables}" shape="note"];
  "sha256:45ca0c6de8b58dc3bb86b6b49d1a373697b2a427d627472a01c3638aa01b29c1" [label="/bin/sh -c apt-get -y update  && apt-get -y install libmnl-dev libnftnl-dev bison flex zlib1g-dev tree  && curl -q \"http://ftp.netfilter.org/pub/iptables/iptables-${IPTABLES_VER}.tar.bz2\" |         tar xj --strip-components=1  && ./configure       --prefix=/usr       --sbindir=/usr/bin       --sysconfdir=/etc       --disable-dependency-tracking       --without-kernel       --disable-shared       --disable-nftables       --disable-connlabel       --disable-libipq       --disable-bnf-compiler       --disable-nfsynproxy  && make  && DESTDIR=\"$PWD/out\" make install  && mkdir -p /output/usr/lib /output/run  && mv \"out/usr/bin/\" /output/usr/bin/" shape="box"];
  "sha256:1475553a7660985f9a27945f4ff3836e0a1f3e6227471a2130a833cd3bb5aaf3" [label="mkdir{path=/tmp/zlib}" shape="note"];
  "sha256:a31a191b7f673767d1e79f183a59395b41d38075fe2e3f0009899ef906821144" [label="/bin/sh -c curl -fsSL \"https://github.com/madler/zlib/archive/v${ZLIB_VER}.tar.gz\" |         tar xz --strip-components=1  && ./configure       --prefix=/usr       --libdir=/usr/lib  && make  && DESTDIR=\"$PWD/out\" make install  && find out/usr/lib -name 'libz.so*' -exec mv {} /output/usr/lib \\;" shape="box"];
  "sha256:7e87ca771b1017f1f2079820776b2cb13df9704e3a414b25bf48a3a0edbb203d" [label="mkdir{path=/tmp/iodine}" shape="note"];
  "sha256:9be4d30ac1e33d89d4511400e63495536530e07655e08ff89d08c4657e396203" [label="/bin/sh -c curl -fsSL \"https://code.kryo.se/iodine/iodine-${IODINE_VER}.tar.gz\" |         tar xz  --strip-components=1  && make  && mv bin/iodine* /output/usr/bin" shape="box"];
  "sha256:ef7d545d6e01ed2022ee4e2ed2585e3677f6859483f908632e1b984a2916b433" [label="local://context" shape="ellipse"];
  "sha256:e5d6a4dc59a2ed79948d02aeab11234297b4b35a82090094bd65be43405889e5" [label="copy{src=/start.sh, dest=/output/usr/local/bin/start-iodined}" shape="note"];
  "sha256:8b5434b7aab16d3e27b7aab56312b3a973ac440356265d8e6ed1b4d1da2bfe66" [label="/bin/sh -c chmod +x /output/usr/local/bin/start-iodined" shape="box"];
  "sha256:cec4c1b17a8c415f8a085fa141d5f70607828cc2195a26e72310948a03f00590" [label="copy{src=/output, dest=/}" shape="note"];
  "sha256:0719c1238b3d1fef9f6d7172d58509fd64beab07c7cc1967c7792b3251f17f6a" [label="sha256:0719c1238b3d1fef9f6d7172d58509fd64beab07c7cc1967c7792b3251f17f6a" shape="plaintext"];
  "sha256:6a0d28e3a348744eed713e9dee6ab8cc3eeaa724cd86110af09abd7a1a0e1b71" -> "sha256:09099e4ce7fa09761c52c4713fe0a0b15d16607bd3af51643ca35b9a252646e2" [label=""];
  "sha256:09099e4ce7fa09761c52c4713fe0a0b15d16607bd3af51643ca35b9a252646e2" -> "sha256:45ca0c6de8b58dc3bb86b6b49d1a373697b2a427d627472a01c3638aa01b29c1" [label=""];
  "sha256:45ca0c6de8b58dc3bb86b6b49d1a373697b2a427d627472a01c3638aa01b29c1" -> "sha256:1475553a7660985f9a27945f4ff3836e0a1f3e6227471a2130a833cd3bb5aaf3" [label=""];
  "sha256:1475553a7660985f9a27945f4ff3836e0a1f3e6227471a2130a833cd3bb5aaf3" -> "sha256:a31a191b7f673767d1e79f183a59395b41d38075fe2e3f0009899ef906821144" [label=""];
  "sha256:a31a191b7f673767d1e79f183a59395b41d38075fe2e3f0009899ef906821144" -> "sha256:7e87ca771b1017f1f2079820776b2cb13df9704e3a414b25bf48a3a0edbb203d" [label=""];
  "sha256:7e87ca771b1017f1f2079820776b2cb13df9704e3a414b25bf48a3a0edbb203d" -> "sha256:9be4d30ac1e33d89d4511400e63495536530e07655e08ff89d08c4657e396203" [label=""];
  "sha256:9be4d30ac1e33d89d4511400e63495536530e07655e08ff89d08c4657e396203" -> "sha256:e5d6a4dc59a2ed79948d02aeab11234297b4b35a82090094bd65be43405889e5" [label=""];
  "sha256:ef7d545d6e01ed2022ee4e2ed2585e3677f6859483f908632e1b984a2916b433" -> "sha256:e5d6a4dc59a2ed79948d02aeab11234297b4b35a82090094bd65be43405889e5" [label=""];
  "sha256:e5d6a4dc59a2ed79948d02aeab11234297b4b35a82090094bd65be43405889e5" -> "sha256:8b5434b7aab16d3e27b7aab56312b3a973ac440356265d8e6ed1b4d1da2bfe66" [label=""];
  "sha256:cf06c96901fe0212bc8597801065a7b08483116ec58aead101025caf17648bbc" -> "sha256:cec4c1b17a8c415f8a085fa141d5f70607828cc2195a26e72310948a03f00590" [label=""];
  "sha256:8b5434b7aab16d3e27b7aab56312b3a973ac440356265d8e6ed1b4d1da2bfe66" -> "sha256:cec4c1b17a8c415f8a085fa141d5f70607828cc2195a26e72310948a03f00590" [label=""];
  "sha256:cec4c1b17a8c415f8a085fa141d5f70607828cc2195a26e72310948a03f00590" -> "sha256:0719c1238b3d1fef9f6d7172d58509fd64beab07c7cc1967c7792b3251f17f6a" [label=""];
}

