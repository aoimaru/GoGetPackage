[app/sources/236050762.Dockerfile]
digraph {
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" [label="docker-image://docker.io/library/ubuntu:14.04@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:675a4ed73eb105b73a271f7315bd3d935d5b14451ce31b7a1600e8579cf6fdea" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:53fd9da435ad45d5a417cc58a308212844e5b84e8e210af9c7170c7ee61d2f16" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:2d28527e0b6d9876a57f1927ded46307c3f477328f212882f08dc48fdecfce06" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . &&     for req in $(cat python/requirements.txt) pydot; do pip install $req; done &&     mkdir build && cd build &&     cmake -DCPU_ONLY=1 .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:148e1b99cfcf0cfa155e294236a29da82c6f8a3931e4ab0adf8663351cf97dd0" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:64edc4db0be25101d8abbefdfbc011f2e31528d925f5121d153e15e9663dad32" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:65b19f37aab89b8488de93c1f4e1c1b2073d1aa60b78513e5ee171fac8949c7a" [label="sha256:65b19f37aab89b8488de93c1f4e1c1b2073d1aa60b78513e5ee171fac8949c7a" shape="plaintext"];
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" -> "sha256:675a4ed73eb105b73a271f7315bd3d935d5b14451ce31b7a1600e8579cf6fdea" [label=""];
  "sha256:675a4ed73eb105b73a271f7315bd3d935d5b14451ce31b7a1600e8579cf6fdea" -> "sha256:53fd9da435ad45d5a417cc58a308212844e5b84e8e210af9c7170c7ee61d2f16" [label=""];
  "sha256:53fd9da435ad45d5a417cc58a308212844e5b84e8e210af9c7170c7ee61d2f16" -> "sha256:2d28527e0b6d9876a57f1927ded46307c3f477328f212882f08dc48fdecfce06" [label=""];
  "sha256:2d28527e0b6d9876a57f1927ded46307c3f477328f212882f08dc48fdecfce06" -> "sha256:148e1b99cfcf0cfa155e294236a29da82c6f8a3931e4ab0adf8663351cf97dd0" [label=""];
  "sha256:148e1b99cfcf0cfa155e294236a29da82c6f8a3931e4ab0adf8663351cf97dd0" -> "sha256:64edc4db0be25101d8abbefdfbc011f2e31528d925f5121d153e15e9663dad32" [label=""];
  "sha256:64edc4db0be25101d8abbefdfbc011f2e31528d925f5121d153e15e9663dad32" -> "sha256:65b19f37aab89b8488de93c1f4e1c1b2073d1aa60b78513e5ee171fac8949c7a" [label=""];
}

