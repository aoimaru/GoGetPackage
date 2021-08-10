[app/sources/357631925.Dockerfile]
digraph {
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" [label="docker-image://docker.io/library/ubuntu:19.04" shape="ellipse"];
  "sha256:45ce80055678791762f8941fef5369c48b6da64bdecb53bb33524cb166f81b0f" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu disco main restricted universe multiverse\" >/etc/apt/sources.list &&     apt-get update &&     apt-get install -y --no-install-recommends build-essential cmake     pkg-kde-tools pkg-config extra-cmake-modules qtbase5-dev libqt5x11extras5-dev     libkf5coreaddons-dev libkf5dbusaddons-dev libkf5i18n-dev libkf5kio-dev debhelper     libkf5solid-dev libkf5widgetsaddons-dev libkf5windowsystem-dev libkf5xmlgui-dev     libkf5doctools-dev git libx11-dev libxss-dev libudev-dev libvlc-dev libqt5dbus5     dh-autoreconf autotools-dev autoconf-archive libtool pkg-config libqt5sql5-sqlite     appstream dbus-x11 wget openssl ca-certificates &&     apt-get install -y --no-install-recommends vlc-data vlc-plugin-base vlc-plugin-qt     vlc-plugin-video-output &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:38e00fbbb954b9027f016674761c31b030f2c1201dfaa2a2cb84d22348f70370" [label="/bin/sh -c cd ~ && git clone git://linuxtv.org/v4l-utils.git &&     cd ~/v4l-utils && ./bootstrap.sh && ./configure     --disable-bpf --disable-qvidcap --disable-qv4l2 --disable-v4l-utils --disable-dyn-libv4l     && make && make install" shape="box"];
  "sha256:c9c8464cf85813844a0477d660ed2cb1907677e6be7f0edb9dda406c5f818828" [label="/bin/sh -c cd ~ && git clone git://anongit.kde.org/kaffeine.git &&     wget https://linuxtv.org/downloads/dtv-scan-tables/kaffeine/scantable.dvb -O ~/kaffeine/src/scanfile.dvb &&     cd ~/kaffeine && cmake . && make VERBOSE=1 && make install" shape="box"];
  "sha256:2ba6ca105afebdf8c071aa860eb1fd48ea58d23982151722e5afd40a2e456df9" [label="/bin/sh -c apt-get purge -y qtbase5-dev libqt5x11extras5-dev     libkf5coreaddons-dev libkf5dbusaddons-dev libkf5i18n-dev libkf5kio-dev debhelper     libkf5solid-dev libkf5widgetsaddons-dev libkf5windowsystem-dev libkf5xmlgui-dev     libkf5doctools-dev git libx11-dev libxss-dev libudev-dev libvlc-dev     dh-autoreconf autotools-dev autoconf-archive libtool pkg-config wget &&     apt-get clean -y && rm -rf ~/kaffeine ~/v4l-utils" shape="box"];
  "sha256:12bfed153f6f839c6a29d8759a2ec52c81fa7de9679b026d2b809d4b5e1b2da8" [label="/bin/sh -c useradd -m -r -u 1000 -g users -Gaudio,video,irc kaffeine" shape="box"];
  "sha256:3f83a7651ba00b04b62a2664fb26b8ac0ae65c9c013a9aee9a6176667774a4f6" [label="sha256:3f83a7651ba00b04b62a2664fb26b8ac0ae65c9c013a9aee9a6176667774a4f6" shape="plaintext"];
  "sha256:e6da5158e491e23e4343393b14263b9329d8fcf61298d17baccf14d0f5c4fd22" -> "sha256:45ce80055678791762f8941fef5369c48b6da64bdecb53bb33524cb166f81b0f" [label=""];
  "sha256:45ce80055678791762f8941fef5369c48b6da64bdecb53bb33524cb166f81b0f" -> "sha256:38e00fbbb954b9027f016674761c31b030f2c1201dfaa2a2cb84d22348f70370" [label=""];
  "sha256:38e00fbbb954b9027f016674761c31b030f2c1201dfaa2a2cb84d22348f70370" -> "sha256:c9c8464cf85813844a0477d660ed2cb1907677e6be7f0edb9dda406c5f818828" [label=""];
  "sha256:c9c8464cf85813844a0477d660ed2cb1907677e6be7f0edb9dda406c5f818828" -> "sha256:2ba6ca105afebdf8c071aa860eb1fd48ea58d23982151722e5afd40a2e456df9" [label=""];
  "sha256:2ba6ca105afebdf8c071aa860eb1fd48ea58d23982151722e5afd40a2e456df9" -> "sha256:12bfed153f6f839c6a29d8759a2ec52c81fa7de9679b026d2b809d4b5e1b2da8" [label=""];
  "sha256:12bfed153f6f839c6a29d8759a2ec52c81fa7de9679b026d2b809d4b5e1b2da8" -> "sha256:3f83a7651ba00b04b62a2664fb26b8ac0ae65c9c013a9aee9a6176667774a4f6" [label=""];
}
