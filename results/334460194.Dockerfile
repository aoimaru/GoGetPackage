[app/sources/334460194.Dockerfile]
digraph {
  "sha256:8b48e0972f64ec7ab969a20ff181573572e09ba87b6cca1c1dd59c3198834ef6" [label="docker-image://docker.io/library/node:9.4.0-alpine" shape="ellipse"];
  "sha256:7212c23ec1925d39930dfaed20fb18d7a4f1974a66c6458dbe9b391d65c0ee06" [label="/bin/sh -c mkdir -p /tmp/patches" shape="box"];
  "sha256:6f0065d6f94c60129156cf9ee8e5b2f473ec59cb7c600d76ec28884f0d0bdfe6" [label="local://context" shape="ellipse"];
  "sha256:eb4c6db6a91ff7164b8697cf48efca700a7c9880822ea1492360f7f799db55dc" [label="copy{src=/conf/*, dest=/tmp/patches/}" shape="note"];
  "sha256:b0cba01a8df98cc462f5671631799166c20fa53c07a87765db9098e997b6f446" [label="/bin/sh -c apk add --no-cache   libstdc++   libx11   libxrender   libxext   libssl1.0   ca-certificates   fontconfig   freetype   ttf-dejavu   ttf-droid   ttf-freefont   ttf-liberation   ttf-ubuntu-font-family && apk add --no-cache --virtual .build-deps   g++   git   gtk+   gtk+-dev   make   mesa-dev   openssl-dev   patch && git clone --recursive https://github.com/wkhtmltopdf/wkhtmltopdf.git /tmp/wkhtmltopdf && cd /tmp/wkhtmltopdf && git checkout tags/$WKHTMLTOX_VERSION && cd /tmp/wkhtmltopdf/qt && patch -p1 -i /tmp/patches/qt-musl.patch && patch -p1 -i /tmp/patches/qt-musl-iconv-no-bom.patch && patch -p1 -i /tmp/patches/qt-recursive-global-mutex.patch && patch -p1 -i /tmp/patches/qt-font-pixel-size.patch && patch -p1 -i /tmp/patches/qt-gcc6.patch && sed -i \"s|-O2|$CXXFLAGS|\" mkspecs/common/g++.conf && sed -i \"/^QMAKE_RPATH/s| -Wl,-rpath,||g\" mkspecs/common/g++.conf && sed -i \"/^QMAKE_LFLAGS\\s/s|+=|+= $LDFLAGS|g\" mkspecs/common/g++.conf && NB_CORES=$(grep -c '^processor' /proc/cpuinfo) && ./configure -confirm-license -opensource   -prefix /usr   -datadir /usr/share/qt   -sysconfdir /etc   -plugindir /usr/lib/qt/plugins   -importdir /usr/lib/qt/imports   -silent   -release   -static   -webkit   -script   -svg   -exceptions   -xmlpatterns   -openssl-linked   -no-fast   -no-largefile   -no-accessibility   -no-stl   -no-sql-ibase   -no-sql-mysql   -no-sql-odbc   -no-sql-psql   -no-sql-sqlite   -no-sql-sqlite2   -no-qt3support   -no-opengl   -no-openvg   -no-system-proxies   -no-multimedia   -no-audio-backend   -no-phonon   -no-phonon-backend   -no-javascript-jit   -no-scripttools   -no-declarative   -no-declarative-debug   -no-mmx   -no-3dnow   -no-sse   -no-sse2   -no-sse3   -no-ssse3   -no-sse4.1   -no-sse4.2   -no-avx   -no-neon   -no-rpath   -no-nis   -no-cups   -no-pch   -no-dbus   -no-separate-debug-info   -no-gtkstyle   -no-nas-sound   -no-opengl   -no-openvg   -no-sm   -no-xshape   -no-xvideo   -no-xsync   -no-xinerama   -no-xcursor   -no-xfixes   -no-xrandr   -no-mitshm   -no-xinput   -no-xkb   -no-glib   -no-icu   -nomake demos   -nomake docs   -nomake examples   -nomake tools   -nomake tests   -nomake translations   -graphicssystem raster   -qt-zlib   -qt-libpng   -qt-libmng   -qt-libtiff   -qt-libjpeg   -optimized-qmake   -iconv   -xrender   -fontconfig   -D ENABLE_VIDEO=0 && make --jobs $(($NB_CORES*2)) --silent && make install && cd /tmp/wkhtmltopdf && qmake && make --jobs $(($NB_CORES*2)) --silent && make install && make clean && make distclean && cd /tmp/wkhtmltopdf/qt && make uninstall && make clean && make distclean && rm -rf /tmp/* && apk del .build-deps" shape="box"];
  "sha256:50fdd995134d2fe65f5f80de7a3ce0dc0753c418d748d8697547b7a16ca002c7" [label="sha256:50fdd995134d2fe65f5f80de7a3ce0dc0753c418d748d8697547b7a16ca002c7" shape="plaintext"];
  "sha256:8b48e0972f64ec7ab969a20ff181573572e09ba87b6cca1c1dd59c3198834ef6" -> "sha256:7212c23ec1925d39930dfaed20fb18d7a4f1974a66c6458dbe9b391d65c0ee06" [label=""];
  "sha256:7212c23ec1925d39930dfaed20fb18d7a4f1974a66c6458dbe9b391d65c0ee06" -> "sha256:eb4c6db6a91ff7164b8697cf48efca700a7c9880822ea1492360f7f799db55dc" [label=""];
  "sha256:6f0065d6f94c60129156cf9ee8e5b2f473ec59cb7c600d76ec28884f0d0bdfe6" -> "sha256:eb4c6db6a91ff7164b8697cf48efca700a7c9880822ea1492360f7f799db55dc" [label=""];
  "sha256:eb4c6db6a91ff7164b8697cf48efca700a7c9880822ea1492360f7f799db55dc" -> "sha256:b0cba01a8df98cc462f5671631799166c20fa53c07a87765db9098e997b6f446" [label=""];
  "sha256:b0cba01a8df98cc462f5671631799166c20fa53c07a87765db9098e997b6f446" -> "sha256:50fdd995134d2fe65f5f80de7a3ce0dc0753c418d748d8697547b7a16ca002c7" [label=""];
}
