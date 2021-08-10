[app/sources/286887295.Dockerfile]
digraph {
  "sha256:86f307faa43fb2b5750fa622cb7367057ddd52fdca35d53f3a81d6bbabac38b2" [label="docker-image://docker.io/nvidia/cuda:7.5-cudnn5-devel-ubuntu14.04" shape="ellipse"];
  "sha256:976900e8951611040fd9bacd063e65c12eeac91db660c475f0e0f8a8dac71e5b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:413f274ed6227fab5646782177e7443b0059bffc00793f47dfb3ef13ec2c79c5" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:b085dbcc3f33da86d21b97c1b3f86dc7c20003b2d72cfecc4cbb03be01035173" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . &&     for req in $(cat python/requirements.txt) pydot; do pip install $req; done &&     mkdir build && cd build &&     cmake -DUSE_CUDNN=1 .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:d54515c0623469eadceeb27a2c127ad48a8d5521e02371693169874591bef625" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:c0b170362e97a6bf19c9416a311edea18b74bedb54f75d674f00ea80270be7be" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:5084d7fb6a0ab2dced7e6614864db3864f62e76a8ccef749d6261060756b7c0f" [label="sha256:5084d7fb6a0ab2dced7e6614864db3864f62e76a8ccef749d6261060756b7c0f" shape="plaintext"];
  "sha256:86f307faa43fb2b5750fa622cb7367057ddd52fdca35d53f3a81d6bbabac38b2" -> "sha256:976900e8951611040fd9bacd063e65c12eeac91db660c475f0e0f8a8dac71e5b" [label=""];
  "sha256:976900e8951611040fd9bacd063e65c12eeac91db660c475f0e0f8a8dac71e5b" -> "sha256:413f274ed6227fab5646782177e7443b0059bffc00793f47dfb3ef13ec2c79c5" [label=""];
  "sha256:413f274ed6227fab5646782177e7443b0059bffc00793f47dfb3ef13ec2c79c5" -> "sha256:b085dbcc3f33da86d21b97c1b3f86dc7c20003b2d72cfecc4cbb03be01035173" [label=""];
  "sha256:b085dbcc3f33da86d21b97c1b3f86dc7c20003b2d72cfecc4cbb03be01035173" -> "sha256:d54515c0623469eadceeb27a2c127ad48a8d5521e02371693169874591bef625" [label=""];
  "sha256:d54515c0623469eadceeb27a2c127ad48a8d5521e02371693169874591bef625" -> "sha256:c0b170362e97a6bf19c9416a311edea18b74bedb54f75d674f00ea80270be7be" [label=""];
  "sha256:c0b170362e97a6bf19c9416a311edea18b74bedb54f75d674f00ea80270be7be" -> "sha256:5084d7fb6a0ab2dced7e6614864db3864f62e76a8ccef749d6261060756b7c0f" [label=""];
}

