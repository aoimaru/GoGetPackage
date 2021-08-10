[app/sources/168733401.Dockerfile]
digraph {
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" [label="docker-image://docker.io/library/ubuntu:14.04@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:f180ba9c834f0f58c2289ab02de40ef48255076ab913597cdfe1413b1d9e804b" [label="/bin/sh -c dpkg --add-architecture i386 && apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y wget" shape="box"];
  "sha256:21218362abeb50445667faf1d5ecaa8f2e8cb9ac8b8e0006681f74f839101ea6" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y gcc-multilib:i386 g++-multilib:i386 g++:i386 g++-4.8-multilib:i386 gcc-4.8-multilib:i386 gcc:i386 g++-4.8:i386 gcc-4.8:i386 binutils:i386" shape="box"];
  "sha256:f94d43cd695169ad07fcc3c1ce6e8043bb75c7ff646a3e8cb353d2ef01a2edcd" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y bison:i386 ccache:i386 cvs:i386 flex:i386 gettext:i386 libasound2-dev:i386 libaudio-dev:i386 libc6-dev:i386 libcapi20-3:i386 libcapi20-dev:i386 libdbus-1-dev:i386 libesd0-dev:i386 libexif-dev:i386 libexpat1-dev:i386 libfontconfig1-dev:i386 libfreetype6-dev:i386 libgcrypt11-dev:i386 libgl1-mesa-dev:i386 libglib2.0-dev:i386 libglu1-mesa-dev:i386 libgnutls-dev:i386 libgpg-error-dev:i386 libgphoto2-2-dev:i386 libgsm1-dev:i386 libgstreamer0.10-dev:i386 libgstreamer-plugins-base0.10-dev:i386 libice-dev:i386 libieee1284-3-dev:i386 liblcms1-dev:i386 libldap2-dev:i386 libmad0:i386 libmad0-dev:i386 libmpg123-dev:i386 libncurses5-dev:i386 libogg-dev:i386 libopenal-dev:i386 libopenal1:i386 libpng12-dev:i386 libpopt-dev:i386 libsm-dev:i386 libssl-dev:i386 libusb-dev:i386 libvorbis-dev:i386 libvorbisfile3:i386 libx11-dev:i386 libxau-dev:i386 libxcomposite-dev:i386 libxcursor-dev:i386 libxdmcp-dev:i386 libxext-dev:i386 libxfixes-dev:i386 libxft-dev:i386 libxi-dev:i386 libxinerama-dev:i386 libxml2-dev:i386 libxmu-dev:i386 libxmu-headers:i386 libxrandr-dev:i386 libxrender-dev:i386 libxslt1-dev:i386 libxt-dev:i386 libxv-dev:i386 libxxf86vm-dev:i386 linux-libc-dev:i386 m4:i386 make:i386 mesa-common-dev:i386 unixodbc:i386 unixodbc-dev:i386 x11proto-composite-dev:i386 x11proto-core-dev:i386 x11proto-fixes-dev:i386 x11proto-input-dev:i386 x11proto-kb-dev:i386 x11proto-randr-dev:i386 x11proto-video-dev:i386 x11proto-xext-dev:i386 x11proto-xf86vidmode-dev:i386 x11proto-xinerama-dev:i386 xtrans-dev:i386 zlib1g-dev:i386 libelfg0:i386 libgif-dev:i386 libjack-dev:i386" shape="box"];
  "sha256:f26c4ce0e921698d4546bb9bd293f9897d158c5d8b16f83d10cc5b51a8587044" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y libcups2-dev:i386 libjpeg-turbo8-dev:i386 liblcms2-dev:i386 libosmesa6-dev:i386 libsane-dev:i386 libtiffxx5:i386 libtiff5-dev:i386 libv4l-dev:i386 prelink:i386" shape="box"];
  "sha256:8c4638b308b8f43f45616dbf58f5b938ac0ebee3c179f594ad62636cd1843db9" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y gcc-multilib:i386 g++-multilib:i386 g++:i386 g++-4.8-multilib:i386 gcc-4.8-multilib:i386 gcc:i386 g++-4.8:i386 gcc-4.8:i386 binutils:i386" shape="box"];
  "sha256:a2d93cd30f5b0e197b64d2a4a347f10aa4b8c9bc4a7f0ac0bc0c4e6434b32747" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y libgettextpo0:amd64" shape="box"];
  "sha256:9dd9398fe702cb5f0ba19b67eba9b0cb45e7b320ff41a50276f4185d4f20b030" [label="local://context" shape="ellipse"];
  "sha256:bff80b169b3948a72ec4431c8084eefc9f8039f8325ae2f4640bbf024902cf84" [label="copy{src=/run.sh, dest=/usr/bin/}" shape="note"];
  "sha256:8508ad0df5fe4935e2ca150e71b2e36a962f6300f48e7173661532a1ded8e67d" [label="/bin/sh -c chmod 755 /usr/bin/*.sh" shape="box"];
  "sha256:724585ef82837bfd7ea059b45c488e5af8698dd976f0559322614d32e046a19c" [label="mkdir{path=/usr/src/wine32}" shape="note"];
  "sha256:4820271213d51ad6969ca3ecff450938f9a75cc72565e3018c7c1e3b05aedc68" [label="sha256:4820271213d51ad6969ca3ecff450938f9a75cc72565e3018c7c1e3b05aedc68" shape="plaintext"];
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" -> "sha256:f180ba9c834f0f58c2289ab02de40ef48255076ab913597cdfe1413b1d9e804b" [label=""];
  "sha256:f180ba9c834f0f58c2289ab02de40ef48255076ab913597cdfe1413b1d9e804b" -> "sha256:21218362abeb50445667faf1d5ecaa8f2e8cb9ac8b8e0006681f74f839101ea6" [label=""];
  "sha256:21218362abeb50445667faf1d5ecaa8f2e8cb9ac8b8e0006681f74f839101ea6" -> "sha256:f94d43cd695169ad07fcc3c1ce6e8043bb75c7ff646a3e8cb353d2ef01a2edcd" [label=""];
  "sha256:f94d43cd695169ad07fcc3c1ce6e8043bb75c7ff646a3e8cb353d2ef01a2edcd" -> "sha256:f26c4ce0e921698d4546bb9bd293f9897d158c5d8b16f83d10cc5b51a8587044" [label=""];
  "sha256:f26c4ce0e921698d4546bb9bd293f9897d158c5d8b16f83d10cc5b51a8587044" -> "sha256:8c4638b308b8f43f45616dbf58f5b938ac0ebee3c179f594ad62636cd1843db9" [label=""];
  "sha256:8c4638b308b8f43f45616dbf58f5b938ac0ebee3c179f594ad62636cd1843db9" -> "sha256:a2d93cd30f5b0e197b64d2a4a347f10aa4b8c9bc4a7f0ac0bc0c4e6434b32747" [label=""];
  "sha256:a2d93cd30f5b0e197b64d2a4a347f10aa4b8c9bc4a7f0ac0bc0c4e6434b32747" -> "sha256:bff80b169b3948a72ec4431c8084eefc9f8039f8325ae2f4640bbf024902cf84" [label=""];
  "sha256:9dd9398fe702cb5f0ba19b67eba9b0cb45e7b320ff41a50276f4185d4f20b030" -> "sha256:bff80b169b3948a72ec4431c8084eefc9f8039f8325ae2f4640bbf024902cf84" [label=""];
  "sha256:bff80b169b3948a72ec4431c8084eefc9f8039f8325ae2f4640bbf024902cf84" -> "sha256:8508ad0df5fe4935e2ca150e71b2e36a962f6300f48e7173661532a1ded8e67d" [label=""];
  "sha256:8508ad0df5fe4935e2ca150e71b2e36a962f6300f48e7173661532a1ded8e67d" -> "sha256:724585ef82837bfd7ea059b45c488e5af8698dd976f0559322614d32e046a19c" [label=""];
  "sha256:724585ef82837bfd7ea059b45c488e5af8698dd976f0559322614d32e046a19c" -> "sha256:4820271213d51ad6969ca3ecff450938f9a75cc72565e3018c7c1e3b05aedc68" [label=""];
}

