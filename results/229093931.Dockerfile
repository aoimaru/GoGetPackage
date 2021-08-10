[app/sources/229093931.Dockerfile]
digraph {
  "sha256:3af9645b054cc6e280789e6b7dd4fce8dd7872f00583871303a21b0fa23c7ce9" [label="docker-image://docker.io/thewtex/opengl:centos" shape="ellipse"];
  "sha256:389ac46e124c68206214882fe6e00c791590dd677273d97a3897698a8475d0e2" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:9748467a7ddc16d0bc3d8eda158a6444dee9da2bd3fc05e2f419077a4bf2e56b" [label="/bin/sh -c git clone git://cmake.org/cmake.git CMake &&   cd CMake &&   git checkout v3.4.1 &&   mkdir /usr/src/CMake-build &&   cd /usr/src/CMake-build &&   /usr/src/CMake/bootstrap     --parallel=$(grep -c processor /proc/cpuinfo)     --prefix=/usr &&   make -j$(grep -c processor /proc/cpuinfo) &&   ./bin/cmake     -DCMAKE_BUILD_TYPE:STRING=Release     -DCMAKE_USE_OPENSSL:BOOL=ON . &&   make install &&   cd .. && rm -rf CMake*" shape="box"];
  "sha256:1f6afcacea8dea3081a16879738c38276a95ba810b124f051b9d9c3dab90f2c9" [label="local://context" shape="ellipse"];
  "sha256:d41c41da906988d229acac76fac67df31ebfce0347ddc498bdc63bc15f2c3c22" [label="copy{src=/etc/CentOS-Base.repo, dest=/etc/yum.repos.d/CentOS-Base.repo}" shape="note"];
  "sha256:c8996e20e05cea8c21df5c052768b4d7cc3b0a57d6dd7ab0ff8ea7f65d1669bb" [label="copy{src=/etc/CentOS-Vault.repo, dest=/etc/yum.repos.d/CentOS-Vault.repo}" shape="note"];
  "sha256:9a12d15cf70ad6280d57f4fecee838e2ec87ec5d2ce1de221b1e4f2cffe3e154" [label="copy{src=/etc/libselinux.repo, dest=/etc/yum.repos.d/libselinux.repo}" shape="note"];
  "sha256:da2f80263f1bfa59028955252d85a3c202c8e397d0bd187cf2b6337ddd5e4d70" [label="/bin/sh -c yum update -y &&   yum install -y glx-utils   subversion   build-essential   qt4-dev-tools   x11-xserver-utils   x11vnc   xinit   libxt-dev   ninja   libboost-all-dev   wget   vim   valgrind   python2.7-dev" shape="box"];
  "sha256:2bb8ecee0ceadec4869f54c138ad9af466cfd454d3d5f983bb34d02741671d36" [label="copy{src=/test.sh, dest=/usr/src/test.sh}" shape="note"];
  "sha256:26d7ff78e451623662fda16db630bd2dac2d0c8bb0d11cd14c1f302eeebe26a1" [label="copy{src=/CircleCI_Slicer_Docker.cmake, dest=/usr/src/CircleCI_Slicer_Docker.cmake}" shape="note"];
  "sha256:97fc66d7744e43fa7484308d4fdab1a8dac79412c7996f74d58fc4f947ee2844" [label="sha256:97fc66d7744e43fa7484308d4fdab1a8dac79412c7996f74d58fc4f947ee2844" shape="plaintext"];
  "sha256:3af9645b054cc6e280789e6b7dd4fce8dd7872f00583871303a21b0fa23c7ce9" -> "sha256:389ac46e124c68206214882fe6e00c791590dd677273d97a3897698a8475d0e2" [label=""];
  "sha256:389ac46e124c68206214882fe6e00c791590dd677273d97a3897698a8475d0e2" -> "sha256:9748467a7ddc16d0bc3d8eda158a6444dee9da2bd3fc05e2f419077a4bf2e56b" [label=""];
  "sha256:9748467a7ddc16d0bc3d8eda158a6444dee9da2bd3fc05e2f419077a4bf2e56b" -> "sha256:d41c41da906988d229acac76fac67df31ebfce0347ddc498bdc63bc15f2c3c22" [label=""];
  "sha256:1f6afcacea8dea3081a16879738c38276a95ba810b124f051b9d9c3dab90f2c9" -> "sha256:d41c41da906988d229acac76fac67df31ebfce0347ddc498bdc63bc15f2c3c22" [label=""];
  "sha256:d41c41da906988d229acac76fac67df31ebfce0347ddc498bdc63bc15f2c3c22" -> "sha256:c8996e20e05cea8c21df5c052768b4d7cc3b0a57d6dd7ab0ff8ea7f65d1669bb" [label=""];
  "sha256:1f6afcacea8dea3081a16879738c38276a95ba810b124f051b9d9c3dab90f2c9" -> "sha256:c8996e20e05cea8c21df5c052768b4d7cc3b0a57d6dd7ab0ff8ea7f65d1669bb" [label=""];
  "sha256:c8996e20e05cea8c21df5c052768b4d7cc3b0a57d6dd7ab0ff8ea7f65d1669bb" -> "sha256:9a12d15cf70ad6280d57f4fecee838e2ec87ec5d2ce1de221b1e4f2cffe3e154" [label=""];
  "sha256:1f6afcacea8dea3081a16879738c38276a95ba810b124f051b9d9c3dab90f2c9" -> "sha256:9a12d15cf70ad6280d57f4fecee838e2ec87ec5d2ce1de221b1e4f2cffe3e154" [label=""];
  "sha256:9a12d15cf70ad6280d57f4fecee838e2ec87ec5d2ce1de221b1e4f2cffe3e154" -> "sha256:da2f80263f1bfa59028955252d85a3c202c8e397d0bd187cf2b6337ddd5e4d70" [label=""];
  "sha256:da2f80263f1bfa59028955252d85a3c202c8e397d0bd187cf2b6337ddd5e4d70" -> "sha256:2bb8ecee0ceadec4869f54c138ad9af466cfd454d3d5f983bb34d02741671d36" [label=""];
  "sha256:1f6afcacea8dea3081a16879738c38276a95ba810b124f051b9d9c3dab90f2c9" -> "sha256:2bb8ecee0ceadec4869f54c138ad9af466cfd454d3d5f983bb34d02741671d36" [label=""];
  "sha256:2bb8ecee0ceadec4869f54c138ad9af466cfd454d3d5f983bb34d02741671d36" -> "sha256:26d7ff78e451623662fda16db630bd2dac2d0c8bb0d11cd14c1f302eeebe26a1" [label=""];
  "sha256:1f6afcacea8dea3081a16879738c38276a95ba810b124f051b9d9c3dab90f2c9" -> "sha256:26d7ff78e451623662fda16db630bd2dac2d0c8bb0d11cd14c1f302eeebe26a1" [label=""];
  "sha256:26d7ff78e451623662fda16db630bd2dac2d0c8bb0d11cd14c1f302eeebe26a1" -> "sha256:97fc66d7744e43fa7484308d4fdab1a8dac79412c7996f74d58fc4f947ee2844" [label=""];
}

