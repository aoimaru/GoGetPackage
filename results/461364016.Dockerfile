[app/sources/461364016.Dockerfile]
digraph {
  "sha256:b01f16ffed29e47b988c33a07756227136dcfe95aa855fc89e59c39b37fb8fda" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn7-devel-ubuntu16.04@sha256:048fada3bf70559c665d549e81df9dd79122cdde712a47df0bd2ce80e44208d2" shape="ellipse"];
  "sha256:e3d00eed91e62c7fd144505b577d18ff0a8dba5152a95963ae52fa7fa1dcd28b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     build-essential     cmake     git     libgflags-dev     libgoogle-glog-dev     libgtest-dev     libiomp-dev     libleveldb-dev     liblmdb-dev     libopencv-dev     libopenmpi-dev     libprotobuf-dev     libsnappy-dev     openmpi-bin     openmpi-doc     protobuf-compiler     python-dev     python-numpy     python-pip     python-pydot     python-setuptools     python-scipy     wget     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c00bf517021bc64a71d57eae1018b56f6513ed3eb6ff6bc0696ddb44ddc65fa9" [label="/bin/sh -c pip install --no-cache-dir --upgrade pip==9.0.3 setuptools wheel &&     pip install --no-cache-dir     flask     future     graphviz     hypothesis     jupyter     matplotlib     numpy     protobuf     pydot     python-nvd3     pyyaml     requests     scikit-image     scipy     setuptools     six     tornado" shape="box"];
  "sha256:c4b21207f651d1ec104384c789f00f255e6176aac095607221b6cc07fbb85a0a" [label="/bin/sh -c git clone --branch master --recursive https://github.com/pytorch/pytorch.git" shape="box"];
  "sha256:6c833bf3189724440e1a977360d69a2b985848f5eb3761133187e04254dc26e9" [label="/bin/sh -c cd pytorch && mkdir build && cd build     && cmake ..     -DCUDA_ARCH_NAME=Manual     -DCUDA_ARCH_BIN=\"35 52 60 61\"     -DCUDA_ARCH_PTX=\"61\"     -DUSE_NNPACK=OFF     -DUSE_ROCKSDB=OFF     && make -j\"$(nproc)\" install     && ldconfig     && make clean     && cd ..     && rm -rf build" shape="box"];
  "sha256:4bb9b22a0a73f1ff7fdc03eff6f0c40b809ab7cea85f522f0cb345a2cc6ff612" [label="sha256:4bb9b22a0a73f1ff7fdc03eff6f0c40b809ab7cea85f522f0cb345a2cc6ff612" shape="plaintext"];
  "sha256:b01f16ffed29e47b988c33a07756227136dcfe95aa855fc89e59c39b37fb8fda" -> "sha256:e3d00eed91e62c7fd144505b577d18ff0a8dba5152a95963ae52fa7fa1dcd28b" [label=""];
  "sha256:e3d00eed91e62c7fd144505b577d18ff0a8dba5152a95963ae52fa7fa1dcd28b" -> "sha256:c00bf517021bc64a71d57eae1018b56f6513ed3eb6ff6bc0696ddb44ddc65fa9" [label=""];
  "sha256:c00bf517021bc64a71d57eae1018b56f6513ed3eb6ff6bc0696ddb44ddc65fa9" -> "sha256:c4b21207f651d1ec104384c789f00f255e6176aac095607221b6cc07fbb85a0a" [label=""];
  "sha256:c4b21207f651d1ec104384c789f00f255e6176aac095607221b6cc07fbb85a0a" -> "sha256:6c833bf3189724440e1a977360d69a2b985848f5eb3761133187e04254dc26e9" [label=""];
  "sha256:6c833bf3189724440e1a977360d69a2b985848f5eb3761133187e04254dc26e9" -> "sha256:4bb9b22a0a73f1ff7fdc03eff6f0c40b809ab7cea85f522f0cb345a2cc6ff612" [label=""];
}

