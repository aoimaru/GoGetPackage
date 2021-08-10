[app/sources/367179175.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7e96ca8e2e7cf350970c649f0756ad85e2d935ded42547e0b6081a03165ab73f" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-scipy         python-tk         libgtk2.0-dev         ca-certificates         curl &&     curl https://bootstrap.pypa.io/get-pip.py  > get-pip.py && python get-pip.py &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:42bef4da8f1198d6c3bcecb72195c30a437ee66761ab3facf43074e36b220ff8" [label="mkdir{path=/opt}" shape="note"];
  "sha256:f91b651751994b0ef67f371e8ae612a036832a3519595ffa74932db9721c82c3" [label="/bin/sh -c git clone -b 2.4 https://github.com/Itseez/opencv.git &&     mkdir opencv/build && cd opencv/build &&     cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ../ &&     make -j\"$(nproc)\" && make -j\"$(nproc)\" install" shape="box"];
  "sha256:33ef791ea60e976d40bd362ff9a893d6003e605c26bbd436fbabf23e022035b6" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:e45e1658b8bfc85bd0f2661257b0ef488def85adb6f29183f63bd818bc1dca55" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/alexgkendall/caffe-segnet.git . &&     for req in $(cat python/requirements.txt) pydot; do pip install $req; done &&     mkdir build && cd build &&     cmake -DCPU_ONLY=1 .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:a6c2c174400e5f775067fc36a19b15588add6b6388f3e31e89b790fcccbf0a18" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:90d4cdab3aa9573317732a650de992220db6a20d38a59fabbbf1b761b385d0c1" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:32264c74df8bd309258061793f0ca86f6c5091bccad27be96977580bfaf71afe" [label="sha256:32264c74df8bd309258061793f0ca86f6c5091bccad27be96977580bfaf71afe" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7e96ca8e2e7cf350970c649f0756ad85e2d935ded42547e0b6081a03165ab73f" [label=""];
  "sha256:7e96ca8e2e7cf350970c649f0756ad85e2d935ded42547e0b6081a03165ab73f" -> "sha256:42bef4da8f1198d6c3bcecb72195c30a437ee66761ab3facf43074e36b220ff8" [label=""];
  "sha256:42bef4da8f1198d6c3bcecb72195c30a437ee66761ab3facf43074e36b220ff8" -> "sha256:f91b651751994b0ef67f371e8ae612a036832a3519595ffa74932db9721c82c3" [label=""];
  "sha256:f91b651751994b0ef67f371e8ae612a036832a3519595ffa74932db9721c82c3" -> "sha256:33ef791ea60e976d40bd362ff9a893d6003e605c26bbd436fbabf23e022035b6" [label=""];
  "sha256:33ef791ea60e976d40bd362ff9a893d6003e605c26bbd436fbabf23e022035b6" -> "sha256:e45e1658b8bfc85bd0f2661257b0ef488def85adb6f29183f63bd818bc1dca55" [label=""];
  "sha256:e45e1658b8bfc85bd0f2661257b0ef488def85adb6f29183f63bd818bc1dca55" -> "sha256:a6c2c174400e5f775067fc36a19b15588add6b6388f3e31e89b790fcccbf0a18" [label=""];
  "sha256:a6c2c174400e5f775067fc36a19b15588add6b6388f3e31e89b790fcccbf0a18" -> "sha256:90d4cdab3aa9573317732a650de992220db6a20d38a59fabbbf1b761b385d0c1" [label=""];
  "sha256:90d4cdab3aa9573317732a650de992220db6a20d38a59fabbbf1b761b385d0c1" -> "sha256:32264c74df8bd309258061793f0ca86f6c5091bccad27be96977580bfaf71afe" [label=""];
}

