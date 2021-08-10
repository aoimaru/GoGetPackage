[app/sources/285100301.Dockerfile]
digraph {
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04" shape="ellipse"];
  "sha256:6d88a10a789a3ac0eee74aff1f01f40f85f36e6be1f4372f6a7f628887fc2521" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         numactl         build-essential         cmake         git         libgflags-dev         libgoogle-glog-dev         libgtest-dev         libiomp-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libopenmpi-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-pip         wget         ca-certificates &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f8abaf08051e9d0c78debdaa2e1571b7d129944ddcc6f33ecb6c5421e9bb654a" [label="/bin/sh -c pip install --no-cache-dir --upgrade pip" shape="box"];
  "sha256:6c93eb60e40c3df90c4d4b7fbf64acaa780bcfc78b2831520e694e5941fb726f" [label="/bin/sh -c pip install --no-cache-dir --upgrade setuptools wheel  &&     pip install --no-cache-dir         flask         future         graphviz         hypothesis         jupyter         matplotlib         numpy         protobuf         pydot         python-nvd3         pyyaml         requests         scikit-image         scipy         setuptools         six         tornado" shape="box"];
  "sha256:bc1b1225ec9769810a4f3cb84b6aab68e2e9c1c93480443e50f3c063fe7031b6" [label="/bin/sh -c cd / &&     git clone https://github.com/caffe2/caffe2.git && cd caffe2 &&     git reset --hard $version &&     sed -i 's/RLovelett\\/eigen/eigenteam\\/eigen-git-mirror/g' .gitmodules &&     git submodule update --init --recursive &&     mkdir ./build && cd ./build &&     cmake -DUSE_CUDA=ON          -DUSE_NCCL=ON          -DBUILD_TEST=OFF          -DUSE_OPENMP=ON          -DUSE_REDIS=ON          -DCMAKE_INSTALL_PREFIX=$CAFFE2_ROOT .. &&     make -j\"$(nproc)\" && make install &&     cd ../../ && rm -rf ./caffe2" shape="box"];
  "sha256:4735e048abc1f59a417e7cdd4ae0ba6c34469b0789f0e5b6ffae147b8fabdb32" [label="/bin/sh -c echo \"$CAFFE2_ROOT/lib\" >> /etc/ld.so.conf.d/caffe2.conf &&     ldconfig" shape="box"];
  "sha256:4748c4a914f25a56bfe96d835e6260e4a2a9cebd36d3597a08bbfb5d3163eb78" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:ea6ff1375b1d6dd5b97b4e200ef9ccd46b38e8e396467c16c6992b1f9a3c75d5" [label="sha256:ea6ff1375b1d6dd5b97b4e200ef9ccd46b38e8e396467c16c6992b1f9a3c75d5" shape="plaintext"];
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" -> "sha256:6d88a10a789a3ac0eee74aff1f01f40f85f36e6be1f4372f6a7f628887fc2521" [label=""];
  "sha256:6d88a10a789a3ac0eee74aff1f01f40f85f36e6be1f4372f6a7f628887fc2521" -> "sha256:f8abaf08051e9d0c78debdaa2e1571b7d129944ddcc6f33ecb6c5421e9bb654a" [label=""];
  "sha256:f8abaf08051e9d0c78debdaa2e1571b7d129944ddcc6f33ecb6c5421e9bb654a" -> "sha256:6c93eb60e40c3df90c4d4b7fbf64acaa780bcfc78b2831520e694e5941fb726f" [label=""];
  "sha256:6c93eb60e40c3df90c4d4b7fbf64acaa780bcfc78b2831520e694e5941fb726f" -> "sha256:bc1b1225ec9769810a4f3cb84b6aab68e2e9c1c93480443e50f3c063fe7031b6" [label=""];
  "sha256:bc1b1225ec9769810a4f3cb84b6aab68e2e9c1c93480443e50f3c063fe7031b6" -> "sha256:4735e048abc1f59a417e7cdd4ae0ba6c34469b0789f0e5b6ffae147b8fabdb32" [label=""];
  "sha256:4735e048abc1f59a417e7cdd4ae0ba6c34469b0789f0e5b6ffae147b8fabdb32" -> "sha256:4748c4a914f25a56bfe96d835e6260e4a2a9cebd36d3597a08bbfb5d3163eb78" [label=""];
  "sha256:4748c4a914f25a56bfe96d835e6260e4a2a9cebd36d3597a08bbfb5d3163eb78" -> "sha256:ea6ff1375b1d6dd5b97b4e200ef9ccd46b38e8e396467c16c6992b1f9a3c75d5" [label=""];
}

