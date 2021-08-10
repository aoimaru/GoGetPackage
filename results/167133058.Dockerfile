[app/sources/167133058.Dockerfile]
digraph {
  "sha256:547844e425d3f11cf9d6951e0e3ca8b32eae037efe4a86452db78b71a2c282d1" [label="docker-image://docker.io/nvidia/cuda:7.5-cudnn5-devel-ubuntu14.04@sha256:8a0c78deb81bd67c55506ec0b8193335752a3208b3957a2869abb7f522beef2a" shape="ellipse"];
  "sha256:3d19dfb73e99e5d9a3d39a6b6c7641ddd11f1d27da70aad84bdc84ef99b11a7a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:85c678770c778630fd93ae76c963a9b78c134f1ce7c540fb778ad21753a4a4fe" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:874bae2c09ff073ca44b6f8cfe0a2f1063ec4a4841afddeacfa7ad4e870d93fc" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . &&     for req in $(cat python/requirements.txt) pydot; do pip install $req; done &&     mkdir build && cd build &&     cmake -DUSE_CUDNN=1 .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:460805568da40337c5926a5b7b1f33f0c0282a7d4add5dcfa2dab8331410fa1c" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:084094f71411344a2655d7cc77a23e7c2887a0e0ecd1a1910dd7d721a48f81e5" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:24e0dd91d138a5e47c31ec266a5992cfba3d8a4672245e7730a7b42967dc193c" [label="sha256:24e0dd91d138a5e47c31ec266a5992cfba3d8a4672245e7730a7b42967dc193c" shape="plaintext"];
  "sha256:547844e425d3f11cf9d6951e0e3ca8b32eae037efe4a86452db78b71a2c282d1" -> "sha256:3d19dfb73e99e5d9a3d39a6b6c7641ddd11f1d27da70aad84bdc84ef99b11a7a" [label=""];
  "sha256:3d19dfb73e99e5d9a3d39a6b6c7641ddd11f1d27da70aad84bdc84ef99b11a7a" -> "sha256:85c678770c778630fd93ae76c963a9b78c134f1ce7c540fb778ad21753a4a4fe" [label=""];
  "sha256:85c678770c778630fd93ae76c963a9b78c134f1ce7c540fb778ad21753a4a4fe" -> "sha256:874bae2c09ff073ca44b6f8cfe0a2f1063ec4a4841afddeacfa7ad4e870d93fc" [label=""];
  "sha256:874bae2c09ff073ca44b6f8cfe0a2f1063ec4a4841afddeacfa7ad4e870d93fc" -> "sha256:460805568da40337c5926a5b7b1f33f0c0282a7d4add5dcfa2dab8331410fa1c" [label=""];
  "sha256:460805568da40337c5926a5b7b1f33f0c0282a7d4add5dcfa2dab8331410fa1c" -> "sha256:084094f71411344a2655d7cc77a23e7c2887a0e0ecd1a1910dd7d721a48f81e5" [label=""];
  "sha256:084094f71411344a2655d7cc77a23e7c2887a0e0ecd1a1910dd7d721a48f81e5" -> "sha256:24e0dd91d138a5e47c31ec266a5992cfba3d8a4672245e7730a7b42967dc193c" [label=""];
}

