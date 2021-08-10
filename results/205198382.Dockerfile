[app/sources/205198382.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-setuptools         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0567ca61a6204ea29fb322e22c0e9fd3113dcdeb3b8de3a2c20c883fbc162ab1" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:d1ab87d32f4be34fe6daeae74df323d7338468c759f7a9507c4eeea7c82dd011" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . &&     pip install --upgrade pip &&     cd python && for req in $(cat requirements.txt) pydot; do pip install $req; done && cd .. &&     mkdir build && cd build &&     cmake -DCPU_ONLY=1 .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:3f79607924207ce849c1d8fc5b9c5ef379d9046d99c6b60ffc51ce2bf76b7d2b" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:4fe64f654a3f070318a9d736d0c49895f4eb18ab23f31dc92a5a9e01ad67141b" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:3b6a508660e28ef2337893539e7a0a070c1c4fc5fbbc9c497e9a7677c8978634" [label="sha256:3b6a508660e28ef2337893539e7a0a070c1c4fc5fbbc9c497e9a7677c8978634" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" [label=""];
  "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" -> "sha256:0567ca61a6204ea29fb322e22c0e9fd3113dcdeb3b8de3a2c20c883fbc162ab1" [label=""];
  "sha256:0567ca61a6204ea29fb322e22c0e9fd3113dcdeb3b8de3a2c20c883fbc162ab1" -> "sha256:d1ab87d32f4be34fe6daeae74df323d7338468c759f7a9507c4eeea7c82dd011" [label=""];
  "sha256:d1ab87d32f4be34fe6daeae74df323d7338468c759f7a9507c4eeea7c82dd011" -> "sha256:3f79607924207ce849c1d8fc5b9c5ef379d9046d99c6b60ffc51ce2bf76b7d2b" [label=""];
  "sha256:3f79607924207ce849c1d8fc5b9c5ef379d9046d99c6b60ffc51ce2bf76b7d2b" -> "sha256:4fe64f654a3f070318a9d736d0c49895f4eb18ab23f31dc92a5a9e01ad67141b" [label=""];
  "sha256:4fe64f654a3f070318a9d736d0c49895f4eb18ab23f31dc92a5a9e01ad67141b" -> "sha256:3b6a508660e28ef2337893539e7a0a070c1c4fc5fbbc9c497e9a7677c8978634" [label=""];
}

