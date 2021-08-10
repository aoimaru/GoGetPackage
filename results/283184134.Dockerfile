[app/sources/283184134.Dockerfile]
digraph {
  "sha256:9850ce801f494e9c05448a3f79d79420fb055f171850bdfccec71d5c66e05a89" [label="docker-image://docker.io/caffe2ai/caffe2:c2v0.8.1.cpu.min.ubuntu16.04" shape="ellipse"];
  "sha256:149b043ae2f89011dd54a45be509e8f7ed3977465a585d7e4f2be3e39ead669b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     libgflags-dev     libgflags-dev     libgtest-dev     libiomp-dev     libleveldb-dev     liblmdb-dev     libopencv-dev     libopenmpi-dev     libsnappy-dev     openmpi-bin     openmpi-doc     python-numpy     python-pydot     python-setuptools     python-scipy     wget     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b8db306e8462b085f3ad9bc70769bdb0d5eef6fce13cf4a47a7298d08c394547" [label="/bin/sh -c pip install --no-cache-dir     flask     graphviz     jupyter     matplotlib     pydot     python-nvd3     pyyaml     requests     scikit-image     scipy     setuptools     tornado" shape="box"];
  "sha256:944a6799f03eb9b7c8d129d0b6028c6aac23c9d9e471cf237c4c2865873162d5" [label="/bin/sh -c cd caffe2 && mkdir build && cd build     && cmake ..     -DUSE_CUDA=OFF     -DUSE_NNPACK=OFF     -DUSE_ROCKSDB=OFF     && make -j\"$(nproc)\" install     && ldconfig     && make clean     && cd ..     && rm -rf build" shape="box"];
  "sha256:65ebb9722d80c1eadc822a3d70b1ef2f33c7254e073275d2d67b7f6d1b9e7f4b" [label="sha256:65ebb9722d80c1eadc822a3d70b1ef2f33c7254e073275d2d67b7f6d1b9e7f4b" shape="plaintext"];
  "sha256:9850ce801f494e9c05448a3f79d79420fb055f171850bdfccec71d5c66e05a89" -> "sha256:149b043ae2f89011dd54a45be509e8f7ed3977465a585d7e4f2be3e39ead669b" [label=""];
  "sha256:149b043ae2f89011dd54a45be509e8f7ed3977465a585d7e4f2be3e39ead669b" -> "sha256:b8db306e8462b085f3ad9bc70769bdb0d5eef6fce13cf4a47a7298d08c394547" [label=""];
  "sha256:b8db306e8462b085f3ad9bc70769bdb0d5eef6fce13cf4a47a7298d08c394547" -> "sha256:944a6799f03eb9b7c8d129d0b6028c6aac23c9d9e471cf237c4c2865873162d5" [label=""];
  "sha256:944a6799f03eb9b7c8d129d0b6028c6aac23c9d9e471cf237c4c2865873162d5" -> "sha256:65ebb9722d80c1eadc822a3d70b1ef2f33c7254e073275d2d67b7f6d1b9e7f4b" [label=""];
}

