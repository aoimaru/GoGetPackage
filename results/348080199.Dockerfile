[app/sources/348080199.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:2753244db9f913c59a95f9f6f52e126844a0a755ac2793b76e5ae677f631049f" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:a1cbae1ee081e452ace0c6e6efb63d79b8ac0201c60164023422a4f00972c681" [label="/bin/sh -c apt-get install -yq build-essential autoconf automake libtool bison flex   libpcap-dev libglib2.0-dev libgeoip-dev libkrb5-dev    libgcrypt-dev libcap-dev libsmi-dev libc-ares-dev --no-install-recommends" shape="box"];
  "sha256:3a225936136dd578e50566b1a6d9459b7bd10336fa6a16f8c06ec8acc39c9067" [label="/bin/sh -c wget --no-check-certificate https://ftp.gnu.org/gnu/libtool/$LIBTOOL.tar.gz" shape="box"];
  "sha256:685289e61495123561d0d5bf1e89aa9f42781fe0b30ca82cd8b46a1725193b74" [label="/bin/sh -c tar zxf $LIBTOOL.tar.gz && cd $LIBTOOL && ./configure && make && make install" shape="box"];
  "sha256:cc5d76315b8409d53fb187bc86c0250f728c1710c615476758824da190cd81e7" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:006675b7c720c07123668a9f0cabb862bd2f94c92e7740f7b05ec6572a92db8d" [label="/bin/sh -c wget --no-check-certificate https://www.wireshark.org/download/src/all-versions/$PROG-$VERS.$EXT" shape="box"];
  "sha256:aa8230d20f989da69efd64fff3bb2a472194b219786ff793691ede7baf8649ce" [label="/bin/sh -c tar -jxf $PROG-$VERS.$EXT" shape="box"];
  "sha256:e0fab755ebccfcf8e4b4bb024ed17d294c474c406789112d0deb5cd7fa7c9d54" [label="mkdir{path=/home/opennsm/wireshark-1.8.5}" shape="note"];
  "sha256:ef04ae07bacd91fb05a60ed33bf74ea87bcfa66d0468ea834a74940902a203b8" [label="/bin/sh -c ./autogen.sh && ./configure --disable-wireshark --enable-profile-build --prefix=/opt  CFLAGS=\"-I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\" &&  make CFLAGS=\"-fPIC -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\"" shape="box"];
  "sha256:f5ba08938fe60c0d5ef121b963de09df0e3537ec25b22e95fa39ca88bbd2eb4c" [label="/bin/sh -c make install" shape="box"];
  "sha256:ee9796d1809ab7702364045dcfd88b2894a5d3124db28884b5ca752cf316deb6" [label="/bin/sh -c chmod u+s $PREFIX/bin/dumpcap" shape="box"];
  "sha256:cd4720cb280a0806f1d152558c276a44f7a6d8547a96af1606166f26aa698c0f" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:eef8eb84fb6ac4a16fea0bde634636bb92d1be8f1c97e7e4a1d3a40ca0c0cf38" [label="/bin/sh -c rm -rf /root/$LIBTOOL*" shape="box"];
  "sha256:c6e9a728546197237c85c62e9365cad47c86312dd2fc1860a564b842be9ec39a" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:f2e87398a1ef543fd4ea1d010196f9bb22287842311ab71aa2e40921ece23b21" [label="sha256:f2e87398a1ef543fd4ea1d010196f9bb22287842311ab71aa2e40921ece23b21" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:2753244db9f913c59a95f9f6f52e126844a0a755ac2793b76e5ae677f631049f" [label=""];
  "sha256:2753244db9f913c59a95f9f6f52e126844a0a755ac2793b76e5ae677f631049f" -> "sha256:a1cbae1ee081e452ace0c6e6efb63d79b8ac0201c60164023422a4f00972c681" [label=""];
  "sha256:a1cbae1ee081e452ace0c6e6efb63d79b8ac0201c60164023422a4f00972c681" -> "sha256:3a225936136dd578e50566b1a6d9459b7bd10336fa6a16f8c06ec8acc39c9067" [label=""];
  "sha256:3a225936136dd578e50566b1a6d9459b7bd10336fa6a16f8c06ec8acc39c9067" -> "sha256:685289e61495123561d0d5bf1e89aa9f42781fe0b30ca82cd8b46a1725193b74" [label=""];
  "sha256:685289e61495123561d0d5bf1e89aa9f42781fe0b30ca82cd8b46a1725193b74" -> "sha256:cc5d76315b8409d53fb187bc86c0250f728c1710c615476758824da190cd81e7" [label=""];
  "sha256:cc5d76315b8409d53fb187bc86c0250f728c1710c615476758824da190cd81e7" -> "sha256:006675b7c720c07123668a9f0cabb862bd2f94c92e7740f7b05ec6572a92db8d" [label=""];
  "sha256:006675b7c720c07123668a9f0cabb862bd2f94c92e7740f7b05ec6572a92db8d" -> "sha256:aa8230d20f989da69efd64fff3bb2a472194b219786ff793691ede7baf8649ce" [label=""];
  "sha256:aa8230d20f989da69efd64fff3bb2a472194b219786ff793691ede7baf8649ce" -> "sha256:e0fab755ebccfcf8e4b4bb024ed17d294c474c406789112d0deb5cd7fa7c9d54" [label=""];
  "sha256:e0fab755ebccfcf8e4b4bb024ed17d294c474c406789112d0deb5cd7fa7c9d54" -> "sha256:ef04ae07bacd91fb05a60ed33bf74ea87bcfa66d0468ea834a74940902a203b8" [label=""];
  "sha256:ef04ae07bacd91fb05a60ed33bf74ea87bcfa66d0468ea834a74940902a203b8" -> "sha256:f5ba08938fe60c0d5ef121b963de09df0e3537ec25b22e95fa39ca88bbd2eb4c" [label=""];
  "sha256:f5ba08938fe60c0d5ef121b963de09df0e3537ec25b22e95fa39ca88bbd2eb4c" -> "sha256:ee9796d1809ab7702364045dcfd88b2894a5d3124db28884b5ca752cf316deb6" [label=""];
  "sha256:ee9796d1809ab7702364045dcfd88b2894a5d3124db28884b5ca752cf316deb6" -> "sha256:cd4720cb280a0806f1d152558c276a44f7a6d8547a96af1606166f26aa698c0f" [label=""];
  "sha256:cd4720cb280a0806f1d152558c276a44f7a6d8547a96af1606166f26aa698c0f" -> "sha256:eef8eb84fb6ac4a16fea0bde634636bb92d1be8f1c97e7e4a1d3a40ca0c0cf38" [label=""];
  "sha256:eef8eb84fb6ac4a16fea0bde634636bb92d1be8f1c97e7e4a1d3a40ca0c0cf38" -> "sha256:c6e9a728546197237c85c62e9365cad47c86312dd2fc1860a564b842be9ec39a" [label=""];
  "sha256:c6e9a728546197237c85c62e9365cad47c86312dd2fc1860a564b842be9ec39a" -> "sha256:f2e87398a1ef543fd4ea1d010196f9bb22287842311ab71aa2e40921ece23b21" [label=""];
}

