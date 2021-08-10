[app/sources/264909028.Dockerfile]
digraph {
  "sha256:01487ad1b36263eb3749a1a0f53484e07e603ca47b697ec4d55f128fc47b44ad" [label="docker-image://docker.io/armv7/armhf-ubuntu:16.04" shape="ellipse"];
  "sha256:25beef29c781db7340f244cf6159908b4f369d88a770be396c25f8205491868e" [label="local://context" shape="ellipse"];
  "sha256:8649a81c52d462c765510f2198c6654f1c6ec3e3dbe428255542416b58316c6f" [label="copy{src=/docker/qemu-arm-static, dest=/usr/bin/qemu-arm-static}" shape="note"];
  "sha256:f05e62736fd030e4e8cb65e263fe62c7dcefbb31c2a6db9f4dcdcfa36a6baf26" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:8d895eaeb39e5d1cf35a3f0463a5ddd6894793c57221aef411c5a408cb58ddd8" [label="/bin/sh -c apt-get -y update &&     apt-get -y install git wget htop                        nano python-dev python3-dev python-pip                        pkg-config apt-utils" shape="box"];
  "sha256:3c2714e25395cf031ed4fc0332d61d223a47b7200161004935b7eb8894ada39c" [label="/bin/sh -c apt-get -y install cmake build-essential arduino-mk zlib1g-dev               libsm6 libxext6 libfontconfig1 libxrender1 libglib2.0-0               libpng12-dev libfreetype6-dev               libtiff5-dev libjasper-dev libpng12-dev               libjpeg-dev libavcodec-dev libavformat-dev               libswscale-dev libv4l-dev libgtk2.0-dev               libatlas-base-dev gfortran               libsdl-image1.2-dev libsdl-mixer1.2-dev libsdl-ttf2.0-dev libsmpeg-dev               libsdl1.2-dev libportmidi-dev libswscale-dev libavformat-dev libavcodec-dev libfreetype6-dev               libzmq3-dev libopenblas-dev libeigen3-dev libffi-dev" shape="box"];
  "sha256:fe57b92f78527e5c5914f068eaa64e36a80854af9510faea56d5e04df908409a" [label="/bin/sh -c pip install virtualenv &&     virtualenv $VENV --python=python3 &&     . $VENV/bin/activate &&     pip install --upgrade pip &&     pip install enum34==1.1.6 &&     pip install numpy==1.14.4 &&     pip install pytest==3.4.2 &&     pip install pytest-cov==2.5.1 &&     pip install pyserial==3.4 &&     pip install pyzmq==16.0.2 &&     pip install robust-serial==0.1 &&     pip install six==1.11.0 &&     pip install tqdm==4.19.5 &&     pip install ipython &&     pip install matplotlib &&     pip install pyyaml setuptools cffi typing &&     pip install scipy==0.19.1 &&     pip install scikit-learn==0.19.0 &&     pip install pygame==1.9.3" shape="box"];
  "sha256:af375049b77f15267cc7052d0bc803bfa360b3d904e90d45d12f88f82ecb9112" [label="/bin/sh -c apt-get -y install unzip" shape="box"];
  "sha256:7296577cef02204ec4a319c343dcce73c1471089b1651ca54732269e1a329161" [label="/bin/sh -c wget https://github.com/opencv/opencv/archive/3.4.3.zip &&     unzip 3.4.3.zip &&     rm 3.4.3.zip" shape="box"];
  "sha256:b1db9cb6dc96d50f94bc7d6e3568978cd6a0aebc0ccd88e328cb09dd67b6b66f" [label="/bin/sh -c . $VENV/bin/activate &&     cd $OPENCV_DIR &&     mkdir build &&     cd build &&     cmake -D CMAKE_BUILD_TYPE=RELEASE     -D CMAKE_INSTALL_PREFIX=/usr/local     -D INSTALL_PYTHON_EXAMPLES=ON     -D BUILD_EXAMPLES=ON     -D WITH_CUDA=OFF     -D BUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF     -D BUILD_opencv_java=OFF     -D WITH_EIGEN=ON .." shape="box"];
  "sha256:975c3ae86f94e2fded217d7ccf230b81840cdc51999559f1f4af3a257fdb2c1c" [label="/bin/sh -c . $VENV/bin/activate &&     cd $OPENCV_DIR/build/ &&     make -j8 &&     make install &&     ldconfig" shape="box"];
  "sha256:081e906f88cfd1c2667f728ed90a578a9dbd37318710fa6390dc9dc6c23bd507" [label="/bin/sh -c cp /usr/local/lib/python3.5/site-packages/cv2.cpython-35m-arm-linux-gnueabihf.so     $VENV/lib/python3.5/site-packages/cv2.so" shape="box"];
  "sha256:3b50f9b33cf5ee7861c799933247cfe71abff433231bde0218f5c4c6db5ef94d" [label="/bin/sh -c git clone --recursive https://github.com/pytorch/pytorch" shape="box"];
  "sha256:7cf8dc8970e4458bd2c6a8a86bc4b538e58c4fcd7fa2204ae9ed8aaeeb455da4" [label="/bin/sh -c . $VENV/bin/activate &&     cd pytorch &&     MAX_JOBS=8 NO_DISTRIBUTED=1 NO_CAFFE2_OPS=1 NO_CUDA=1 python setup.py install" shape="box"];
  "sha256:19588cd4752f97cadab17d719023df03eada8ae46ccce8ef60cb2054ba4af64c" [label="/bin/sh -c apt-get clean &&     rm -rf /var/lib/apt/lists/* &&     rm -rf pytorch &&     rm -rf $OPENCV_DIR" shape="box"];
  "sha256:b3b4f1d5dac626fa8e12f0b9746f2491f6dc80a4c750c9c24c665d2ce6164e34" [label="copy{src=/docker/entrypoint.sh, dest=/}" shape="note"];
  "sha256:04113c068283ac5a869d4d8804c2dde55df2919ea54410b1d0088a3dd6b3043d" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:0376decb0617a941511661da99b2327d628fa682848ab81e55232ca301edb7c0" [label="sha256:0376decb0617a941511661da99b2327d628fa682848ab81e55232ca301edb7c0" shape="plaintext"];
  "sha256:01487ad1b36263eb3749a1a0f53484e07e603ca47b697ec4d55f128fc47b44ad" -> "sha256:8649a81c52d462c765510f2198c6654f1c6ec3e3dbe428255542416b58316c6f" [label=""];
  "sha256:25beef29c781db7340f244cf6159908b4f369d88a770be396c25f8205491868e" -> "sha256:8649a81c52d462c765510f2198c6654f1c6ec3e3dbe428255542416b58316c6f" [label=""];
  "sha256:8649a81c52d462c765510f2198c6654f1c6ec3e3dbe428255542416b58316c6f" -> "sha256:f05e62736fd030e4e8cb65e263fe62c7dcefbb31c2a6db9f4dcdcfa36a6baf26" [label=""];
  "sha256:f05e62736fd030e4e8cb65e263fe62c7dcefbb31c2a6db9f4dcdcfa36a6baf26" -> "sha256:8d895eaeb39e5d1cf35a3f0463a5ddd6894793c57221aef411c5a408cb58ddd8" [label=""];
  "sha256:8d895eaeb39e5d1cf35a3f0463a5ddd6894793c57221aef411c5a408cb58ddd8" -> "sha256:3c2714e25395cf031ed4fc0332d61d223a47b7200161004935b7eb8894ada39c" [label=""];
  "sha256:3c2714e25395cf031ed4fc0332d61d223a47b7200161004935b7eb8894ada39c" -> "sha256:fe57b92f78527e5c5914f068eaa64e36a80854af9510faea56d5e04df908409a" [label=""];
  "sha256:fe57b92f78527e5c5914f068eaa64e36a80854af9510faea56d5e04df908409a" -> "sha256:af375049b77f15267cc7052d0bc803bfa360b3d904e90d45d12f88f82ecb9112" [label=""];
  "sha256:af375049b77f15267cc7052d0bc803bfa360b3d904e90d45d12f88f82ecb9112" -> "sha256:7296577cef02204ec4a319c343dcce73c1471089b1651ca54732269e1a329161" [label=""];
  "sha256:7296577cef02204ec4a319c343dcce73c1471089b1651ca54732269e1a329161" -> "sha256:b1db9cb6dc96d50f94bc7d6e3568978cd6a0aebc0ccd88e328cb09dd67b6b66f" [label=""];
  "sha256:b1db9cb6dc96d50f94bc7d6e3568978cd6a0aebc0ccd88e328cb09dd67b6b66f" -> "sha256:975c3ae86f94e2fded217d7ccf230b81840cdc51999559f1f4af3a257fdb2c1c" [label=""];
  "sha256:975c3ae86f94e2fded217d7ccf230b81840cdc51999559f1f4af3a257fdb2c1c" -> "sha256:081e906f88cfd1c2667f728ed90a578a9dbd37318710fa6390dc9dc6c23bd507" [label=""];
  "sha256:081e906f88cfd1c2667f728ed90a578a9dbd37318710fa6390dc9dc6c23bd507" -> "sha256:3b50f9b33cf5ee7861c799933247cfe71abff433231bde0218f5c4c6db5ef94d" [label=""];
  "sha256:3b50f9b33cf5ee7861c799933247cfe71abff433231bde0218f5c4c6db5ef94d" -> "sha256:7cf8dc8970e4458bd2c6a8a86bc4b538e58c4fcd7fa2204ae9ed8aaeeb455da4" [label=""];
  "sha256:7cf8dc8970e4458bd2c6a8a86bc4b538e58c4fcd7fa2204ae9ed8aaeeb455da4" -> "sha256:19588cd4752f97cadab17d719023df03eada8ae46ccce8ef60cb2054ba4af64c" [label=""];
  "sha256:19588cd4752f97cadab17d719023df03eada8ae46ccce8ef60cb2054ba4af64c" -> "sha256:b3b4f1d5dac626fa8e12f0b9746f2491f6dc80a4c750c9c24c665d2ce6164e34" [label=""];
  "sha256:25beef29c781db7340f244cf6159908b4f369d88a770be396c25f8205491868e" -> "sha256:b3b4f1d5dac626fa8e12f0b9746f2491f6dc80a4c750c9c24c665d2ce6164e34" [label=""];
  "sha256:b3b4f1d5dac626fa8e12f0b9746f2491f6dc80a4c750c9c24c665d2ce6164e34" -> "sha256:04113c068283ac5a869d4d8804c2dde55df2919ea54410b1d0088a3dd6b3043d" [label=""];
  "sha256:04113c068283ac5a869d4d8804c2dde55df2919ea54410b1d0088a3dd6b3043d" -> "sha256:0376decb0617a941511661da99b2327d628fa682848ab81e55232ca301edb7c0" [label=""];
}

