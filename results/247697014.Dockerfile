[app/sources/247697014.Dockerfile]
digraph {
  "sha256:f35d663e7ec6c9466769b85e1ebcaaaa69f0aff2187ea90f0aa793bcd6c1063a" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04" shape="ellipse"];
  "sha256:310dde27198712a2deecef8c1f79432c1a44f956913924676dba46b0113c5012" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-setuptools         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e51edd2ddf5890d27a597d01977996e90872b217ffaa7253309d7e2437f45fd2" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:b956717dd49b9fed6087d08f5def6384b38dccf745d954032f7faf57e3ae2201" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . &&     pip install --upgrade pip &&     cd python && for req in $(cat requirements.txt) pydot; do pip install $req; done && cd .. &&     git clone https://github.com/NVIDIA/nccl.git && cd nccl && make -j install && cd .. && rm -rf nccl &&     mkdir build && cd build &&     cmake -DUSE_CUDNN=1 -DUSE_NCCL=1 .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:90febf240b753a80947e2b0dc7e3b3fa3b536b41b86790e19622aac2b916c9e0" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:dc19b9601fb7a3e6e5a8074c711517d622ca567afb9c455c0f0662382ae85043" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:861ed4b6fb1efe79565f97ced3e2015d26d9447e217a7ce98771a2732b0b7b74" [label="sha256:861ed4b6fb1efe79565f97ced3e2015d26d9447e217a7ce98771a2732b0b7b74" shape="plaintext"];
  "sha256:f35d663e7ec6c9466769b85e1ebcaaaa69f0aff2187ea90f0aa793bcd6c1063a" -> "sha256:310dde27198712a2deecef8c1f79432c1a44f956913924676dba46b0113c5012" [label=""];
  "sha256:310dde27198712a2deecef8c1f79432c1a44f956913924676dba46b0113c5012" -> "sha256:e51edd2ddf5890d27a597d01977996e90872b217ffaa7253309d7e2437f45fd2" [label=""];
  "sha256:e51edd2ddf5890d27a597d01977996e90872b217ffaa7253309d7e2437f45fd2" -> "sha256:b956717dd49b9fed6087d08f5def6384b38dccf745d954032f7faf57e3ae2201" [label=""];
  "sha256:b956717dd49b9fed6087d08f5def6384b38dccf745d954032f7faf57e3ae2201" -> "sha256:90febf240b753a80947e2b0dc7e3b3fa3b536b41b86790e19622aac2b916c9e0" [label=""];
  "sha256:90febf240b753a80947e2b0dc7e3b3fa3b536b41b86790e19622aac2b916c9e0" -> "sha256:dc19b9601fb7a3e6e5a8074c711517d622ca567afb9c455c0f0662382ae85043" [label=""];
  "sha256:dc19b9601fb7a3e6e5a8074c711517d622ca567afb9c455c0f0662382ae85043" -> "sha256:861ed4b6fb1efe79565f97ced3e2015d26d9447e217a7ce98771a2732b0b7b74" [label=""];
}

