[app/sources/471062658.Dockerfile]
digraph {
  "sha256:286cda7a99a95805fd7694229d9c65777e83cad7730791ba3ea32a7991f89efd" [label="docker-image://docker.io/nvidia/cuda:9.0-devel-ubuntu16.04" shape="ellipse"];
  "sha256:1c77fd6833a42297c6837c7851d07c4271c3752160b04b53d20c8d88d89ba936" [label="/bin/sh -c apt-get update --fix-missing &&     apt-get install -y libx11-6 libxext6 vim git" shape="box"];
  "sha256:d507a8d1b0407ac69e12387110baeb3f775295a5654f5599b46197aa6432dde9" [label="/bin/sh -c apt-get install -y yasm wget &&     cd /tmp && wget -q http://ffmpeg.org/releases/ffmpeg-$FFMPEG_VERSION.tar.bz2 &&     tar xf ffmpeg-$FFMPEG_VERSION.tar.bz2 &&     rm ffmpeg-$FFMPEG_VERSION.tar.bz2 &&     cd ffmpeg-$FFMPEG_VERSION &&     ./configure       --prefix=/usr/local       --disable-static       --disable-all       --disable-autodetect       --disable-iconv       --enable-shared       --enable-avformat       --enable-avcodec       --enable-avfilter       --enable-protocol=file       --enable-demuxer=mov,matroska       --enable-bsf=h264_mp4toannexb,hevc_mp4toannexb &&     make -j8 && make install &&     cd /tmp && rm -rf ffmpeg-$FFMPEG_VERSION &&     apt-get purge -y yasm wget &&     apt-get autoremove -y" shape="box"];
  "sha256:13272461908864a94c2fe0c9734e03c892f23e5f21b31237d0d27cac1d273eb1" [label="/bin/sh -c apt-get install -y pkg-config doxygen wget &&     cd /tmp &&     export dir=$(echo $CMAKE_VERSION | sed \"s/^\\([0-9]*\\.[0-9]*\\).*/v\\1/\") &&     wget -q https://cmake.org/files/${dir}/cmake-$CMAKE_VERSION-Linux-x86_64.sh &&     /bin/sh cmake-$CMAKE_VERSION-Linux-x86_64.sh --skip-license --prefix=/usr/local &&     rm cmake-$CMAKE_VERSION-Linux-x86_64.sh &&     apt-get purge -y wget &&     apt-get autoremove -y" shape="box"];
  "sha256:7a7688433c79fba2711a4b8a28754086f60add591de24a07c8825a4590d776ac" [label="mkdir{path=/root}" shape="note"];
  "sha256:f34a298015bb49a080b6cf15bdaca0f90cd08b468887120d2874eca5fda3a4c6" [label="/bin/sh -c git clone https://github.com/NVIDIA/nvvl.git" shape="box"];
  "sha256:c666b3e9bc44a8b36055f32f59a122ebbde8e0dcf23346ef9238eeedcef76238" [label="sha256:c666b3e9bc44a8b36055f32f59a122ebbde8e0dcf23346ef9238eeedcef76238" shape="plaintext"];
  "sha256:286cda7a99a95805fd7694229d9c65777e83cad7730791ba3ea32a7991f89efd" -> "sha256:1c77fd6833a42297c6837c7851d07c4271c3752160b04b53d20c8d88d89ba936" [label=""];
  "sha256:1c77fd6833a42297c6837c7851d07c4271c3752160b04b53d20c8d88d89ba936" -> "sha256:d507a8d1b0407ac69e12387110baeb3f775295a5654f5599b46197aa6432dde9" [label=""];
  "sha256:d507a8d1b0407ac69e12387110baeb3f775295a5654f5599b46197aa6432dde9" -> "sha256:13272461908864a94c2fe0c9734e03c892f23e5f21b31237d0d27cac1d273eb1" [label=""];
  "sha256:13272461908864a94c2fe0c9734e03c892f23e5f21b31237d0d27cac1d273eb1" -> "sha256:7a7688433c79fba2711a4b8a28754086f60add591de24a07c8825a4590d776ac" [label=""];
  "sha256:7a7688433c79fba2711a4b8a28754086f60add591de24a07c8825a4590d776ac" -> "sha256:f34a298015bb49a080b6cf15bdaca0f90cd08b468887120d2874eca5fda3a4c6" [label=""];
  "sha256:f34a298015bb49a080b6cf15bdaca0f90cd08b468887120d2874eca5fda3a4c6" -> "sha256:c666b3e9bc44a8b36055f32f59a122ebbde8e0dcf23346ef9238eeedcef76238" [label=""];
}

