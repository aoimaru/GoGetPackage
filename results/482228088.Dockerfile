[app/sources/482228088.Dockerfile]
digraph {
  "sha256:9850ce801f494e9c05448a3f79d79420fb055f171850bdfccec71d5c66e05a89" [label="docker-image://docker.io/caffe2ai/caffe2:c2v0.8.1.cpu.min.ubuntu16.04" shape="ellipse"];
  "sha256:53f2b763d6351858314f9153e37d003b0b24d15a02b7e0841b2974f82c622a41" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     libgflags-dev     libgtest-dev     libiomp-dev     libleveldb-dev     liblmdb-dev     libopencv-dev     libopenmpi-dev     libsnappy-dev     openmpi-bin     openmpi-doc     python-numpy     python-pydot     python-setuptools     python-scipy     wget     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d4e7c0c3c691b430963a1ca401f08ed0fde68b0592760a8707ffb47120c47aec" [label="/bin/sh -c pip install --no-cache-dir     flask     graphviz     jupyter     matplotlib     pydot     python-nvd3     pyyaml     requests     scikit-image     scipy     setuptools     tornado" shape="box"];
  "sha256:6d12c4ed0a144e672a61d4df711e5b50b399d593a93d13d7cf799a4bf28eb95f" [label="/bin/sh -c cd caffe2 && mkdir build && cd build     && cmake ..     -DUSE_CUDA=OFF     -DUSE_NNPACK=OFF     -DUSE_ROCKSDB=OFF     && make -j\"$(nproc)\" install     && ldconfig     && make clean     && cd ..     && rm -rf build" shape="box"];
  "sha256:730703f553ff628b4b009035f0f92c5f4e19caffdbafb74cb61117319ad12098" [label="sha256:730703f553ff628b4b009035f0f92c5f4e19caffdbafb74cb61117319ad12098" shape="plaintext"];
  "sha256:9850ce801f494e9c05448a3f79d79420fb055f171850bdfccec71d5c66e05a89" -> "sha256:53f2b763d6351858314f9153e37d003b0b24d15a02b7e0841b2974f82c622a41" [label=""];
  "sha256:53f2b763d6351858314f9153e37d003b0b24d15a02b7e0841b2974f82c622a41" -> "sha256:d4e7c0c3c691b430963a1ca401f08ed0fde68b0592760a8707ffb47120c47aec" [label=""];
  "sha256:d4e7c0c3c691b430963a1ca401f08ed0fde68b0592760a8707ffb47120c47aec" -> "sha256:6d12c4ed0a144e672a61d4df711e5b50b399d593a93d13d7cf799a4bf28eb95f" [label=""];
  "sha256:6d12c4ed0a144e672a61d4df711e5b50b399d593a93d13d7cf799a4bf28eb95f" -> "sha256:730703f553ff628b4b009035f0f92c5f4e19caffdbafb74cb61117319ad12098" [label=""];
}

