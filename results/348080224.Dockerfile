[app/sources/348080224.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:64c190432bf0008c6362c11618976707c620006bf04f53dca7730cde175cb866" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:64e2a1f2f81df4ad292a3dc2aad2cec0a79ce1a5bb2fdbdfaeeb9452165537e8" [label="/bin/sh -c apt-get install -yq build-essential autoconf automake libtool bison flex   libpcap-dev libglib2.0-dev libgeoip-dev libkrb5-dev libgnutls-dev   qt5-default libssl-dev libgtk-3-dev   libgcrypt-dev libcap-dev libsmi-dev libc-ares-dev --no-install-recommends" shape="box"];
  "sha256:4cd35ecdc24f019f172fef13d80fa1ea276ab191f900c48e3b485c2dc467de93" [label="/bin/sh -c wget --no-check-certificate https://ftp.gnu.org/gnu/libtool/$LIBTOOL.tar.gz" shape="box"];
  "sha256:37ea6a60c0613eb3ebe4c516389f92105c573c61cb6cce69f8ecfffe24f24b7a" [label="/bin/sh -c tar zxf $LIBTOOL.tar.gz && cd $LIBTOOL && ./configure && make && make install" shape="box"];
  "sha256:313aa80040f29462e7d1524766db264a63250ade2c81eca11a94b9deb59122d4" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:b46c55ca667c4082bf7c2a89b3b3e2007edb3d47fdd1c264a7d7034d970273b3" [label="/bin/sh -c wget --no-check-certificate https://www.wireshark.org/download/src/all-versions/$PROG-$VERS.$EXT" shape="box"];
  "sha256:35ad98e7c213268c0f6c12196349b144242eb7b73810d400895b9c2165207e6a" [label="/bin/sh -c tar -jxf $PROG-$VERS.$EXT" shape="box"];
  "sha256:edc501194f2c47f5f2d98264e992ae251946232bd3c02ce35c7977a273c880b6" [label="mkdir{path=/home/opennsm/wireshark-1.10.14}" shape="note"];
  "sha256:178de547e6f33f5c686ac99cfd7d34b452a8d110a027d8666e9d2c004b6ef042" [label="/bin/sh -c ./autogen.sh && ./configure --enable-profile-build --prefix=/opt  CFLAGS=\"-I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -pthread -I/usr/include/gtk-3.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include -I/usr/include/gtk-3.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng12 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\" &&  make CFLAGS=\"-fPIC -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -pthread -I/usr/include/gtk-3.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include -I/usr/include/gtk-3.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng12 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\"" shape="box"];
  "sha256:2cf437f0ececbc84f596d78857061fe051226144a3431c2e0cbbe848b41f6e27" [label="/bin/sh -c make install" shape="box"];
  "sha256:3059c479dd3c2a2ff3220bc0adf2518238d29ac48e49f5f51a37feaf89dbadf0" [label="/bin/sh -c chmod u+s $PREFIX/bin/dumpcap" shape="box"];
  "sha256:b81d4820749559b044cb41bed23dd3d2f7a291418f2d902a3fab56648765ce24" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:372d826c4bf1b04705ed4a30624abe79e9b0b6a5428e20cb3795eb2ea1443d88" [label="/bin/sh -c rm -rf /root/$LIBTOOL*" shape="box"];
  "sha256:ff7768186bdd821864b541ed22aa140b53857e29a479892c044bfade159c200e" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:3b07f4432d85664e83beaa0324ac4bf43e3ed52e72cd653dd2f66904085c8557" [label="sha256:3b07f4432d85664e83beaa0324ac4bf43e3ed52e72cd653dd2f66904085c8557" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:64c190432bf0008c6362c11618976707c620006bf04f53dca7730cde175cb866" [label=""];
  "sha256:64c190432bf0008c6362c11618976707c620006bf04f53dca7730cde175cb866" -> "sha256:64e2a1f2f81df4ad292a3dc2aad2cec0a79ce1a5bb2fdbdfaeeb9452165537e8" [label=""];
  "sha256:64e2a1f2f81df4ad292a3dc2aad2cec0a79ce1a5bb2fdbdfaeeb9452165537e8" -> "sha256:4cd35ecdc24f019f172fef13d80fa1ea276ab191f900c48e3b485c2dc467de93" [label=""];
  "sha256:4cd35ecdc24f019f172fef13d80fa1ea276ab191f900c48e3b485c2dc467de93" -> "sha256:37ea6a60c0613eb3ebe4c516389f92105c573c61cb6cce69f8ecfffe24f24b7a" [label=""];
  "sha256:37ea6a60c0613eb3ebe4c516389f92105c573c61cb6cce69f8ecfffe24f24b7a" -> "sha256:313aa80040f29462e7d1524766db264a63250ade2c81eca11a94b9deb59122d4" [label=""];
  "sha256:313aa80040f29462e7d1524766db264a63250ade2c81eca11a94b9deb59122d4" -> "sha256:b46c55ca667c4082bf7c2a89b3b3e2007edb3d47fdd1c264a7d7034d970273b3" [label=""];
  "sha256:b46c55ca667c4082bf7c2a89b3b3e2007edb3d47fdd1c264a7d7034d970273b3" -> "sha256:35ad98e7c213268c0f6c12196349b144242eb7b73810d400895b9c2165207e6a" [label=""];
  "sha256:35ad98e7c213268c0f6c12196349b144242eb7b73810d400895b9c2165207e6a" -> "sha256:edc501194f2c47f5f2d98264e992ae251946232bd3c02ce35c7977a273c880b6" [label=""];
  "sha256:edc501194f2c47f5f2d98264e992ae251946232bd3c02ce35c7977a273c880b6" -> "sha256:178de547e6f33f5c686ac99cfd7d34b452a8d110a027d8666e9d2c004b6ef042" [label=""];
  "sha256:178de547e6f33f5c686ac99cfd7d34b452a8d110a027d8666e9d2c004b6ef042" -> "sha256:2cf437f0ececbc84f596d78857061fe051226144a3431c2e0cbbe848b41f6e27" [label=""];
  "sha256:2cf437f0ececbc84f596d78857061fe051226144a3431c2e0cbbe848b41f6e27" -> "sha256:3059c479dd3c2a2ff3220bc0adf2518238d29ac48e49f5f51a37feaf89dbadf0" [label=""];
  "sha256:3059c479dd3c2a2ff3220bc0adf2518238d29ac48e49f5f51a37feaf89dbadf0" -> "sha256:b81d4820749559b044cb41bed23dd3d2f7a291418f2d902a3fab56648765ce24" [label=""];
  "sha256:b81d4820749559b044cb41bed23dd3d2f7a291418f2d902a3fab56648765ce24" -> "sha256:372d826c4bf1b04705ed4a30624abe79e9b0b6a5428e20cb3795eb2ea1443d88" [label=""];
  "sha256:372d826c4bf1b04705ed4a30624abe79e9b0b6a5428e20cb3795eb2ea1443d88" -> "sha256:ff7768186bdd821864b541ed22aa140b53857e29a479892c044bfade159c200e" [label=""];
  "sha256:ff7768186bdd821864b541ed22aa140b53857e29a479892c044bfade159c200e" -> "sha256:3b07f4432d85664e83beaa0324ac4bf43e3ed52e72cd653dd2f66904085c8557" [label=""];
}

