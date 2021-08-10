[app/sources/302905124.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:d87335dd23e8249fcf47d349c63841f8d8920e4e7944cf332885d19bbb0feb3e" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:cd3e8cd7b237ab3437f202f8b1d82fd2b5512ad1472acb5307e405e9d0be4481" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:b0005213f51118774a69eeefec18dbfce4dc98f231e2be94adaabab2c924208d" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/intel/caffe.git . &&     for req in $(cat python/requirements.txt) pydot; do pip install $req; done &&     mkdir build && cd build &&     cmake -DCPU_ONLY=1 -DCMAKE_BUILD_TYPE=Release .. &&     make all -j\"$(nproc)\"" shape="box"];
  "sha256:9f423823cea0584da3f22d06f7ddc166777712603573dc8c6bf09e48e1b17508" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:e477e9cf83baedfc01d8a20e06f9afc3869659e5e75bcb0ce401228fc8647757" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:d151f875bc077e8236adf1bfb2384b2c8c058211890ce0d506ec3dfde7e52320" [label="sha256:d151f875bc077e8236adf1bfb2384b2c8c058211890ce0d506ec3dfde7e52320" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:d87335dd23e8249fcf47d349c63841f8d8920e4e7944cf332885d19bbb0feb3e" [label=""];
  "sha256:d87335dd23e8249fcf47d349c63841f8d8920e4e7944cf332885d19bbb0feb3e" -> "sha256:cd3e8cd7b237ab3437f202f8b1d82fd2b5512ad1472acb5307e405e9d0be4481" [label=""];
  "sha256:cd3e8cd7b237ab3437f202f8b1d82fd2b5512ad1472acb5307e405e9d0be4481" -> "sha256:b0005213f51118774a69eeefec18dbfce4dc98f231e2be94adaabab2c924208d" [label=""];
  "sha256:b0005213f51118774a69eeefec18dbfce4dc98f231e2be94adaabab2c924208d" -> "sha256:9f423823cea0584da3f22d06f7ddc166777712603573dc8c6bf09e48e1b17508" [label=""];
  "sha256:9f423823cea0584da3f22d06f7ddc166777712603573dc8c6bf09e48e1b17508" -> "sha256:e477e9cf83baedfc01d8a20e06f9afc3869659e5e75bcb0ce401228fc8647757" [label=""];
  "sha256:e477e9cf83baedfc01d8a20e06f9afc3869659e5e75bcb0ce401228fc8647757" -> "sha256:d151f875bc077e8236adf1bfb2384b2c8c058211890ce0d506ec3dfde7e52320" [label=""];
}

