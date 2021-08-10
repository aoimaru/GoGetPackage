[app/sources/358033865.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:f5cc3e7d9e5786a5279f9ac9d998de516f3aef53f51374709ac9ef185b39319a" [label="/bin/sh -c apt-get update &&     apt-get -y upgrade &&     apt-get install -y software-properties-common build-essential curl git wget         autotools-dev autoconf libtool liblzma-dev libz-dev gettext &&     add-apt-repository ppa:beineri/opt-qt-5.10.1-trusty -y &&     apt-get update &&     apt-get install -y qt510base qt510svg qt510x11extras cmake3 libdwarf-dev mesa-common-dev         libboost-iostreams-dev libboost-program-options-dev libboost-system-dev libboost-filesystem-dev" shape="box"];
  "sha256:5cfb86351a3cae038adf27d1426de2f52dca620d1f19d0fecbf52c0949eed1e6" [label="mkdir{path=/opt}" shape="note"];
  "sha256:ad2223cf5cfc9c5badb39afb869e198a4e62920f0871fa9baba426e21d94ff70" [label="/bin/sh -c wget -c \"https://github.com/chigraph/precompiled-kf5-linux/releases/download/precompiled/kf5-gcc6-linux64-release.tar.xz\" &&     tar --strip-components=2 -xf kf5-gcc6-linux64-release.tar.xz" shape="box"];
  "sha256:b9ce03400a2404322ef349b22e5ced178e9a13d68fc46f3f7eb126313512f5ad" [label="/bin/sh -c wget -c \"https://github.com/probonopd/linuxdeployqt/releases/download/continuous/linuxdeployqt-continuous-x86_64.AppImage\" -O /tmp/linuxdeployqt &&     wget -c \"https://github.com/AppImage/AppImageKit/releases/download/continuous/appimagetool-x86_64.AppImage\" -O /tmp/appimagetool &&     chmod a+x /tmp/linuxdeployqt /tmp/appimagetool &&     /tmp/linuxdeployqt --appimage-extract && mv squashfs-root linuxdeployqt &&     ln -s /opt/linuxdeployqt/AppRun /opt/bin/linuxdeployqt &&     /tmp/appimagetool --appimage-extract && mv squashfs-root appimagetool &&     ln -s /opt/appimagetool/AppRun /opt/bin/appimagetool" shape="box"];
  "sha256:17edd45ddb38c9b993b6725b9c060b00d96321d5304f5c0e224549fb53c8ce2f" [label="/bin/sh -c git clone git://git.sv.gnu.org/libunwind.git &&     git clone https://github.com/facebook/zstd.git &&     git clone git://anongit.kde.org/kdiagram" shape="box"];
  "sha256:7558282d24b1c8864ad951b9b9f18cee0ded5fd79c57f458a2ec600e35b53a72" [label="mkdir{path=/opt/libunwind}" shape="note"];
  "sha256:01c3985b7a5f9db65308fe6ae4013653052aa8af4ded4577a4fae622e756dc9d" [label="/bin/sh -c autoreconf -vfi &&     ./configure --prefix /usr/local --enable-debug-frame --enable-minidebuginfo &&     make -j$(nproc) && make install" shape="box"];
  "sha256:f3ecc830598c39727056190389bbd96990976ba675ac23f308f34493ba84458b" [label="mkdir{path=/opt/zstd}" shape="note"];
  "sha256:fe0f16d1d3db83b058211f17761c260acb8c543f14dd600929d66baf229c40ec" [label="/bin/sh -c make -j$(nproc) && make install" shape="box"];
  "sha256:08a34321363ecd23a04805dbe37341e06b6224e58a318a728509d8cb520c50e3" [label="mkdir{path=/opt/kdiagram}" shape="note"];
  "sha256:b11771c6fd0f57157789ead6165a17ef10308349158674c83122a7dd88ed3233" [label="/bin/sh -c cmake -DBUILD_TESTING=OFF -DCMAKE_INSTALL_PREFIX=/opt -DCMAKE_BUILD_TYPE=Release &&     make -j$(nproc) && make install" shape="box"];
  "sha256:7c3fe3e5723123985f5525148c9f86c4fc25e6adfc695dbbafda8244a56cc1a9" [label="local://context" shape="ellipse"];
  "sha256:3079bac241e37853ca18a5a452ddaa077ef91d9b326522883eb2892a205cd599" [label="copy{src=/, dest=/opt/heaptrack}" shape="note"];
  "sha256:f4c02b47532491d1ca0b89dee9435bea95c6d4809d3d1ab234bfbf183524564a" [label="mkdir{path=/opt/heaptrack}" shape="note"];
  "sha256:5300a8a94827c94fc3cb7992693d2e6d68b61ffdc5a64e4438f95fe219945a76" [label="sha256:5300a8a94827c94fc3cb7992693d2e6d68b61ffdc5a64e4438f95fe219945a76" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:f5cc3e7d9e5786a5279f9ac9d998de516f3aef53f51374709ac9ef185b39319a" [label=""];
  "sha256:f5cc3e7d9e5786a5279f9ac9d998de516f3aef53f51374709ac9ef185b39319a" -> "sha256:5cfb86351a3cae038adf27d1426de2f52dca620d1f19d0fecbf52c0949eed1e6" [label=""];
  "sha256:5cfb86351a3cae038adf27d1426de2f52dca620d1f19d0fecbf52c0949eed1e6" -> "sha256:ad2223cf5cfc9c5badb39afb869e198a4e62920f0871fa9baba426e21d94ff70" [label=""];
  "sha256:ad2223cf5cfc9c5badb39afb869e198a4e62920f0871fa9baba426e21d94ff70" -> "sha256:b9ce03400a2404322ef349b22e5ced178e9a13d68fc46f3f7eb126313512f5ad" [label=""];
  "sha256:b9ce03400a2404322ef349b22e5ced178e9a13d68fc46f3f7eb126313512f5ad" -> "sha256:17edd45ddb38c9b993b6725b9c060b00d96321d5304f5c0e224549fb53c8ce2f" [label=""];
  "sha256:17edd45ddb38c9b993b6725b9c060b00d96321d5304f5c0e224549fb53c8ce2f" -> "sha256:7558282d24b1c8864ad951b9b9f18cee0ded5fd79c57f458a2ec600e35b53a72" [label=""];
  "sha256:7558282d24b1c8864ad951b9b9f18cee0ded5fd79c57f458a2ec600e35b53a72" -> "sha256:01c3985b7a5f9db65308fe6ae4013653052aa8af4ded4577a4fae622e756dc9d" [label=""];
  "sha256:01c3985b7a5f9db65308fe6ae4013653052aa8af4ded4577a4fae622e756dc9d" -> "sha256:f3ecc830598c39727056190389bbd96990976ba675ac23f308f34493ba84458b" [label=""];
  "sha256:f3ecc830598c39727056190389bbd96990976ba675ac23f308f34493ba84458b" -> "sha256:fe0f16d1d3db83b058211f17761c260acb8c543f14dd600929d66baf229c40ec" [label=""];
  "sha256:fe0f16d1d3db83b058211f17761c260acb8c543f14dd600929d66baf229c40ec" -> "sha256:08a34321363ecd23a04805dbe37341e06b6224e58a318a728509d8cb520c50e3" [label=""];
  "sha256:08a34321363ecd23a04805dbe37341e06b6224e58a318a728509d8cb520c50e3" -> "sha256:b11771c6fd0f57157789ead6165a17ef10308349158674c83122a7dd88ed3233" [label=""];
  "sha256:b11771c6fd0f57157789ead6165a17ef10308349158674c83122a7dd88ed3233" -> "sha256:3079bac241e37853ca18a5a452ddaa077ef91d9b326522883eb2892a205cd599" [label=""];
  "sha256:7c3fe3e5723123985f5525148c9f86c4fc25e6adfc695dbbafda8244a56cc1a9" -> "sha256:3079bac241e37853ca18a5a452ddaa077ef91d9b326522883eb2892a205cd599" [label=""];
  "sha256:3079bac241e37853ca18a5a452ddaa077ef91d9b326522883eb2892a205cd599" -> "sha256:f4c02b47532491d1ca0b89dee9435bea95c6d4809d3d1ab234bfbf183524564a" [label=""];
  "sha256:f4c02b47532491d1ca0b89dee9435bea95c6d4809d3d1ab234bfbf183524564a" -> "sha256:5300a8a94827c94fc3cb7992693d2e6d68b61ffdc5a64e4438f95fe219945a76" [label=""];
}

