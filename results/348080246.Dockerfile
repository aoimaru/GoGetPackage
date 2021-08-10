[app/sources/348080246.Dockerfile]
digraph {
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" [label="docker-image://docker.io/opennsm/debian:latest" shape="ellipse"];
  "sha256:17451a12c6da9e3c63dbf55f84810bcab23a731119347e281a36bc4f41814c04" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:0ef9c0d4c0222796f4f59f1357d8e3884807241eb8b5342cc2c01c358be3814b" [label="/bin/sh -c apt-get install -yq build-essential autoconf automake libtool bison flex   libpcap-dev libglib2.0-dev libgeoip-dev libkrb5-dev    qt5-default libssl-dev libgtk-3-dev   libgcrypt-dev libcap-dev libsmi-dev libc-ares-dev --no-install-recommends" shape="box"];
  "sha256:897b8f2f21867d9599bc04c3f86b396f6f1a1674e4490e0f46e700d389f3d876" [label="/bin/sh -c wget --no-check-certificate https://ftp.gnu.org/gnu/libtool/$LIBTOOL.tar.gz" shape="box"];
  "sha256:f6025bd1ef5c2425bf037bcc8040dd3edf869b29b01a0e6d8eff71a88f0c2cf7" [label="/bin/sh -c tar zxf $LIBTOOL.tar.gz && cd $LIBTOOL && ./configure && make && make install" shape="box"];
  "sha256:fb3317f41022d41200aabcee0adc4d57d059f6f1e94ca053602a012549c978cd" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:0eb2fd99851acee6c6f083596f254529d2c00691be25e7fea6410787efd18d95" [label="/bin/sh -c wget --no-check-certificate https://www.wireshark.org/download/src/all-versions/$PROG-$VERS.$EXT" shape="box"];
  "sha256:4c43a6cab40a3097c86d1cb4e947582420bbf2f26622f93554fc9130b2f75430" [label="/bin/sh -c tar -jxf $PROG-$VERS.$EXT" shape="box"];
  "sha256:d0e67ccc60be925e3f68d719c096ef2c8b639788f4dd5a10faff9c0a9a46c676" [label="mkdir{path=/home/opennsm/wireshark-1.8.1}" shape="note"];
  "sha256:5013e11f9bc30884ce859d4aa686321c83f2717ab9ffd94e9a970b659329f980" [label="/bin/sh -c ./autogen.sh && ./configure --enable-profile-build --prefix=/opt  CFLAGS=\"-I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -pthread -I/usr/include/gtk-3.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include -I/usr/include/gtk-3.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng12 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\" &&  make CFLAGS=\"-fPIC -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -pthread -I/usr/include/gtk-3.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include -I/usr/include/gtk-3.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng12 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include\"" shape="box"];
  "sha256:fed2dbdfe9a41db506560619d29d9ce772fe169a5257bdf32cbd135457450dff" [label="/bin/sh -c make install" shape="box"];
  "sha256:a714a5054676d0ece8460882d09f8189a61e6f9fe07326c97f42ef63fb21b340" [label="/bin/sh -c chmod u+s $PREFIX/bin/dumpcap" shape="box"];
  "sha256:6eba347f35c84dc738a264a58e0f7b54c304d63fb6029c22a3874dd29599a7e0" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:81ca5be521a198367bd647d1cff4fcec7a05f61d88a278cb5142cdfefb965f0c" [label="/bin/sh -c rm -rf /root/$LIBTOOL*" shape="box"];
  "sha256:79c66820c57d5d0b303fbccf060ff0a34274f0c52e1cab9e7692071268aae893" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:d69a0df4dac00af3ba24d9a381900cf8ec453ed22dbb0513d1040f5bab96a20a" [label="sha256:d69a0df4dac00af3ba24d9a381900cf8ec453ed22dbb0513d1040f5bab96a20a" shape="plaintext"];
  "sha256:3601e5ff43d0071cb86b3a24d6e52e69d0ad91f489c172427c8e1ae29a42be9f" -> "sha256:17451a12c6da9e3c63dbf55f84810bcab23a731119347e281a36bc4f41814c04" [label=""];
  "sha256:17451a12c6da9e3c63dbf55f84810bcab23a731119347e281a36bc4f41814c04" -> "sha256:0ef9c0d4c0222796f4f59f1357d8e3884807241eb8b5342cc2c01c358be3814b" [label=""];
  "sha256:0ef9c0d4c0222796f4f59f1357d8e3884807241eb8b5342cc2c01c358be3814b" -> "sha256:897b8f2f21867d9599bc04c3f86b396f6f1a1674e4490e0f46e700d389f3d876" [label=""];
  "sha256:897b8f2f21867d9599bc04c3f86b396f6f1a1674e4490e0f46e700d389f3d876" -> "sha256:f6025bd1ef5c2425bf037bcc8040dd3edf869b29b01a0e6d8eff71a88f0c2cf7" [label=""];
  "sha256:f6025bd1ef5c2425bf037bcc8040dd3edf869b29b01a0e6d8eff71a88f0c2cf7" -> "sha256:fb3317f41022d41200aabcee0adc4d57d059f6f1e94ca053602a012549c978cd" [label=""];
  "sha256:fb3317f41022d41200aabcee0adc4d57d059f6f1e94ca053602a012549c978cd" -> "sha256:0eb2fd99851acee6c6f083596f254529d2c00691be25e7fea6410787efd18d95" [label=""];
  "sha256:0eb2fd99851acee6c6f083596f254529d2c00691be25e7fea6410787efd18d95" -> "sha256:4c43a6cab40a3097c86d1cb4e947582420bbf2f26622f93554fc9130b2f75430" [label=""];
  "sha256:4c43a6cab40a3097c86d1cb4e947582420bbf2f26622f93554fc9130b2f75430" -> "sha256:d0e67ccc60be925e3f68d719c096ef2c8b639788f4dd5a10faff9c0a9a46c676" [label=""];
  "sha256:d0e67ccc60be925e3f68d719c096ef2c8b639788f4dd5a10faff9c0a9a46c676" -> "sha256:5013e11f9bc30884ce859d4aa686321c83f2717ab9ffd94e9a970b659329f980" [label=""];
  "sha256:5013e11f9bc30884ce859d4aa686321c83f2717ab9ffd94e9a970b659329f980" -> "sha256:fed2dbdfe9a41db506560619d29d9ce772fe169a5257bdf32cbd135457450dff" [label=""];
  "sha256:fed2dbdfe9a41db506560619d29d9ce772fe169a5257bdf32cbd135457450dff" -> "sha256:a714a5054676d0ece8460882d09f8189a61e6f9fe07326c97f42ef63fb21b340" [label=""];
  "sha256:a714a5054676d0ece8460882d09f8189a61e6f9fe07326c97f42ef63fb21b340" -> "sha256:6eba347f35c84dc738a264a58e0f7b54c304d63fb6029c22a3874dd29599a7e0" [label=""];
  "sha256:6eba347f35c84dc738a264a58e0f7b54c304d63fb6029c22a3874dd29599a7e0" -> "sha256:81ca5be521a198367bd647d1cff4fcec7a05f61d88a278cb5142cdfefb965f0c" [label=""];
  "sha256:81ca5be521a198367bd647d1cff4fcec7a05f61d88a278cb5142cdfefb965f0c" -> "sha256:79c66820c57d5d0b303fbccf060ff0a34274f0c52e1cab9e7692071268aae893" [label=""];
  "sha256:79c66820c57d5d0b303fbccf060ff0a34274f0c52e1cab9e7692071268aae893" -> "sha256:d69a0df4dac00af3ba24d9a381900cf8ec453ed22dbb0513d1040f5bab96a20a" [label=""];
}

