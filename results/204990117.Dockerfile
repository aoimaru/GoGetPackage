[app/sources/204990117.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cmake         git         wget         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-setuptools         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0567ca61a6204ea29fb322e22c0e9fd3113dcdeb3b8de3a2c20c883fbc162ab1" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:224aadb33baba9fc63a8aeec5390b70157f924199f0bc969ffff549131c36e15" [label="/bin/sh -c git clone https://github.com/ouceduxzk/Fine_Grained_Classification.git  && cd Fine_Grained_Classification && cd RA-CNN && cd caffe_racnn &&    pip install --upgrade pip &&     cd python && for req in $(cat requirements.txt) pydot; do pip install $req; done && cd .." shape="box"];
  "sha256:4c959a648136c4e9a7c6c062cad488bf193a49b9fdab5de6506ba5a2c6259c8f" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:fd5b0df6ac3e2d29f38e302fe032597b5da9e1f8046eea9f07930e8dee36eb97" [label="sha256:fd5b0df6ac3e2d29f38e302fe032597b5da9e1f8046eea9f07930e8dee36eb97" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" [label=""];
  "sha256:40c244f5ae38b2cbce3e6a0889fa8a353ae65d7cc991fe3bc62dd6b15f593d1c" -> "sha256:0567ca61a6204ea29fb322e22c0e9fd3113dcdeb3b8de3a2c20c883fbc162ab1" [label=""];
  "sha256:0567ca61a6204ea29fb322e22c0e9fd3113dcdeb3b8de3a2c20c883fbc162ab1" -> "sha256:224aadb33baba9fc63a8aeec5390b70157f924199f0bc969ffff549131c36e15" [label=""];
  "sha256:224aadb33baba9fc63a8aeec5390b70157f924199f0bc969ffff549131c36e15" -> "sha256:4c959a648136c4e9a7c6c062cad488bf193a49b9fdab5de6506ba5a2c6259c8f" [label=""];
  "sha256:4c959a648136c4e9a7c6c062cad488bf193a49b9fdab5de6506ba5a2c6259c8f" -> "sha256:fd5b0df6ac3e2d29f38e302fe032597b5da9e1f8046eea9f07930e8dee36eb97" [label=""];
}

