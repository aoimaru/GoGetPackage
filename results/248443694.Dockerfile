[app/sources/248443694.Dockerfile]
digraph {
  "sha256:634100cb47a053f5e5c0bf2be73d79905959b7ce74cce5dba76a5c39b184f678" [label="https://github.com/krallin/tini/releases/download/v0.14.0/tini" shape="ellipse"];
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel" shape="ellipse"];
  "sha256:727749cabab95c16f7405d7ca58ae9bcc03a1f0301640acf1f3e730d32fe7af6" [label="copy{src=/tini, dest=/tini}" shape="note"];
  "sha256:92bd4ad007d79db8ebcc0632bffb891f222272ac58cb917e44d4773b8a0f8b0b" [label="/bin/sh -c chmod +x /tini" shape="box"];
  "sha256:d4f1caa8af8fc769ddda09f7b6d4c0f94648eea541cd2d0849d4bec916be52ba" [label="/bin/sh -c apt-get update && apt-get install -y build-essential curl wget bzip2 ca-certificates libglib2.0-0 libxext6 libsm6 libxrender1 git vim mercurial subversion cmake libboost-dev libboost-system-dev libboost-filesystem-dev gcc g++" shape="box"];
  "sha256:5da5927aa723a3c5b4bc563cd4f607c32be5410a8b5571f1657e8b42d5503f7a" [label="/bin/sh -c mkdir -p /etc/OpenCL/vendors &&     echo \"libnvidia-opencl.so.1\" > /etc/OpenCL/vendors/nvidia.icd" shape="box"];
  "sha256:d4b12cbe408680d919c1f3bd20a7771a53f5a3470106aba8e63fa9ead7540134" [label="/bin/sh -c echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh &&     wget --quiet https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh -O ~/miniconda.sh &&     /bin/bash ~/miniconda.sh -b -p /opt/conda &&     rm ~/miniconda.sh" shape="box"];
  "sha256:63a2c310854d92ea01b53f1e785aa72c862aa0d9b5ded418fd92f4389353d712" [label="/bin/sh -c conda create -q -n py2 python=2.7 mkl numpy scipy scikit-learn jupyter notebook ipython pandas matplotlib" shape="box"];
  "sha256:5aeb2028f8c8a057ea59af8e9bcc13f666e3325fe59d03e11d0957addc4ce668" [label="/bin/sh -c conda create -q -n py3 python=3.5 mkl numpy scipy scikit-learn jupyter notebook ipython pandas matplotlib" shape="box"];
  "sha256:d336ea18164fb5ad9dd0e9796a344f516ff9a1eb3963dd30b9e852b3f5c628d8" [label="/bin/sh -c cd /usr/local/src && mkdir lightgbm && cd lightgbm &&     git clone --recursive https://github.com/microsoft/LightGBM &&     cd LightGBM && mkdir build && cd build &&     cmake -DUSE_GPU=1 -DOpenCL_LIBRARY=/usr/local/cuda/lib64/libOpenCL.so -DOpenCL_INCLUDE_DIR=/usr/local/cuda/include/ .. &&     make OPENCL_HEADERS=/usr/local/cuda-8.0/targets/x86_64-linux/include LIBOPENCL=/usr/local/cuda-8.0/targets/x86_64-linux/lib" shape="box"];
  "sha256:1bfb3689453529a12ee77f524fc898cf65a8a03b5900e86db20e6f67f2a18d3b" [label="/bin/sh -c /bin/bash -c \"source activate py2 && cd /usr/local/src/lightgbm/LightGBM/python-package && python setup.py install --precompile && source deactivate\"" shape="box"];
  "sha256:413e0159ba9e185b6b6135f1b0869dc9b88fd8efe2fd0bea6bfe503a6b7dc41b" [label="/bin/sh -c /bin/bash -c \"source activate py3 && cd /usr/local/src/lightgbm/LightGBM/python-package && python setup.py install --precompile && source deactivate\"" shape="box"];
  "sha256:0645452c00f6c6b36b82d237fc2635d5ef358c78762adc1d6e7fc492338d40b7" [label="/bin/sh -c apt-get autoremove -y && apt-get clean &&     rm -rf /var/lib/apt/lists/* &&     conda clean -i -l -t -y" shape="box"];
  "sha256:f9a68e74141bdfc3f39d79d4886923e19efaf81beada4b57700e5a4ba5654852" [label="/bin/sh -c mkdir -p -m 700 /root/.jupyter/ &&     echo \"c.NotebookApp.ip = '*'\" >> /root/.jupyter/jupyter_notebook_config.py" shape="box"];
  "sha256:35b37d719c30d8eb8692ae0a61809a8f6558c9f3aed048897875d83dd7d979e5" [label="mkdir{path=/home}" shape="note"];
  "sha256:8cc46b84a449d1998ac7b9c575867b443b221266bf9fc0f98160a48c9a50af0b" [label="sha256:8cc46b84a449d1998ac7b9c575867b443b221266bf9fc0f98160a48c9a50af0b" shape="plaintext"];
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" -> "sha256:727749cabab95c16f7405d7ca58ae9bcc03a1f0301640acf1f3e730d32fe7af6" [label=""];
  "sha256:634100cb47a053f5e5c0bf2be73d79905959b7ce74cce5dba76a5c39b184f678" -> "sha256:727749cabab95c16f7405d7ca58ae9bcc03a1f0301640acf1f3e730d32fe7af6" [label=""];
  "sha256:727749cabab95c16f7405d7ca58ae9bcc03a1f0301640acf1f3e730d32fe7af6" -> "sha256:92bd4ad007d79db8ebcc0632bffb891f222272ac58cb917e44d4773b8a0f8b0b" [label=""];
  "sha256:92bd4ad007d79db8ebcc0632bffb891f222272ac58cb917e44d4773b8a0f8b0b" -> "sha256:d4f1caa8af8fc769ddda09f7b6d4c0f94648eea541cd2d0849d4bec916be52ba" [label=""];
  "sha256:d4f1caa8af8fc769ddda09f7b6d4c0f94648eea541cd2d0849d4bec916be52ba" -> "sha256:5da5927aa723a3c5b4bc563cd4f607c32be5410a8b5571f1657e8b42d5503f7a" [label=""];
  "sha256:5da5927aa723a3c5b4bc563cd4f607c32be5410a8b5571f1657e8b42d5503f7a" -> "sha256:d4b12cbe408680d919c1f3bd20a7771a53f5a3470106aba8e63fa9ead7540134" [label=""];
  "sha256:d4b12cbe408680d919c1f3bd20a7771a53f5a3470106aba8e63fa9ead7540134" -> "sha256:63a2c310854d92ea01b53f1e785aa72c862aa0d9b5ded418fd92f4389353d712" [label=""];
  "sha256:63a2c310854d92ea01b53f1e785aa72c862aa0d9b5ded418fd92f4389353d712" -> "sha256:5aeb2028f8c8a057ea59af8e9bcc13f666e3325fe59d03e11d0957addc4ce668" [label=""];
  "sha256:5aeb2028f8c8a057ea59af8e9bcc13f666e3325fe59d03e11d0957addc4ce668" -> "sha256:d336ea18164fb5ad9dd0e9796a344f516ff9a1eb3963dd30b9e852b3f5c628d8" [label=""];
  "sha256:d336ea18164fb5ad9dd0e9796a344f516ff9a1eb3963dd30b9e852b3f5c628d8" -> "sha256:1bfb3689453529a12ee77f524fc898cf65a8a03b5900e86db20e6f67f2a18d3b" [label=""];
  "sha256:1bfb3689453529a12ee77f524fc898cf65a8a03b5900e86db20e6f67f2a18d3b" -> "sha256:413e0159ba9e185b6b6135f1b0869dc9b88fd8efe2fd0bea6bfe503a6b7dc41b" [label=""];
  "sha256:413e0159ba9e185b6b6135f1b0869dc9b88fd8efe2fd0bea6bfe503a6b7dc41b" -> "sha256:0645452c00f6c6b36b82d237fc2635d5ef358c78762adc1d6e7fc492338d40b7" [label=""];
  "sha256:0645452c00f6c6b36b82d237fc2635d5ef358c78762adc1d6e7fc492338d40b7" -> "sha256:f9a68e74141bdfc3f39d79d4886923e19efaf81beada4b57700e5a4ba5654852" [label=""];
  "sha256:f9a68e74141bdfc3f39d79d4886923e19efaf81beada4b57700e5a4ba5654852" -> "sha256:35b37d719c30d8eb8692ae0a61809a8f6558c9f3aed048897875d83dd7d979e5" [label=""];
  "sha256:35b37d719c30d8eb8692ae0a61809a8f6558c9f3aed048897875d83dd7d979e5" -> "sha256:8cc46b84a449d1998ac7b9c575867b443b221266bf9fc0f98160a48c9a50af0b" [label=""];
}

