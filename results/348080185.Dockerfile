[app/sources/348080185.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:03fb028d400e78bd20af343a352b6d38151e3d9035e9f70df1ff15fc6c6c0381" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:f9e5aa46342c19501a04b0ccd01b43e6a7530d05986672091df290bce3db0da1" [label="/bin/sh -c apt-get install -yq build-essential autoconf automake libtool bison flex   libpcap-dev libglib2.0-dev libgeoip-dev libkrb5-dev libgnutls28-dev   libgcrypt-dev libcap-dev libsbc-dev libsmi-dev libc-ares-dev --no-install-recommends" shape="box"];
  "sha256:c5084753059ea59743fbfabb79fcc6a88723f576cc325584c3fda6bc04a26ddf" [label="/bin/sh -c wget --no-check-certificate https://ftp.gnu.org/gnu/libtool/$LIBTOOL.tar.gz" shape="box"];
  "sha256:363a92c0d22f1c622e8b6edf8dc121ecaf2d4fbb1c3904cb4626fcbe8fcce6ed" [label="/bin/sh -c tar zxf $LIBTOOL.tar.gz && cd $LIBTOOL && ./configure && make && make install" shape="box"];
  "sha256:3661e42856f6b1be9a8b64d44ccf21a8c2235a6402020114567548d6fc99900e" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:4d37faf23de8ea9fa17fc6228af672d7e9442295ed5ee7077e2d4dad58d79b2e" [label="/bin/sh -c wget --no-check-certificate https://www.wireshark.org/download/src/all-versions/$PROG-$VERS.$EXT" shape="box"];
  "sha256:f0ad67540e7f34bcd1421cf8c67bd4c3c85fdefa3837ab5876500bfb6ba3f7ea" [label="/bin/sh -c tar -jxf $PROG-$VERS.$EXT" shape="box"];
  "sha256:b936a49341867500a3dec16e6dd142c50d596a58d66e431e6372c524ccaf2f38" [label="mkdir{path=/home/opennsm/wireshark-1.12.5}" shape="note"];
  "sha256:8e651b0eb2796ef9c7df3860b3f87eb1df857c5dd7b169723d78959554534a18" [label="/bin/sh -c ./autogen.sh && ./configure --disable-wireshark --enable-profile-build --prefix=/opt  CFLAGS=\"-I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\" &&  make CFLAGS=\"-fPIC -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\"" shape="box"];
  "sha256:17cf281f05061d2e8516450382ffaf72697cb590969eef684d975d73554a46e5" [label="/bin/sh -c make install" shape="box"];
  "sha256:4dbfa423197502188d4ad322f12bb20cd0b63eb8852a380e85a9b367c8f2db4d" [label="/bin/sh -c chmod u+s $PREFIX/bin/dumpcap" shape="box"];
  "sha256:b09324ab983a2bcb1907ebf3e90919d08de6f2aca2ea0f0617c0a0b4a73ed757" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:e20f70c8b688e836d3f523a5c89d65483de30714b9e0e923a2f3cd0c0dc8bb57" [label="/bin/sh -c rm -rf /root/$LIBTOOL*" shape="box"];
  "sha256:1c2d82f0f5ba483175f1188997d1a849de2ded4c8f844888080b861bc0ffc745" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:f7a8c967cd02e0619e162c75eadcf39c5dd56ec164a69c827aec82bac5ff26d2" [label="sha256:f7a8c967cd02e0619e162c75eadcf39c5dd56ec164a69c827aec82bac5ff26d2" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:03fb028d400e78bd20af343a352b6d38151e3d9035e9f70df1ff15fc6c6c0381" [label=""];
  "sha256:03fb028d400e78bd20af343a352b6d38151e3d9035e9f70df1ff15fc6c6c0381" -> "sha256:f9e5aa46342c19501a04b0ccd01b43e6a7530d05986672091df290bce3db0da1" [label=""];
  "sha256:f9e5aa46342c19501a04b0ccd01b43e6a7530d05986672091df290bce3db0da1" -> "sha256:c5084753059ea59743fbfabb79fcc6a88723f576cc325584c3fda6bc04a26ddf" [label=""];
  "sha256:c5084753059ea59743fbfabb79fcc6a88723f576cc325584c3fda6bc04a26ddf" -> "sha256:363a92c0d22f1c622e8b6edf8dc121ecaf2d4fbb1c3904cb4626fcbe8fcce6ed" [label=""];
  "sha256:363a92c0d22f1c622e8b6edf8dc121ecaf2d4fbb1c3904cb4626fcbe8fcce6ed" -> "sha256:3661e42856f6b1be9a8b64d44ccf21a8c2235a6402020114567548d6fc99900e" [label=""];
  "sha256:3661e42856f6b1be9a8b64d44ccf21a8c2235a6402020114567548d6fc99900e" -> "sha256:4d37faf23de8ea9fa17fc6228af672d7e9442295ed5ee7077e2d4dad58d79b2e" [label=""];
  "sha256:4d37faf23de8ea9fa17fc6228af672d7e9442295ed5ee7077e2d4dad58d79b2e" -> "sha256:f0ad67540e7f34bcd1421cf8c67bd4c3c85fdefa3837ab5876500bfb6ba3f7ea" [label=""];
  "sha256:f0ad67540e7f34bcd1421cf8c67bd4c3c85fdefa3837ab5876500bfb6ba3f7ea" -> "sha256:b936a49341867500a3dec16e6dd142c50d596a58d66e431e6372c524ccaf2f38" [label=""];
  "sha256:b936a49341867500a3dec16e6dd142c50d596a58d66e431e6372c524ccaf2f38" -> "sha256:8e651b0eb2796ef9c7df3860b3f87eb1df857c5dd7b169723d78959554534a18" [label=""];
  "sha256:8e651b0eb2796ef9c7df3860b3f87eb1df857c5dd7b169723d78959554534a18" -> "sha256:17cf281f05061d2e8516450382ffaf72697cb590969eef684d975d73554a46e5" [label=""];
  "sha256:17cf281f05061d2e8516450382ffaf72697cb590969eef684d975d73554a46e5" -> "sha256:4dbfa423197502188d4ad322f12bb20cd0b63eb8852a380e85a9b367c8f2db4d" [label=""];
  "sha256:4dbfa423197502188d4ad322f12bb20cd0b63eb8852a380e85a9b367c8f2db4d" -> "sha256:b09324ab983a2bcb1907ebf3e90919d08de6f2aca2ea0f0617c0a0b4a73ed757" [label=""];
  "sha256:b09324ab983a2bcb1907ebf3e90919d08de6f2aca2ea0f0617c0a0b4a73ed757" -> "sha256:e20f70c8b688e836d3f523a5c89d65483de30714b9e0e923a2f3cd0c0dc8bb57" [label=""];
  "sha256:e20f70c8b688e836d3f523a5c89d65483de30714b9e0e923a2f3cd0c0dc8bb57" -> "sha256:1c2d82f0f5ba483175f1188997d1a849de2ded4c8f844888080b861bc0ffc745" [label=""];
  "sha256:1c2d82f0f5ba483175f1188997d1a849de2ded4c8f844888080b861bc0ffc745" -> "sha256:f7a8c967cd02e0619e162c75eadcf39c5dd56ec164a69c827aec82bac5ff26d2" [label=""];
}

