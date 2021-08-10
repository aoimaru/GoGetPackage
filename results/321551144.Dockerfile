[app/sources/321551144.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-setuptools         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0567ca61a6204ea29fb322e22c0e9fd3113dcdeb3b8de3a2c20c883fbc162ab1" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:a9611e600ba668f91d5a620fafdb1a8582d147d2bf766937e3787eaa97a24680" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . &&     pip install --upgrade pip &&     cd python && for req in $(cat requirements.txt) pydot; do pip install $req; done && cd .. &&     mkdir build && cd build &&     cmake -DCPU_ONLY=1 .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:4c0e419cc8f19267ece9374b778dc0207e6b97ecfaa2035ec79db28516b6b77c" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:eebd2dd9dc5189182fbc0c324271c58462b7528e97b4a1f8ad080f7957620d05" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:8b787c0799486d855146802569029c3163be1885b74a9b0b487b202afd78f5f4" [label="sha256:8b787c0799486d855146802569029c3163be1885b74a9b0b487b202afd78f5f4" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" [label=""];
  "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" -> "sha256:0567ca61a6204ea29fb322e22c0e9fd3113dcdeb3b8de3a2c20c883fbc162ab1" [label=""];
  "sha256:0567ca61a6204ea29fb322e22c0e9fd3113dcdeb3b8de3a2c20c883fbc162ab1" -> "sha256:a9611e600ba668f91d5a620fafdb1a8582d147d2bf766937e3787eaa97a24680" [label=""];
  "sha256:a9611e600ba668f91d5a620fafdb1a8582d147d2bf766937e3787eaa97a24680" -> "sha256:4c0e419cc8f19267ece9374b778dc0207e6b97ecfaa2035ec79db28516b6b77c" [label=""];
  "sha256:4c0e419cc8f19267ece9374b778dc0207e6b97ecfaa2035ec79db28516b6b77c" -> "sha256:eebd2dd9dc5189182fbc0c324271c58462b7528e97b4a1f8ad080f7957620d05" [label=""];
  "sha256:eebd2dd9dc5189182fbc0c324271c58462b7528e97b4a1f8ad080f7957620d05" -> "sha256:8b787c0799486d855146802569029c3163be1885b74a9b0b487b202afd78f5f4" [label=""];
}

