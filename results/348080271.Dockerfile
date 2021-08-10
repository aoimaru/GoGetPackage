[app/sources/348080271.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:bb9bccf82bb3398292f4bb498952a7bb12370d60159f6026437f7beb764f8057" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:59745f1e2aea65fd0c6431f2ff4b9eb7187a2bb8585c7641b9aebf6dc5beb61d" [label="/bin/sh -c apt-get install -yq build-essential autoconf automake libtool bison flex   libpcap-dev libglib2.0-dev libgeoip-dev libkrb5-dev libgnutls28-dev   qt5-default libssl-dev libgtk-3-dev   libgcrypt-dev libcap-dev libsbc-dev libsmi-dev libc-ares-dev --no-install-recommends" shape="box"];
  "sha256:bc6ef2e10a15b111be819e0ad5cd76cb7fb0d9f66e5ef858d67930ba9ed435c1" [label="/bin/sh -c wget --no-check-certificate https://ftp.gnu.org/gnu/libtool/$LIBTOOL.tar.gz" shape="box"];
  "sha256:ecf33a2f2e5e11f8c4722b6916a6cadb600b96805a800dfaddfba1470f3831b4" [label="/bin/sh -c tar zxf $LIBTOOL.tar.gz && cd $LIBTOOL && ./configure && make && make install" shape="box"];
  "sha256:24a9cbfa0e31cb6a1f6d39f72a6707a74b74ad5341a783834511319ecb086bc8" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:66606b0734b056873c1fc9f74a4a7866b67d8f8e00e1dd2cf6aaaa44ce7bf65a" [label="/bin/sh -c wget --no-check-certificate https://www.wireshark.org/download/src/all-versions/$PROG-$VERS.$EXT" shape="box"];
  "sha256:74d698fc1d992a63d8eeb598cce4b7ff443c054874286b181f695ba24c542201" [label="/bin/sh -c tar -jxf $PROG-$VERS.$EXT" shape="box"];
  "sha256:848c2b32af6f8d1aab2acd9d0e24966c782695f5e971235139206cae7c2852a3" [label="mkdir{path=/home/opennsm/wireshark-1.99.7}" shape="note"];
  "sha256:feb87fccb8b7e014295cd0a46f9d68cd1926a8c1eef819412eb24bdaa74399d7" [label="/bin/sh -c ./autogen.sh && ./configure --enable-profile-build --prefix=/opt  CFLAGS=\"-I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -pthread -I/usr/include/gtk-3.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include -I/usr/include/gtk-3.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng12 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\" &&  make CFLAGS=\"-fPIC -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -pthread -I/usr/include/gtk-3.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include -I/usr/include/gtk-3.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng12 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\"" shape="box"];
  "sha256:9eea60dacfc6c303c873a43702f269a173bf88bafc4dacf0629b6cbdc361f58d" [label="/bin/sh -c make install" shape="box"];
  "sha256:4d54cd3b79e13f1fb0d868385aa389a5707c691a057a07cd2ac5c2efc42f9e5a" [label="/bin/sh -c chmod u+s $PREFIX/bin/dumpcap" shape="box"];
  "sha256:ccfb9068e89e90cc550b95b8dd285c1dc62daf31bd4194feac0fbafcd54d1224" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:6d4499bab97d839fc117816fe0c873ebdbbffd1575b82f28bfb805865793771d" [label="/bin/sh -c rm -rf /root/$LIBTOOL*" shape="box"];
  "sha256:4ccdcfac8f1641f3a9fead21db1f5390284073cbbf01fad4d89338d4f83a1a3d" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:33d5b53bd5ffdf934124835f5fa0995742181fb167ea0ec3d7fbe5ccfa23d009" [label="sha256:33d5b53bd5ffdf934124835f5fa0995742181fb167ea0ec3d7fbe5ccfa23d009" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:bb9bccf82bb3398292f4bb498952a7bb12370d60159f6026437f7beb764f8057" [label=""];
  "sha256:bb9bccf82bb3398292f4bb498952a7bb12370d60159f6026437f7beb764f8057" -> "sha256:59745f1e2aea65fd0c6431f2ff4b9eb7187a2bb8585c7641b9aebf6dc5beb61d" [label=""];
  "sha256:59745f1e2aea65fd0c6431f2ff4b9eb7187a2bb8585c7641b9aebf6dc5beb61d" -> "sha256:bc6ef2e10a15b111be819e0ad5cd76cb7fb0d9f66e5ef858d67930ba9ed435c1" [label=""];
  "sha256:bc6ef2e10a15b111be819e0ad5cd76cb7fb0d9f66e5ef858d67930ba9ed435c1" -> "sha256:ecf33a2f2e5e11f8c4722b6916a6cadb600b96805a800dfaddfba1470f3831b4" [label=""];
  "sha256:ecf33a2f2e5e11f8c4722b6916a6cadb600b96805a800dfaddfba1470f3831b4" -> "sha256:24a9cbfa0e31cb6a1f6d39f72a6707a74b74ad5341a783834511319ecb086bc8" [label=""];
  "sha256:24a9cbfa0e31cb6a1f6d39f72a6707a74b74ad5341a783834511319ecb086bc8" -> "sha256:66606b0734b056873c1fc9f74a4a7866b67d8f8e00e1dd2cf6aaaa44ce7bf65a" [label=""];
  "sha256:66606b0734b056873c1fc9f74a4a7866b67d8f8e00e1dd2cf6aaaa44ce7bf65a" -> "sha256:74d698fc1d992a63d8eeb598cce4b7ff443c054874286b181f695ba24c542201" [label=""];
  "sha256:74d698fc1d992a63d8eeb598cce4b7ff443c054874286b181f695ba24c542201" -> "sha256:848c2b32af6f8d1aab2acd9d0e24966c782695f5e971235139206cae7c2852a3" [label=""];
  "sha256:848c2b32af6f8d1aab2acd9d0e24966c782695f5e971235139206cae7c2852a3" -> "sha256:feb87fccb8b7e014295cd0a46f9d68cd1926a8c1eef819412eb24bdaa74399d7" [label=""];
  "sha256:feb87fccb8b7e014295cd0a46f9d68cd1926a8c1eef819412eb24bdaa74399d7" -> "sha256:9eea60dacfc6c303c873a43702f269a173bf88bafc4dacf0629b6cbdc361f58d" [label=""];
  "sha256:9eea60dacfc6c303c873a43702f269a173bf88bafc4dacf0629b6cbdc361f58d" -> "sha256:4d54cd3b79e13f1fb0d868385aa389a5707c691a057a07cd2ac5c2efc42f9e5a" [label=""];
  "sha256:4d54cd3b79e13f1fb0d868385aa389a5707c691a057a07cd2ac5c2efc42f9e5a" -> "sha256:ccfb9068e89e90cc550b95b8dd285c1dc62daf31bd4194feac0fbafcd54d1224" [label=""];
  "sha256:ccfb9068e89e90cc550b95b8dd285c1dc62daf31bd4194feac0fbafcd54d1224" -> "sha256:6d4499bab97d839fc117816fe0c873ebdbbffd1575b82f28bfb805865793771d" [label=""];
  "sha256:6d4499bab97d839fc117816fe0c873ebdbbffd1575b82f28bfb805865793771d" -> "sha256:4ccdcfac8f1641f3a9fead21db1f5390284073cbbf01fad4d89338d4f83a1a3d" [label=""];
  "sha256:4ccdcfac8f1641f3a9fead21db1f5390284073cbbf01fad4d89338d4f83a1a3d" -> "sha256:33d5b53bd5ffdf934124835f5fa0995742181fb167ea0ec3d7fbe5ccfa23d009" [label=""];
}

