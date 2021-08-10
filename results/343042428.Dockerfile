[app/sources/343042428.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:54a86bfbc6e785d6742ccdde2d24120b9d2691aeb77be424238fa8e2dcc30ac6" [label="/bin/sh -c apt-get update && apt-get install -y build-essential automake make cmake g++ wget git mercurial python3-pip curl" shape="box"];
  "sha256:fa40e7d8682e5ea6b78a5003b8c8b943e710d760d8a1e5fb7d465b2baa08ddd3" [label="/bin/sh -c pip3 install cython future scipy nltk requests xmltodict nose2" shape="box"];
  "sha256:5d068cf81323e3b5ea1f6376275a120259c20a6a70741b781db9d10ed5961d2b" [label="/bin/sh -c wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB &&     apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB &&     wget https://apt.repos.intel.com/setup/intelproducts.list -O /etc/apt/sources.list.d/intelproducts.list &&     apt-get update &&     apt-get install -y intel-mkl-64bit-2018.2-046" shape="box"];
  "sha256:afd7129fc1e5e153e9bbc0ca3634eed3c2f319cebd6d2fff2fd850e28d396820" [label="/bin/sh -c mkdir dynet-base &&     cd dynet-base &&     git clone https://github.com/clab/dynet.git &&     hg clone https://bitbucket.org/eigen/eigen -r b2e267d &&     cd dynet &&     mkdir build &&     cd build &&     cmake .. -DEIGEN3_INCLUDE_DIR=../../eigen -DPYTHON=/usr/bin/python3 -DMKL_ROOT=/opt/intel/mkl &&     make -j 2 &&     cd python &&     python3 ../../setup.py build --build-dir=.. --skip-build install" shape="box"];
  "sha256:7bd0e5f08c473bf59e2786be45493348582abea4c420c1b042b96c702e591e12" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y locales" shape="box"];
  "sha256:37089226589bd88bd75e5ed6658b7c1d96e30bd0ed197397764d3660f26ad42e" [label="/bin/sh -c sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen &&     locale-gen" shape="box"];
  "sha256:61808f54b838c74aed492da20c7969a9d6feafa2a0168bfcd815f5567ab183e5" [label="/bin/sh -c mkdir /work &&     cd /work &&     git clone https://github.com/adobe/NLP-Cube.git" shape="box"];
  "sha256:5ece6cfb64cd2b8ed2989cabf918be43cb3b4ae244bb43c362dfc8d4aaccdf91" [label="/bin/sh -c pip3 install jupyter" shape="box"];
  "sha256:5a96f2d38524a37a2ea9b74886cbd33ba0d643ded733aeace993519a398a0bd2" [label="sha256:5a96f2d38524a37a2ea9b74886cbd33ba0d643ded733aeace993519a398a0bd2" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:54a86bfbc6e785d6742ccdde2d24120b9d2691aeb77be424238fa8e2dcc30ac6" [label=""];
  "sha256:54a86bfbc6e785d6742ccdde2d24120b9d2691aeb77be424238fa8e2dcc30ac6" -> "sha256:fa40e7d8682e5ea6b78a5003b8c8b943e710d760d8a1e5fb7d465b2baa08ddd3" [label=""];
  "sha256:fa40e7d8682e5ea6b78a5003b8c8b943e710d760d8a1e5fb7d465b2baa08ddd3" -> "sha256:5d068cf81323e3b5ea1f6376275a120259c20a6a70741b781db9d10ed5961d2b" [label=""];
  "sha256:5d068cf81323e3b5ea1f6376275a120259c20a6a70741b781db9d10ed5961d2b" -> "sha256:afd7129fc1e5e153e9bbc0ca3634eed3c2f319cebd6d2fff2fd850e28d396820" [label=""];
  "sha256:afd7129fc1e5e153e9bbc0ca3634eed3c2f319cebd6d2fff2fd850e28d396820" -> "sha256:7bd0e5f08c473bf59e2786be45493348582abea4c420c1b042b96c702e591e12" [label=""];
  "sha256:7bd0e5f08c473bf59e2786be45493348582abea4c420c1b042b96c702e591e12" -> "sha256:37089226589bd88bd75e5ed6658b7c1d96e30bd0ed197397764d3660f26ad42e" [label=""];
  "sha256:37089226589bd88bd75e5ed6658b7c1d96e30bd0ed197397764d3660f26ad42e" -> "sha256:61808f54b838c74aed492da20c7969a9d6feafa2a0168bfcd815f5567ab183e5" [label=""];
  "sha256:61808f54b838c74aed492da20c7969a9d6feafa2a0168bfcd815f5567ab183e5" -> "sha256:5ece6cfb64cd2b8ed2989cabf918be43cb3b4ae244bb43c362dfc8d4aaccdf91" [label=""];
  "sha256:5ece6cfb64cd2b8ed2989cabf918be43cb3b4ae244bb43c362dfc8d4aaccdf91" -> "sha256:5a96f2d38524a37a2ea9b74886cbd33ba0d643ded733aeace993519a398a0bd2" [label=""];
}

