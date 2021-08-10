[app/sources/204990120.Dockerfile]
digraph {
  "sha256:98adb3423ea813dbf263089327f7196e7172d60024d5cf677100120aacdf43eb" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn6-devel-ubuntu16.04" shape="ellipse"];
  "sha256:4a1b346895ff7b5118ba8613b6d37dd6a4a9fa9bf105014e6d41cd7a34af290e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-setuptools         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2e731ceb86e03bcae19dae88c679942309152cfc6fa83fb2c32641ea1e446c8c" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:884fb3e7db7edb6bd6481d386aa5bb5617e3a4b4fb9253b80bbaf6324e93eb0e" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . &&     pip install --upgrade pip &&     cd python && for req in $(cat requirements.txt) pydot; do pip install $req; done && cd .. &&     git clone https://github.com/NVIDIA/nccl.git && cd nccl && make -j install && cd .. && rm -rf nccl &&     mkdir build && cd build &&     cmake -DUSE_CUDNN=1 -DUSE_NCCL=1 .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:7ace8e874f757c6b8be93078545a2c6eae8da05ab9714789cca59584ce0a72bd" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:aec46cd88effc3a30c9d608848e67388acf7c01c0a7fc55e973e5feb2b462329" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:f07cea1b4684b2ea699d1ac118e5e37d677d71afb33f1b972b30709883df3964" [label="sha256:f07cea1b4684b2ea699d1ac118e5e37d677d71afb33f1b972b30709883df3964" shape="plaintext"];
  "sha256:98adb3423ea813dbf263089327f7196e7172d60024d5cf677100120aacdf43eb" -> "sha256:4a1b346895ff7b5118ba8613b6d37dd6a4a9fa9bf105014e6d41cd7a34af290e" [label=""];
  "sha256:4a1b346895ff7b5118ba8613b6d37dd6a4a9fa9bf105014e6d41cd7a34af290e" -> "sha256:2e731ceb86e03bcae19dae88c679942309152cfc6fa83fb2c32641ea1e446c8c" [label=""];
  "sha256:2e731ceb86e03bcae19dae88c679942309152cfc6fa83fb2c32641ea1e446c8c" -> "sha256:884fb3e7db7edb6bd6481d386aa5bb5617e3a4b4fb9253b80bbaf6324e93eb0e" [label=""];
  "sha256:884fb3e7db7edb6bd6481d386aa5bb5617e3a4b4fb9253b80bbaf6324e93eb0e" -> "sha256:7ace8e874f757c6b8be93078545a2c6eae8da05ab9714789cca59584ce0a72bd" [label=""];
  "sha256:7ace8e874f757c6b8be93078545a2c6eae8da05ab9714789cca59584ce0a72bd" -> "sha256:aec46cd88effc3a30c9d608848e67388acf7c01c0a7fc55e973e5feb2b462329" [label=""];
  "sha256:aec46cd88effc3a30c9d608848e67388acf7c01c0a7fc55e973e5feb2b462329" -> "sha256:f07cea1b4684b2ea699d1ac118e5e37d677d71afb33f1b972b30709883df3964" [label=""];
}

