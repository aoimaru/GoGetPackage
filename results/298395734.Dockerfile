[app/sources/298395734.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:683f9991cd529ba2357af194b8f0b802da51e4b022b8ead620faec5f7e25e359" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7164531f72237ff9ca0d91cc9c98620da9a7e1f9ab058e0681af795655e2445b" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:0dff1e4964c548ef9336f3f3c86e1c4bfb17fa6fd9183147446e7585f10fcbbb" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . &&     for req in $(cat python/requirements.txt) pydot; do pip install $req; done &&     mkdir build && cd build &&     cmake -DCPU_ONLY=1 .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:1e0a5b50de6ba20d6f1a699a3626089f7a7df167a0054c1f5d721f354ea7a269" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:c5946e7632cf432a62e9ea65a9f50f987574af66e49179b7eea424218ec5822e" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:f98114fe59c2518524b494095c9d0806efcd8d4ec93c97f364637269ad20fb80" [label="sha256:f98114fe59c2518524b494095c9d0806efcd8d4ec93c97f364637269ad20fb80" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:683f9991cd529ba2357af194b8f0b802da51e4b022b8ead620faec5f7e25e359" [label=""];
  "sha256:683f9991cd529ba2357af194b8f0b802da51e4b022b8ead620faec5f7e25e359" -> "sha256:7164531f72237ff9ca0d91cc9c98620da9a7e1f9ab058e0681af795655e2445b" [label=""];
  "sha256:7164531f72237ff9ca0d91cc9c98620da9a7e1f9ab058e0681af795655e2445b" -> "sha256:0dff1e4964c548ef9336f3f3c86e1c4bfb17fa6fd9183147446e7585f10fcbbb" [label=""];
  "sha256:0dff1e4964c548ef9336f3f3c86e1c4bfb17fa6fd9183147446e7585f10fcbbb" -> "sha256:1e0a5b50de6ba20d6f1a699a3626089f7a7df167a0054c1f5d721f354ea7a269" [label=""];
  "sha256:1e0a5b50de6ba20d6f1a699a3626089f7a7df167a0054c1f5d721f354ea7a269" -> "sha256:c5946e7632cf432a62e9ea65a9f50f987574af66e49179b7eea424218ec5822e" [label=""];
  "sha256:c5946e7632cf432a62e9ea65a9f50f987574af66e49179b7eea424218ec5822e" -> "sha256:f98114fe59c2518524b494095c9d0806efcd8d4ec93c97f364637269ad20fb80" [label=""];
}

