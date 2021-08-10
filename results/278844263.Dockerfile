[app/sources/278844263.Dockerfile]
digraph {
  "sha256:d446c9c89fe4279333cd2803438ab2141de5f84d08a0b95b7f2f8210b82d365d" [label="docker-image://docker.io/nvidia/cuda@sha256:40db1c98b66e133f54197ba1a66312b9c29842635c8cba5ae66fb56ded695b7c" shape="ellipse"];
  "sha256:1371ce206b9c83d3036afb80f9fd4fe32d46d2e4f056216b85be375840682e31" [label="/bin/sh -c apt-get -y update &&     apt-get -y install       nano       vim       joe       wget       curl       jq       gawk       psmisc       python       python-dev       python-pip       python3       python3-dev       python3-pip       openssh-server       openssh-client       build-essential       autotools-dev       cmake       git       bash-completion       ca-certificates       inotify-tools       rsync       realpath       libjpeg-dev       libpng-dev       net-tools       libsm6       libxext6       rpm       cpio       net-tools       libdapl2       dapl2-utils       libmlx4-1       libmlx5-1       ibutils       librdmacm1       libibverbs1       libmthca1       ibverbs-utils       rdmacm-utils       perftest       kmod" shape="box"];
  "sha256:0dad399739f1789cd47d8f0e086ecdde021a55efe050fc7248c44ba7be32dcfc" [label="/bin/sh -c wget https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64/nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb &&     dpkg -i nvidia-machine-learning-repo-ubuntu1604_1.0.0-1_amd64.deb &&     apt install libnccl2=2.3.7-1+cuda9.0 libnccl-dev=2.3.7-1+cuda9.0" shape="box"];
  "sha256:d2508b4fb73ec37a63210dd6bc241241a6faf019ff10b36d619e56a84b9bc2cb" [label="local://context" shape="ellipse"];
  "sha256:f2c38274a63372c6604f8a9cdfaba56f1bc4dcce35ff8d35f833617d87838178" [label="copy{src=/silent.cfg, dest=/silent.cfg}" shape="note"];
  "sha256:8f76f80b4168bebc9895f67e9258a3383d87cf6d095c4c78b3077a94ca0c311d" [label="/bin/sh -c wget http://registrationcenter-download.intel.com/akdlm/irc_nas/tec/9278/l_mpi_p_5.1.3.223.tgz &&     tar -xvf /l_mpi_p_5.1.3.223.tgz &&     cd /l_mpi_p_5.1.3.223 &&     ./install.sh -s /silent.cfg &&     . /opt/intel/bin/compilervars.sh &&     . /opt/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh &&     echo \"source /opt/intel/compilers_and_libraries/linux/mpi/bin64/mpivars.sh\" >> /root/.bashrc &&     echo LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:'$LD_LIBRARY_PATH' >> /root/.bashrc" shape="box"];
  "sha256:52a0faedfaeb29703216211e28f9dc5042b3feddb8ccc89be4c54a58cd0cc1be" [label="/bin/sh -c pip3 install tensorflow-gpu==${TENSORFLOW_VERSION} h5py &&     pip install tensorflow-gpu==${TENSORFLOW_VERSION} h5py" shape="box"];
  "sha256:97c5cf0bb96ba043d355f2f2aedd619e58c808dfebb1eaac85b3207a190b45f0" [label="/bin/sh -c pip3 install --no-cache-dir scipy jupyter ipykernel numpy toolz pandas scikit-learn pillow &&     pip install --no-cache-dir scipy numpy toolz pandas scikit-learn pillow" shape="box"];
  "sha256:cbbda48b2226acd369b3b077d4b78c6c24f4c0b61bb7d8c84ca080dd79422490" [label="/bin/sh -c ldconfig /usr/local/cuda-9.0/targets/x86_64-linux/lib/stubs && \t/bin/bash -c \"source /opt/intel/compilers_and_libraries/linux/mpi/intel64/bin/mpivars.sh\" &&     pip3 install --no-cache-dir horovod==0.15.2 &&     pip install --no-cache-dir horovod==0.15.2 &&     ldconfig" shape="box"];
  "sha256:78bae0907e43084277ae44b060d4acbecadbbbfd430208fb29a3e631ef9ced7e" [label="sha256:78bae0907e43084277ae44b060d4acbecadbbbfd430208fb29a3e631ef9ced7e" shape="plaintext"];
  "sha256:d446c9c89fe4279333cd2803438ab2141de5f84d08a0b95b7f2f8210b82d365d" -> "sha256:1371ce206b9c83d3036afb80f9fd4fe32d46d2e4f056216b85be375840682e31" [label=""];
  "sha256:1371ce206b9c83d3036afb80f9fd4fe32d46d2e4f056216b85be375840682e31" -> "sha256:0dad399739f1789cd47d8f0e086ecdde021a55efe050fc7248c44ba7be32dcfc" [label=""];
  "sha256:0dad399739f1789cd47d8f0e086ecdde021a55efe050fc7248c44ba7be32dcfc" -> "sha256:f2c38274a63372c6604f8a9cdfaba56f1bc4dcce35ff8d35f833617d87838178" [label=""];
  "sha256:d2508b4fb73ec37a63210dd6bc241241a6faf019ff10b36d619e56a84b9bc2cb" -> "sha256:f2c38274a63372c6604f8a9cdfaba56f1bc4dcce35ff8d35f833617d87838178" [label=""];
  "sha256:f2c38274a63372c6604f8a9cdfaba56f1bc4dcce35ff8d35f833617d87838178" -> "sha256:8f76f80b4168bebc9895f67e9258a3383d87cf6d095c4c78b3077a94ca0c311d" [label=""];
  "sha256:8f76f80b4168bebc9895f67e9258a3383d87cf6d095c4c78b3077a94ca0c311d" -> "sha256:52a0faedfaeb29703216211e28f9dc5042b3feddb8ccc89be4c54a58cd0cc1be" [label=""];
  "sha256:52a0faedfaeb29703216211e28f9dc5042b3feddb8ccc89be4c54a58cd0cc1be" -> "sha256:97c5cf0bb96ba043d355f2f2aedd619e58c808dfebb1eaac85b3207a190b45f0" [label=""];
  "sha256:97c5cf0bb96ba043d355f2f2aedd619e58c808dfebb1eaac85b3207a190b45f0" -> "sha256:cbbda48b2226acd369b3b077d4b78c6c24f4c0b61bb7d8c84ca080dd79422490" [label=""];
  "sha256:cbbda48b2226acd369b3b077d4b78c6c24f4c0b61bb7d8c84ca080dd79422490" -> "sha256:78bae0907e43084277ae44b060d4acbecadbbbfd430208fb29a3e631ef9ced7e" [label=""];
}
