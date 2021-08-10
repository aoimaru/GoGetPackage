[app/sources/212453053.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-setuptools         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a37c0b657e40fa7c230847af2354f27fcbe08d2fee7fce19977eefb58ac6819d" [label="mkdir{path=/caffe}" shape="note"];
  "sha256:32094b457e757ad92efc351f09fbd7c0cc8cd1fc1b5d9e5feb1916799d144a27" [label="/bin/sh -c pip install --upgrade pip" shape="box"];
  "sha256:de703ff9e80d0e4b871d7f77938241b425ed2b6727f3f706f01bb3293b54eedb" [label="/bin/sh -c pip install pathlib" shape="box"];
  "sha256:03b8d2c0998c9a34680a6197a195443df6d56b111578f4e2ca1db4a1146098de" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . &&     cd python && for req in $(cat requirements.txt) pydot; do pip install $req; done && cd .. &&     mkdir build && cd build &&     cmake -DCPU_ONLY=1 .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:0edde055de9beb728e0fbb02006e2a7293647e295fb0cad67f0648fb244cfad1" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:e5dcd52e12537c33bade4698869d622e9ce0d7f1accb965ce81b95742fb96d32" [label="mkdir{path=/code}" shape="note"];
  "sha256:c53133b5eaefdc55d0d89db571978c1b049149004ae3442bb0f90cf51b935ac3" [label="local://context" shape="ellipse"];
  "sha256:284ff30f8acf8e6b2067744b753d432ead93078d00c7405794504e9346f71cce" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:764eccdefa18613e11454e775ff503066e05048838c11542b7c20367af08ee9a" [label="/bin/sh -c pip install -r requirements/dev.txt" shape="box"];
  "sha256:42c049b5f9d3814c25196736be27f3dd39e5dded3550ec295ba8c0484c79e3d5" [label="sha256:42c049b5f9d3814c25196736be27f3dd39e5dded3550ec295ba8c0484c79e3d5" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" [label=""];
  "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" -> "sha256:a37c0b657e40fa7c230847af2354f27fcbe08d2fee7fce19977eefb58ac6819d" [label=""];
  "sha256:a37c0b657e40fa7c230847af2354f27fcbe08d2fee7fce19977eefb58ac6819d" -> "sha256:32094b457e757ad92efc351f09fbd7c0cc8cd1fc1b5d9e5feb1916799d144a27" [label=""];
  "sha256:32094b457e757ad92efc351f09fbd7c0cc8cd1fc1b5d9e5feb1916799d144a27" -> "sha256:de703ff9e80d0e4b871d7f77938241b425ed2b6727f3f706f01bb3293b54eedb" [label=""];
  "sha256:de703ff9e80d0e4b871d7f77938241b425ed2b6727f3f706f01bb3293b54eedb" -> "sha256:03b8d2c0998c9a34680a6197a195443df6d56b111578f4e2ca1db4a1146098de" [label=""];
  "sha256:03b8d2c0998c9a34680a6197a195443df6d56b111578f4e2ca1db4a1146098de" -> "sha256:0edde055de9beb728e0fbb02006e2a7293647e295fb0cad67f0648fb244cfad1" [label=""];
  "sha256:0edde055de9beb728e0fbb02006e2a7293647e295fb0cad67f0648fb244cfad1" -> "sha256:e5dcd52e12537c33bade4698869d622e9ce0d7f1accb965ce81b95742fb96d32" [label=""];
  "sha256:e5dcd52e12537c33bade4698869d622e9ce0d7f1accb965ce81b95742fb96d32" -> "sha256:284ff30f8acf8e6b2067744b753d432ead93078d00c7405794504e9346f71cce" [label=""];
  "sha256:c53133b5eaefdc55d0d89db571978c1b049149004ae3442bb0f90cf51b935ac3" -> "sha256:284ff30f8acf8e6b2067744b753d432ead93078d00c7405794504e9346f71cce" [label=""];
  "sha256:284ff30f8acf8e6b2067744b753d432ead93078d00c7405794504e9346f71cce" -> "sha256:764eccdefa18613e11454e775ff503066e05048838c11542b7c20367af08ee9a" [label=""];
  "sha256:764eccdefa18613e11454e775ff503066e05048838c11542b7c20367af08ee9a" -> "sha256:42c049b5f9d3814c25196736be27f3dd39e5dded3550ec295ba8c0484c79e3d5" [label=""];
}

