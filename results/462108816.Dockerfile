[app/sources/462108816.Dockerfile]
digraph {
  "sha256:d2ec7e1b9bfb30115babfe69d32a88c2e712a42b61ec000c96e08d53e3c60b7e" [label="docker-image://docker.io/jlesage/baseimage-gui:alpine-3.9-v3.5.2" shape="ellipse"];
  "sha256:752b98bd7294887c3a17b248e88845a8acbd3bf307da85ccab032641fb2b7301" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:8762d8ed2c261732786803c53803463f99b63b11ea90bd34dff88715c9236f1a" [label="/bin/sh -c add-pkg --virtual build-dependencies         curl         build-base         yasm         autoconf         cmake         automake         libtool         m4         patch         coreutils         tar         file         python         linux-headers         intltool         git         diffutils         bash         nasm         jansson-dev         libxml2-dev         libpciaccess-dev         xz-dev         libsamplerate-dev         libass-dev         libtheora-dev         lame-dev         opus-dev         libvorbis-dev         speex-dev         libvpx-dev         gtk+3.0-dev         dbus-glib-dev         libnotify-dev         libgudev-dev         &&     echo \"Downloading x264 sources...\" &&     mkdir x264 &&     curl -# -L ${X264_URL} | tar xj --strip 1 -C x264 &&     echo \"Downloading libva sources...\" &&     mkdir libva &&     curl -# -L ${LIBVA_URL} | tar xj --strip 1 -C libva &&     echo \"Downloading Intel VAAPI driver sources...\" &&     mkdir intel-vaapi-driver &&     curl -# -L ${INTEL_VAAPI_DRIVER_URL} | tar xj --strip 1 -C intel-vaapi-driver &&     echo \"Downloading gmmlib sources...\" &&     mkdir gmmlib &&     curl -# -L ${GMMLIB_URL} | tar xz --strip 1 -C gmmlib &&     echo \"Downloading Intel Media driver sources...\" &&     mkdir intel-media-driver &&     curl -# -L ${INTEL_MEDIA_DRIVER_URL} | tar xz --strip 1 -C intel-media-driver &&     echo \"Downloading Intel Media SDK sources...\" &&     mkdir MediaSDK &&     curl -# -L ${INTEL_MEDIA_SDK_URL} | tar xz --strip 1 -C MediaSDK &&     echo \"Downloading HandBrake sources...\" &&     if echo \"${HANDBRAKE_URL}\" | grep -q '\\.git$'; then         git clone ${HANDBRAKE_URL} HandBrake &&         git -C HandBrake checkout \"${HANDBRAKE_VERSION}\";     else         mkdir HandBrake &&         curl -# -L ${HANDBRAKE_URL} | tar xj --strip 1 -C HandBrake;     fi &&     echo \"Downloading helpers...\" &&     curl -# -L -o /tmp/run_cmd https://raw.githubusercontent.com/jlesage/docker-mgmt-tools/master/run_cmd &&     chmod +x /tmp/run_cmd &&     echo \"Downloading patches...\" &&     curl -# -L -o HandBrake/A00-hb-video-preset.patch https://raw.githubusercontent.com/jlesage/docker-handbrake/master/A00-hb-video-preset.patch &&     curl -# -L -o HandBrake/A00-hb-qsv.patch https://raw.githubusercontent.com/jlesage/docker-handbrake/master/A00-hb-qsv.patch &&     curl -# -L -o MediaSDK/intel-media-sdk-debug-no-assert.patch https://raw.githubusercontent.com/jlesage/docker-handbrake/master/intel-media-sdk-debug-no-assert.patch &&     curl -# -L -o intel-media-driver/media-driver-c-assert-fix.patch https://raw.githubusercontent.com/jlesage/docker-handbrake/master/media-driver-c-assert-fix.patch &&     echo \"Compiling x264...\" &&     cd x264 &&     if [ \"${HANDBRAKE_DEBUG_MODE}\" = \"none\" ]; then         X264_CMAKE_OPTS=--enable-strip;     else         X264_CMAKE_OPTS=--enable-debug;     fi &&     ./configure         --prefix=/usr         --enable-shared         --enable-pic         --disable-cli         $X264_CMAKE_OPTS         &&     make -j$(nproc) install &&     cd ../ &&     echo \"Compiling libva...\" &&     cd libva &&     ./configure         --prefix=/usr         --mandir=/tmp/libva-man         --infodir=/tmp/liva-info         --localstatedir=/var         --enable-x11         --disable-glx         --disable-wayland         --disable-static         --enable-shared         --with-drivers-path=/opt/intel/mediasdk/lib64         &&     make -j$(nproc) &&     make install &&     cd ../ &&     echo \"Compiling Intel VAAPI driver...\" &&     cd intel-vaapi-driver &&     ./configure &&     make -j$(nproc) &&     make install &&     cd .. &&     echo \"Compiling Intel Media driver...\" &&     add-pkg libexecinfo-dev &&     cd intel-media-driver &&     patch -p1 < media-driver-c-assert-fix.patch &&     mkdir build && cd build &&     cmake         -Wno-dev         -DBUILD_TYPE=Release         -DCMAKE_INSTALL_PREFIX=/opt/intel/mediasdk         -DLIBVA_DRIVERS_PATH=/opt/intel/mediasdk/lib64         -DINSTALL_DRIVER_SYSCONF=OFF         -DMEDIA_RUN_TEST_SUITE=OFF         ../ &&     make -j$(nproc) &&     make install &&     cd .. &&     cd .. &&     echo \"Compiling Intel Media SDK...\" &&     cd MediaSDK &&     patch -p1 < intel-media-sdk-debug-no-assert.patch &&     mkdir build &&     cd build &&     if [ \"${HANDBRAKE_DEBUG_MODE}\" = \"none\" ]; then         INTEL_MEDIA_SDK_BUILD_TYPE=RELEASE;     else         INTEL_MEDIA_SDK_BUILD_TYPE=DEBUG;     fi &&     cmake         -DCMAKE_BUILD_TYPE=$INTEL_MEDIA_SDK_BUILD_TYPE         -DMFX_PLUGINS_DIR=/opt/intel/mediasdk/plugins         -DMFX_PLUGINS_CONF_DIR=/opt/intel/mediasdk/plugins         -DENABLE_OPENCL=OFF         -DENABLE_X11_DRI3=OFF         -DENABLE_WAYLAND=OFF         -DBUILD_DISPATCHER=ON         -DENABLE_ITT=OFF         -DENABLE_TEXTLOG=OFF         -DENABLE_STAT=OFF         -DBUILD_SAMPLES=OFF         .. &&     make -j$(nproc) install &&     cd .. &&     cd .. &&     echo \"Compiling HandBrake...\" &&     cd HandBrake &&     patch -p1 < A00-hb-video-preset.patch &&     patch -p1 < A00-hb-qsv.patch &&     ./configure --prefix=/usr                 --debug=$HANDBRAKE_DEBUG_MODE                 --disable-gtk-update-checks                 --enable-fdk-aac                 --enable-x265                 --enable-qsv                 --launch-jobs=$(nproc)                 --launch                 &&     /tmp/run_cmd -i 600 -m \"HandBrake still compiling...\" make --directory=build install &&     cd .. &&     if [ \"${HANDBRAKE_DEBUG_MODE}\" = \"none\" ]; then         find /usr/lib -type f -name \"libva*.so*\" -exec strip -s {} ';';         find /opt/intel/mediasdk -type f -name \"*.so*\" -exec strip -s {} ';';         strip -s /usr/bin/ghb;         strip -s /usr/bin/HandBrakeCLI;     fi &&     del-pkg build-dependencies &&     rm -r         /usr/lib/libva*.la         /opt/intel/mediasdk/include         /opt/intel/mediasdk/lib64/pkgconfig         /opt/intel/mediasdk/lib64/*.a         /opt/intel/mediasdk/lib64/*.la         /opt/intel/mediasdk/lib64/libmfx.*         /usr/lib/pkgconfig         /usr/include         &&     rm -rf /tmp/* /tmp/.[!.]*" shape="box"];
  "sha256:0bd61501afa4d93b9fc042cb9ee68499563f2cd643a03e4196e4ad32ee0c9a99" [label="/bin/sh -c add-pkg         gtk+3.0         libgudev         dbus-glib         libnotify         libsamplerate         libass         jansson         xz         libtheora         lame         opus         libvorbis         speex         libvpx         libdvdcss         librsvg         adwaita-icon-theme         lsscsi         bash         coreutils         yad         findutils         expect" shape="box"];
  "sha256:961e9e738a6c27888bb787d16591db7840c1d3d4882b8fbdece406e04ba7b66f" [label="/bin/sh -c sed-patch 's/<application type=\"normal\">/<application type=\"normal\" title=\"HandBrake\">/'         /etc/xdg/openbox/rc.xml &&     sed-patch '/<application type=\"normal\" title=\"HandBrake\">/a \\    <layer>below</layer>'         /etc/xdg/openbox/rc.xml" shape="box"];
  "sha256:5a21d28f14ccf9d55e79bfab0ad0538c9e2f4faec819e109e17da177581f4008" [label="/bin/sh -c APP_ICON_URL=https://raw.githubusercontent.com/jlesage/docker-templates/master/jlesage/images/handbrake-icon.png &&     install_app_icon.sh \"$APP_ICON_URL\"" shape="box"];
  "sha256:fcd934f4a48e309f7984068e782e533732fd0c8a224d52c775acbedf3a11f15d" [label="local://context" shape="ellipse"];
  "sha256:01a281ffa7340c677cfa9882f5c9e7d2c0226ef2c0e5cf18aab7b6b49ca58a95" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:654f6cc6c1c8c5f422ba758dd06657a660b4598efd1bc0fa3d3c8583e3a9ac73" [label="sha256:654f6cc6c1c8c5f422ba758dd06657a660b4598efd1bc0fa3d3c8583e3a9ac73" shape="plaintext"];
  "sha256:d2ec7e1b9bfb30115babfe69d32a88c2e712a42b61ec000c96e08d53e3c60b7e" -> "sha256:752b98bd7294887c3a17b248e88845a8acbd3bf307da85ccab032641fb2b7301" [label=""];
  "sha256:752b98bd7294887c3a17b248e88845a8acbd3bf307da85ccab032641fb2b7301" -> "sha256:8762d8ed2c261732786803c53803463f99b63b11ea90bd34dff88715c9236f1a" [label=""];
  "sha256:8762d8ed2c261732786803c53803463f99b63b11ea90bd34dff88715c9236f1a" -> "sha256:0bd61501afa4d93b9fc042cb9ee68499563f2cd643a03e4196e4ad32ee0c9a99" [label=""];
  "sha256:0bd61501afa4d93b9fc042cb9ee68499563f2cd643a03e4196e4ad32ee0c9a99" -> "sha256:961e9e738a6c27888bb787d16591db7840c1d3d4882b8fbdece406e04ba7b66f" [label=""];
  "sha256:961e9e738a6c27888bb787d16591db7840c1d3d4882b8fbdece406e04ba7b66f" -> "sha256:5a21d28f14ccf9d55e79bfab0ad0538c9e2f4faec819e109e17da177581f4008" [label=""];
  "sha256:5a21d28f14ccf9d55e79bfab0ad0538c9e2f4faec819e109e17da177581f4008" -> "sha256:01a281ffa7340c677cfa9882f5c9e7d2c0226ef2c0e5cf18aab7b6b49ca58a95" [label=""];
  "sha256:fcd934f4a48e309f7984068e782e533732fd0c8a224d52c775acbedf3a11f15d" -> "sha256:01a281ffa7340c677cfa9882f5c9e7d2c0226ef2c0e5cf18aab7b6b49ca58a95" [label=""];
  "sha256:01a281ffa7340c677cfa9882f5c9e7d2c0226ef2c0e5cf18aab7b6b49ca58a95" -> "sha256:654f6cc6c1c8c5f422ba758dd06657a660b4598efd1bc0fa3d3c8583e3a9ac73" [label=""];
}

