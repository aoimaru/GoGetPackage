[app/sources/278780689.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:f4d714b6f31433527eca38f99d3efc83192e986ba1f43d02e778cc4e7f0441f1" [label="/bin/sh -c apt-get -qq update && apt-get -qq dist-upgrade && apt-get install -qq -y --no-install-recommends     git     openssh-client     ca-certificates     locales     sudo     curl     build-essential     pkg-config     libgl1-mesa-dev     libsm6     libice6     libxext6     libxrender1     libfontconfig1     libdbus-1-3     cmake     libfreeimage3     libfreeimage-dev     libgflags-dev     python-dev     libgoogle-glog-dev     freeglut3-dev     && apt-get -qq clean" shape="box"];
  "sha256:ab6aa59770caca6e1766ee57fea7d10ac31679bc76e9ed87a380dd3d2e18f704" [label="local://context" shape="ellipse"];
  "sha256:5cf0e06b8a27348813baa7ab347fedaf4924f0deaea75491ba736790c84d6a1e" [label="copy{src=/extract-qt-installer.sh, dest=/tmp/qt/}" shape="note"];
  "sha256:7b5ed1b43a301787ee6887a225a192d36e8de00585292f41678fa553c49a5e59" [label="/bin/sh -c curl -Lo /tmp/qt/installer.run 'http://download.qt-project.org/official_releases/qt/5.9/5.9.1/qt-opensource-linux-x64-5.9.1.run'     && QT_CI_PACKAGES=qt.591.gcc_64 /tmp/qt/extract-qt-installer.sh /tmp/qt/installer.run \"$QT_PATH\"     && find \"$QT_PATH\" -mindepth 1 -maxdepth 1 ! -name '5.*' -exec echo 'Cleaning Qt SDK: {}' \\; -exec rm -r '{}' \\;     && rm -rf /tmp/qt" shape="box"];
  "sha256:a3733ab99693075addec8aa4efc3e24fc66cf795e5e80712d6666906b72818bd" [label="/bin/sh -c locale-gen en_US.UTF-8 && dpkg-reconfigure locales" shape="box"];
  "sha256:88cd856f1933bd7a687aa4d7ac08d0488f350349a5aad5a3dbb51b74998d3c21" [label="sha256:88cd856f1933bd7a687aa4d7ac08d0488f350349a5aad5a3dbb51b74998d3c21" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:f4d714b6f31433527eca38f99d3efc83192e986ba1f43d02e778cc4e7f0441f1" [label=""];
  "sha256:f4d714b6f31433527eca38f99d3efc83192e986ba1f43d02e778cc4e7f0441f1" -> "sha256:5cf0e06b8a27348813baa7ab347fedaf4924f0deaea75491ba736790c84d6a1e" [label=""];
  "sha256:ab6aa59770caca6e1766ee57fea7d10ac31679bc76e9ed87a380dd3d2e18f704" -> "sha256:5cf0e06b8a27348813baa7ab347fedaf4924f0deaea75491ba736790c84d6a1e" [label=""];
  "sha256:5cf0e06b8a27348813baa7ab347fedaf4924f0deaea75491ba736790c84d6a1e" -> "sha256:7b5ed1b43a301787ee6887a225a192d36e8de00585292f41678fa553c49a5e59" [label=""];
  "sha256:7b5ed1b43a301787ee6887a225a192d36e8de00585292f41678fa553c49a5e59" -> "sha256:a3733ab99693075addec8aa4efc3e24fc66cf795e5e80712d6666906b72818bd" [label=""];
  "sha256:a3733ab99693075addec8aa4efc3e24fc66cf795e5e80712d6666906b72818bd" -> "sha256:88cd856f1933bd7a687aa4d7ac08d0488f350349a5aad5a3dbb51b74998d3c21" [label=""];
}

