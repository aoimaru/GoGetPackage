[app/sources/289261012.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:3aae079d40be61fd6993deb17354166664b05654591ecc31ae07ab02f0313944" [label="/bin/sh -c apt-get update && apt-get install -y wget ca-certificates     build-essential cmake pkg-config     libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev     libavcodec-dev libavformat-dev libswscale-dev libv4l-dev     libxvidcore-dev libx264-dev     libgtk-3-dev     libatlas-base-dev gfortran     git curl vim python3-dev python3-pip     libfreetype6-dev libhdf5-dev &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:29986795dec4e3165e1fb7e7b3832114b4ca964d0bf89b73403817bf6f36369d" [label="/bin/sh -c wget -O opencv.tar.gz https://github.com/opencv/opencv/archive/3.3.1.tar.gz &&     tar zxvf opencv.tar.gz &&     wget -O opencv_contrib.tar.gz https://github.com/opencv/opencv_contrib/archive/3.3.1.tar.gz &&     tar zxvf opencv_contrib.tar.gz" shape="box"];
  "sha256:c74164d2bf147f2aea4c5c71deae4c52f84005f7d42ed6fc382b60a1b2c6b416" [label="/bin/sh -c cd opencv-3.3.1 &&     mkdir build &&     cd build &&     cmake -D CMAKE_BUILD_TYPE=RELEASE         -D CMAKE_INSTALL_PREFIX=/usr/local         -D INSTALL_PYTHON_EXAMPLES=ON         -D INSTALL_C_EXAMPLES=OFF         -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-3.3.1/modules         -D BUILD_EXAMPLES=ON .. &&     make -j4 &&     make install &&     ldconfig &&     cd / && rm -Rf /opencv-3.3.1 /opencv_contrib-3.3.1" shape="box"];
  "sha256:ee18ec1c9cecdd5acc176ec7f5f9bb2dbf6f255eedb457f8cc46a14079823d6e" [label="/bin/sh -c pip3 install tensorflow &&     pip3 install numpy pandas sklearn matplotlib seaborn jupyter pyyaml h5py &&     pip3 install keras --no-deps &&     pip3 install opencv-python &&     pip3 install imutils" shape="box"];
  "sha256:ef54e77ea1c4f8a33fee622207b2d2e99a86bf25707dc36d1bbf55cbaf109627" [label="mkdir notebooks" shape="box"];
  "sha256:0ef578b43fb16e87e74e4d12037d1142e76b53d6bc6837b31d08494d0ae5c7d6" [label="local://context" shape="ellipse"];
  "sha256:0b8e34533c59e31d09d8dc620c78c2a9e57657edf995bcdd69c205211542b005" [label="copy{src=/conf/.jupyter, dest=/root/.jupyter}" shape="note"];
  "sha256:777d1192db930dbe69e9a834ebfbef9c4fc5c830ad5d83762af43e58dbb45d5f" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:e1a83e23c7a1fa80c7218665728c748225d90c07d75d40be8ac9ea61eefa4225" [label="sha256:e1a83e23c7a1fa80c7218665728c748225d90c07d75d40be8ac9ea61eefa4225" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:3aae079d40be61fd6993deb17354166664b05654591ecc31ae07ab02f0313944" [label=""];
  "sha256:3aae079d40be61fd6993deb17354166664b05654591ecc31ae07ab02f0313944" -> "sha256:29986795dec4e3165e1fb7e7b3832114b4ca964d0bf89b73403817bf6f36369d" [label=""];
  "sha256:29986795dec4e3165e1fb7e7b3832114b4ca964d0bf89b73403817bf6f36369d" -> "sha256:c74164d2bf147f2aea4c5c71deae4c52f84005f7d42ed6fc382b60a1b2c6b416" [label=""];
  "sha256:c74164d2bf147f2aea4c5c71deae4c52f84005f7d42ed6fc382b60a1b2c6b416" -> "sha256:ee18ec1c9cecdd5acc176ec7f5f9bb2dbf6f255eedb457f8cc46a14079823d6e" [label=""];
  "sha256:ee18ec1c9cecdd5acc176ec7f5f9bb2dbf6f255eedb457f8cc46a14079823d6e" -> "sha256:ef54e77ea1c4f8a33fee622207b2d2e99a86bf25707dc36d1bbf55cbaf109627" [label=""];
  "sha256:ef54e77ea1c4f8a33fee622207b2d2e99a86bf25707dc36d1bbf55cbaf109627" -> "sha256:0b8e34533c59e31d09d8dc620c78c2a9e57657edf995bcdd69c205211542b005" [label=""];
  "sha256:0ef578b43fb16e87e74e4d12037d1142e76b53d6bc6837b31d08494d0ae5c7d6" -> "sha256:0b8e34533c59e31d09d8dc620c78c2a9e57657edf995bcdd69c205211542b005" [label=""];
  "sha256:0b8e34533c59e31d09d8dc620c78c2a9e57657edf995bcdd69c205211542b005" -> "sha256:777d1192db930dbe69e9a834ebfbef9c4fc5c830ad5d83762af43e58dbb45d5f" [label=""];
  "sha256:0ef578b43fb16e87e74e4d12037d1142e76b53d6bc6837b31d08494d0ae5c7d6" -> "sha256:777d1192db930dbe69e9a834ebfbef9c4fc5c830ad5d83762af43e58dbb45d5f" [label=""];
  "sha256:777d1192db930dbe69e9a834ebfbef9c4fc5c830ad5d83762af43e58dbb45d5f" -> "sha256:e1a83e23c7a1fa80c7218665728c748225d90c07d75d40be8ac9ea61eefa4225" [label=""];
}

