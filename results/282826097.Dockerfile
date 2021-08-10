[app/sources/282826097.Dockerfile]
digraph {
  "sha256:69c553ab9a38173ba26ba689026590df45223286bf830bab5198ea6b6e41fac8" [label="docker-image://docker.io/nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04" shape="ellipse"];
  "sha256:fab8d90c30948bb1b6b83132bd90e5f8a7bd9152c0602aef5314f23b36a1d5bb" [label="/bin/sh -c APT_INSTALL=\"apt-get install -y --no-install-recommends\" &&     PIP_INSTALL=\"python -m pip --no-cache-dir install --upgrade\" &&     GIT_CLONE=\"git clone --depth 10\" &&     rm -rf /var/lib/apt/lists/*            /etc/apt/sources.list.d/cuda.list            /etc/apt/sources.list.d/nvidia-ml.list &&     apt-get update &&     DEBIAN_FRONTEND=noninteractive $APT_INSTALL         build-essential         apt-utils         ca-certificates         wget         git         vim         &&     $GIT_CLONE https://github.com/Kitware/CMake ~/cmake &&     cd ~/cmake &&     ./bootstrap &&     make -j\"$(nproc)\" install &&     DEBIAN_FRONTEND=noninteractive $APT_INSTALL         software-properties-common         &&     add-apt-repository ppa:deadsnakes/ppa &&     apt-get update &&     DEBIAN_FRONTEND=noninteractive $APT_INSTALL         python3.6         python3.6-dev         python3-distutils-extra         &&     wget -O ~/get-pip.py         https://bootstrap.pypa.io/get-pip.py &&     python3.6 ~/get-pip.py &&     ln -s /usr/bin/python3.6 /usr/local/bin/python3 &&     ln -s /usr/bin/python3.6 /usr/local/bin/python &&     $PIP_INSTALL         setuptools         &&     $PIP_INSTALL         numpy         scipy         pandas         cloudpickle         scikit-learn         matplotlib         Cython         &&     $PIP_INSTALL         tf-nightly-gpu-2.0-preview         &&     ldconfig &&     apt-get clean &&     apt-get autoremove &&     rm -rf /var/lib/apt/lists/* /tmp/* ~/*" shape="box"];
  "sha256:9484890c43a9f5e69fdc74b43181f1781cbb2ae2035ebc631d46ff8ca959ed54" [label="sha256:9484890c43a9f5e69fdc74b43181f1781cbb2ae2035ebc631d46ff8ca959ed54" shape="plaintext"];
  "sha256:69c553ab9a38173ba26ba689026590df45223286bf830bab5198ea6b6e41fac8" -> "sha256:fab8d90c30948bb1b6b83132bd90e5f8a7bd9152c0602aef5314f23b36a1d5bb" [label=""];
  "sha256:fab8d90c30948bb1b6b83132bd90e5f8a7bd9152c0602aef5314f23b36a1d5bb" -> "sha256:9484890c43a9f5e69fdc74b43181f1781cbb2ae2035ebc631d46ff8ca959ed54" [label=""];
}

