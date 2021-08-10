[app/sources/278516220.Dockerfile]
digraph {
  "sha256:dbf8ba8bbaa152bfa8352d8df6fc3180c897957dfce1e59ab6d13ea27e3caaa8" [label="docker-image://docker.io/tensorflow/tensorflow:1.2.1-gpu-py3" shape="ellipse"];
  "sha256:6aae09237701fd92ca8ce2302ad534cf2e76d74910bb7e5b8bda49f829562ff1" [label="/bin/sh -c sed -i \"s/jessie main/jessie main contrib non-free/\" /etc/apt/sources.list" shape="box"];
  "sha256:64cc3ace9ee7030a0761bdf00b3432bab695efcb1cc0b06774a227d128bd7ad4" [label="/bin/sh -c echo \"deb http://http.debian.net/debian jessie-backports main contrib non-free\" >> /etc/apt/sources.list" shape="box"];
  "sha256:3780f7f7a6969c65826f04ab523b8d86eaeadebcd60956f1c9a36d722a180f97" [label="/bin/sh -c gpg --keyserver pgpkeys.mit.edu --recv-key 7638D0442B90D010" shape="box"];
  "sha256:4a9048a687aa5f6234c13104a7c585d9e6c02c07ea61dda64b6237f46121574b" [label="/bin/sh -c gpg -a --export 7638D0442B90D010 | apt-key add -" shape="box"];
  "sha256:838c77b9df02206d1ae12066b6997ddfc7640d3797dde8fec03e75819529bf61" [label="/bin/sh -c apt-get update &&     apt-get install -y         build-essential         cmake         ffmpeg         gfortran         git         libatlas-base-dev         libavcodec-dev         libavformat-dev         libcanberra-gtk-module         libgtk2.0-dev         libjasper-dev         libjpeg-dev         libpng-dev         libpng12-dev         libpq-dev         libswscale-dev         libtbb-dev         libtbb2         libtiff-dev         libtiff5-dev         libv4l-dev         libx264-dev         libxvidcore-dev         pkg-config         python2.7-dev         python3.5-dev         python-pip         unzip         wget         yasm     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4a6a713b5f526f8e60e27481bf1670545df76f484a8c1a98bae1280131613ace" [label="/bin/sh -c pip3 install numpy" shape="box"];
  "sha256:b7928031adc24179705f59ba617073bb6cd5465fb9c46d3f71037294dac4f382" [label="/bin/sh -c pip2 install numpy" shape="box"];
  "sha256:09e8d77728bfa937babdda68a37dfa6adb05e7f88ba772d6ab23b27736c5fd89" [label="/bin/sh -c wget https://github.com/opencv/opencv_contrib/archive/3.2.0.zip && unzip 3.2.0.zip && rm 3.2.0.zip" shape="box"];
  "sha256:5f04456c11a6b296dc5902e236b6053b5496ec0f8c1b74ca90f56daccab88a89" [label="/bin/sh -c wget https://github.com/Itseez/opencv/archive/3.2.0.zip && unzip 3.2.0.zip && mkdir /opencv-3.2.0/cmake_binary && cd /opencv-3.2.0/cmake_binary && cmake -DBUILD_TIFF=ON   -DBUILD_opencv_java=OFF   -DOPENCV_EXTRA_MODULES_PATH=/opencv_contrib-3.2.0/modules   -DWITH_CUDA=OFF   -DENABLE_AVX=ON   -DWITH_OPENGL=ON   -DWITH_OPENCL=ON   -DWITH_IPP=ON   -DWITH_TBB=ON   -DWITH_EIGEN=ON   -DWITH_V4L=ON   -DBUILD_TESTS=OFF   -DBUILD_PERF_TESTS=OFF   -DCMAKE_BUILD_TYPE=RELEASE   -DCMAKE_INSTALL_PREFIX=$(python3 -c \"import sys; print(sys.prefix)\")   -DPYTHON_EXECUTABLE=$(which python3)   -DPYTHON3_INCLUDE_DIR=$(python3 -c \"from distutils.sysconfig import get_python_inc; print(get_python_inc())\")   -DPYTHON_PACKAGES_PATH=$(python3 -c \"from distutils.sysconfig import get_python_lib; print(get_python_lib())\") .. && make install && rm /3.2.0.zip && rm -r /opencv-3.2.0 && rm -r /opencv_contrib-3.2.0" shape="box"];
  "sha256:671f3683cf654234be04eb06e0cf8f7007352ea07db2551eb590ec0f73c5d8c0" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:6b36e7742f0f3a95c5969af94ed581c8bb33a0c8e121681826e72a2a92fb9e7d" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:a782f1072e4e67d24a69eb2f06ad1db78470045d52279dfb991fc7343f351204" [label="local://context" shape="ellipse"];
  "sha256:ac5d2bbce269e074f95e528b8437e4d0a85f74ca6d0d267d564afdd3fd533919" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:ad4a7b315c88b5e5487fa8ea3da83aab29a6edc10bb0856881c39696c095dccb" [label="/bin/sh -c pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:074c58f8cd46e1c719dc2b9aac44eaad55729527f146c003741d620dca13805b" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:533e6f8ad8323db87036677c6d0346d936454df40a441d200ce44e0c529f2fb1" [label="sha256:533e6f8ad8323db87036677c6d0346d936454df40a441d200ce44e0c529f2fb1" shape="plaintext"];
  "sha256:dbf8ba8bbaa152bfa8352d8df6fc3180c897957dfce1e59ab6d13ea27e3caaa8" -> "sha256:6aae09237701fd92ca8ce2302ad534cf2e76d74910bb7e5b8bda49f829562ff1" [label=""];
  "sha256:6aae09237701fd92ca8ce2302ad534cf2e76d74910bb7e5b8bda49f829562ff1" -> "sha256:64cc3ace9ee7030a0761bdf00b3432bab695efcb1cc0b06774a227d128bd7ad4" [label=""];
  "sha256:64cc3ace9ee7030a0761bdf00b3432bab695efcb1cc0b06774a227d128bd7ad4" -> "sha256:3780f7f7a6969c65826f04ab523b8d86eaeadebcd60956f1c9a36d722a180f97" [label=""];
  "sha256:3780f7f7a6969c65826f04ab523b8d86eaeadebcd60956f1c9a36d722a180f97" -> "sha256:4a9048a687aa5f6234c13104a7c585d9e6c02c07ea61dda64b6237f46121574b" [label=""];
  "sha256:4a9048a687aa5f6234c13104a7c585d9e6c02c07ea61dda64b6237f46121574b" -> "sha256:838c77b9df02206d1ae12066b6997ddfc7640d3797dde8fec03e75819529bf61" [label=""];
  "sha256:838c77b9df02206d1ae12066b6997ddfc7640d3797dde8fec03e75819529bf61" -> "sha256:4a6a713b5f526f8e60e27481bf1670545df76f484a8c1a98bae1280131613ace" [label=""];
  "sha256:4a6a713b5f526f8e60e27481bf1670545df76f484a8c1a98bae1280131613ace" -> "sha256:b7928031adc24179705f59ba617073bb6cd5465fb9c46d3f71037294dac4f382" [label=""];
  "sha256:b7928031adc24179705f59ba617073bb6cd5465fb9c46d3f71037294dac4f382" -> "sha256:09e8d77728bfa937babdda68a37dfa6adb05e7f88ba772d6ab23b27736c5fd89" [label=""];
  "sha256:09e8d77728bfa937babdda68a37dfa6adb05e7f88ba772d6ab23b27736c5fd89" -> "sha256:5f04456c11a6b296dc5902e236b6053b5496ec0f8c1b74ca90f56daccab88a89" [label=""];
  "sha256:5f04456c11a6b296dc5902e236b6053b5496ec0f8c1b74ca90f56daccab88a89" -> "sha256:671f3683cf654234be04eb06e0cf8f7007352ea07db2551eb590ec0f73c5d8c0" [label=""];
  "sha256:671f3683cf654234be04eb06e0cf8f7007352ea07db2551eb590ec0f73c5d8c0" -> "sha256:6b36e7742f0f3a95c5969af94ed581c8bb33a0c8e121681826e72a2a92fb9e7d" [label=""];
  "sha256:6b36e7742f0f3a95c5969af94ed581c8bb33a0c8e121681826e72a2a92fb9e7d" -> "sha256:ac5d2bbce269e074f95e528b8437e4d0a85f74ca6d0d267d564afdd3fd533919" [label=""];
  "sha256:a782f1072e4e67d24a69eb2f06ad1db78470045d52279dfb991fc7343f351204" -> "sha256:ac5d2bbce269e074f95e528b8437e4d0a85f74ca6d0d267d564afdd3fd533919" [label=""];
  "sha256:ac5d2bbce269e074f95e528b8437e4d0a85f74ca6d0d267d564afdd3fd533919" -> "sha256:ad4a7b315c88b5e5487fa8ea3da83aab29a6edc10bb0856881c39696c095dccb" [label=""];
  "sha256:ad4a7b315c88b5e5487fa8ea3da83aab29a6edc10bb0856881c39696c095dccb" -> "sha256:074c58f8cd46e1c719dc2b9aac44eaad55729527f146c003741d620dca13805b" [label=""];
  "sha256:a782f1072e4e67d24a69eb2f06ad1db78470045d52279dfb991fc7343f351204" -> "sha256:074c58f8cd46e1c719dc2b9aac44eaad55729527f146c003741d620dca13805b" [label=""];
  "sha256:074c58f8cd46e1c719dc2b9aac44eaad55729527f146c003741d620dca13805b" -> "sha256:533e6f8ad8323db87036677c6d0346d936454df40a441d200ce44e0c529f2fb1" [label=""];
}

