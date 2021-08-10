[app/sources/333362973.Dockerfile]
digraph {
  "sha256:dbebecb81a28fad47f70b43d524e5f0e89911ad6db5b9bcdd34261b5658c2a02" [label="docker-image://docker.io/caffe2ai/caffe2:c2v0.8.1.cpu.min.ubuntu16.04@sha256:329deea228ad0f10d82863d85f050047794daabab9677a164eaaa0000f9d5365" shape="ellipse"];
  "sha256:22a80ec918cab169cb7a3bf8d144bb19c81d32e011b074cf389010768db7444c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     libgflags-dev     libgtest-dev     libiomp-dev     libleveldb-dev     liblmdb-dev     libopencv-dev     libopenmpi-dev     libsnappy-dev     openmpi-bin     openmpi-doc     python-numpy     python-pydot     python-setuptools     python-scipy     wget     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9ba604269c355333eb8f651f5015a442085c19c7b564adb38ec0bb1e99d2800e" [label="/bin/sh -c pip install --no-cache-dir     flask     graphviz     jupyter     matplotlib     pydot     python-nvd3     pyyaml     requests     scikit-image     scipy     setuptools     tornado" shape="box"];
  "sha256:42bda05ff3ab46ebcae959ebd1e41f08df912c59a6de14a985a370518603dfbe" [label="/bin/sh -c cd caffe2 && mkdir build && cd build     && cmake ..     -DUSE_CUDA=OFF     -DUSE_NNPACK=OFF     -DUSE_ROCKSDB=OFF     && make -j\"$(nproc)\" install     && ldconfig     && make clean     && cd ..     && rm -rf build" shape="box"];
  "sha256:13c0f95383eb0996c091b70bdfefc9a45df168afbc404b68f47283a7eaaddba8" [label="sha256:13c0f95383eb0996c091b70bdfefc9a45df168afbc404b68f47283a7eaaddba8" shape="plaintext"];
  "sha256:dbebecb81a28fad47f70b43d524e5f0e89911ad6db5b9bcdd34261b5658c2a02" -> "sha256:22a80ec918cab169cb7a3bf8d144bb19c81d32e011b074cf389010768db7444c" [label=""];
  "sha256:22a80ec918cab169cb7a3bf8d144bb19c81d32e011b074cf389010768db7444c" -> "sha256:9ba604269c355333eb8f651f5015a442085c19c7b564adb38ec0bb1e99d2800e" [label=""];
  "sha256:9ba604269c355333eb8f651f5015a442085c19c7b564adb38ec0bb1e99d2800e" -> "sha256:42bda05ff3ab46ebcae959ebd1e41f08df912c59a6de14a985a370518603dfbe" [label=""];
  "sha256:42bda05ff3ab46ebcae959ebd1e41f08df912c59a6de14a985a370518603dfbe" -> "sha256:13c0f95383eb0996c091b70bdfefc9a45df168afbc404b68f47283a7eaaddba8" [label=""];
}

