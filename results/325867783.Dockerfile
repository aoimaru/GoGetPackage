[app/sources/325867783.Dockerfile]
digraph {
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04" shape="ellipse"];
  "sha256:73918dc6be3c4492b4bb7a3a4b2d57b5f9f4a030f239ec2ff80723002736563f" [label="/bin/sh -c sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list &&     APT_INSTALL=\"apt-get install -y --no-install-recommends\" &&     PIP_INSTALL=\"python -m pip --no-cache-dir install --upgrade -i https://pypi.tuna.tsinghua.edu.cn/simple\" &&     GIT_CLONE=\"git clone --depth 10\" &&     CONDA_INSTALL=\"conda install -y\" &&     rm -rf /var/lib/apt/lists/*            /etc/apt/sources.list.d/cuda.list            /etc/apt/sources.list.d/nvidia-ml.list &&     apt-get update &&     DEBIAN_FRONTEND=noninteractive $APT_INSTALL         apt-utils         build-essential         ca-certificates         cmake         wget         git         vim         htop         tmux         openssh-client         openssh-server         libboost-dev         libboost-thread-dev         libboost-filesystem-dev         libglib2.0-0         libsm6         libxext6         libxrender-dev         &&     wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh &&         /bin/bash ~/miniconda.sh -b -p /opt/conda &&         rm ~/miniconda.sh &&     conda config --set show_channel_urls yes &&     conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/ &&     conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/ &&     conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/ &&     conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/pytorch/ &&     $CONDA_INSTALL         python=3.7 &&     $CONDA_INSTALL         ipython         Cython         ffmpeg         pytorch         visdom         sk-video         imageio         h5py         tensorboardx         torchvision         cffi         cudatoolkit=9.0         &&     $PIP_INSTALL         lmdb         opencv-python         opencv-contrib-python         Pillow         six         scipy         munkres         nibabel         pandas         matplotlib         tqdm         scikit-learn         pytest         wget         gym         &&     conda clean -y --all &&     ldconfig &&     apt-get clean &&     apt-get autoremove &&     rm -rf /var/lib/apt/lists/* /tmp/* ~/*" shape="box"];
  "sha256:8d7a0429f5767f6a6f523ff4c21dbfd1bd2777bb81c6e9ecb32ddcc722e7ee5a" [label="sha256:8d7a0429f5767f6a6f523ff4c21dbfd1bd2777bb81c6e9ecb32ddcc722e7ee5a" shape="plaintext"];
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" -> "sha256:73918dc6be3c4492b4bb7a3a4b2d57b5f9f4a030f239ec2ff80723002736563f" [label=""];
  "sha256:73918dc6be3c4492b4bb7a3a4b2d57b5f9f4a030f239ec2ff80723002736563f" -> "sha256:8d7a0429f5767f6a6f523ff4c21dbfd1bd2777bb81c6e9ecb32ddcc722e7ee5a" [label=""];
}

