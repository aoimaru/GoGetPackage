[app/sources/325867806.Dockerfile]
digraph {
  "sha256:286cda7a99a95805fd7694229d9c65777e83cad7730791ba3ea32a7991f89efd" [label="docker-image://docker.io/nvidia/cuda:9.0-devel-ubuntu16.04" shape="ellipse"];
  "sha256:f6d9863cfa3df79368678eb7e2e7dcf29e3c68297265e63b747d677591ec3b80" [label="mkdir{path=/root}" shape="note"];
  "sha256:4ca25fd0b39566976e66a271dbc4af15a415d904232eb09fe00f0043ec40bc85" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:33d30558287fd3b0c07f35a17de8a6ba47db8ce4b8703790d58ae9e4b065402f" [label="/bin/sh -c apt-get install -y --allow-downgrades --allow-change-held-packages --no-install-recommends         build-essential         cmake         git         curl         vim         wget \tnet-tools         ethtool         perl         vim         lsb-release         iproute2         pciutils         libnl-route-3-200         kmod         libnuma1         lsof         iputils-ping         traceroute         ca-certificates         openssh-client         openssh-server         subversion         libcudnn7=${CUDNN_VERSION}         libnccl2=${NCCL_VERSION}         libnccl-dev=${NCCL_VERSION}         libjpeg-dev         libpng-dev         cython         python-dev \tpython3-dev \tpython-pip \tpython3-pip \tpython-tk \tpython3-tk         python-libxml2         python-setuptools         python3-setuptools         linux-headers-4.4.0-92-generic &&         rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:28d0d1978f66585ca1f0c5b9bdf115a7e01add8f6180efc1025201457974b638" [label="/bin/sh -c pip install 'numpy<1.15.0' tensorflow-gpu==${TENSORFLOW_VERSION} keras h5py torch==${PYTORCH_VERSION} torchvision ${MXNET_URL}" shape="box"];
  "sha256:1e3355bfc32d72772e5d96e899ea71181f371cf03fac2a1074e6d09ab7ba2326" [label="/bin/sh -c pip3 install 'numpy<1.15.0' tensorflow-gpu==${TENSORFLOW_VERSION} keras h5py torch==${PYTORCH_VERSION} torchvision ${MXNET_URL}" shape="box"];
  "sha256:94e20de040f871588d67cbe615ecb39a99463121a539f753ca2986fce3947764" [label="/bin/sh -c wget https://www.open-mpi.org/software/ompi/v3.1/downloads/openmpi-3.1.2.tar.gz &&     tar zxf openmpi-3.1.2.tar.gz &&     cd openmpi-3.1.2 &&     ./configure --enable-orterun-prefix-by-default &&     make -j $(nproc) all &&     make install &&     ldconfig &&     cd /root &&     rm -rf openmpi-3.1.2.tar.gz openmpi-3.1.2" shape="box"];
  "sha256:73867cf27406c66d6a1a9cb070561b335d7dec75661264be4c20b1f892c7362c" [label="/bin/sh -c ldconfig /usr/local/cuda-9.0/targets/x86_64-linux/lib/stubs &&     HOROVOD_GPU_ALLREDUCE=NCCL HOROVOD_WITH_TENSORFLOW=1 HOROVOD_WITH_PYTORCH=1 HOROVOD_WITH_MXNET=1 pip install --no-cache-dir horovod &&     ldconfig" shape="box"];
  "sha256:69b190ef1baabdfb7fd2d01d406b0ad8b0404885c9b073d2363cfa3b2d87af84" [label="/bin/sh -c mv /usr/local/bin/mpirun /usr/local/bin/mpirun.real &&     echo '#!/bin/bash' > /usr/local/bin/mpirun &&     echo 'mpirun.real --allow-run-as-root \"$@\"' >> /usr/local/bin/mpirun &&     chmod a+x /usr/local/bin/mpirun" shape="box"];
  "sha256:7493ffa9e0f9a1d4b50b60dd635091839086974912857fef45099ce866efabbf" [label="/bin/sh -c echo \"hwloc_base_binding_policy = none\" >> /usr/local/etc/openmpi-mca-params.conf &&     echo \"rmaps_base_mapping_policy = slot\" >> /usr/local/etc/openmpi-mca-params.conf &&     echo \"btl_tcp_if_exclude = lo,docker0\" >> /usr/local/etc/openmpi-mca-params.conf" shape="box"];
  "sha256:1fe2e85c7c540d32e1bf25aa852d88cc8e447ae7d57d8071c5c8b22dda945dc8" [label="/bin/sh -c echo NCCL_DEBUG=INFO >> /etc/nccl.conf" shape="box"];
  "sha256:7881ea9c36efc36d67b7f96f1741588a85c32f8502f6aa4fd2902d7517805c6a" [label="/bin/sh -c mkdir -p /var/run/sshd" shape="box"];
  "sha256:5982e3f56bae968ba7c5b9a8ba46446d52760048a300e5d738f0625b378986fa" [label="/bin/sh -c cat /etc/ssh/ssh_config | grep -v StrictHostKeyChecking > /etc/ssh/ssh_config.new &&     echo \"    StrictHostKeyChecking no\" >> /etc/ssh/ssh_config.new &&     mv /etc/ssh/ssh_config.new /etc/ssh/ssh_config" shape="box"];
  "sha256:8df54a8d1f472336fc80972c09101d3a95af467fede50bb70e1a24ffdf06b99c" [label="/bin/sh -c svn checkout https://github.com/horovod/horovod/trunk/examples &&     rm -rf /examples/.svn" shape="box"];
  "sha256:872ce798afd029a8881abe10f31a0c8477a37e452baf0d7aa8e1a08e822e923e" [label="/bin/sh -c cd /root &&     wget http://content.mellanox.com/ofed/${MOFED_SITE_PLACE}/${MOFED_IMAGE} &&     tar -xzvf ${MOFED_IMAGE} &&     ${MOFED_DIR}/mlnxofedinstall --user-space-only --without-fw-update --all -q &&     cd /root &&     rm -rf ${MOFED_DIR} &&     rm -rf *.tgz" shape="box"];
  "sha256:658272dbdf0b87e26584efa39df90238becbbfd0aa3d6e06e4a4f26e5d4997ef" [label="mkdir{path=/root}" shape="note"];
  "sha256:f2c01c0bc59c5d3679d95243cad7f2877e05afabe569003b3ea3dd765d5ef79f" [label="sha256:f2c01c0bc59c5d3679d95243cad7f2877e05afabe569003b3ea3dd765d5ef79f" shape="plaintext"];
  "sha256:286cda7a99a95805fd7694229d9c65777e83cad7730791ba3ea32a7991f89efd" -> "sha256:f6d9863cfa3df79368678eb7e2e7dcf29e3c68297265e63b747d677591ec3b80" [label=""];
  "sha256:f6d9863cfa3df79368678eb7e2e7dcf29e3c68297265e63b747d677591ec3b80" -> "sha256:4ca25fd0b39566976e66a271dbc4af15a415d904232eb09fe00f0043ec40bc85" [label=""];
  "sha256:4ca25fd0b39566976e66a271dbc4af15a415d904232eb09fe00f0043ec40bc85" -> "sha256:33d30558287fd3b0c07f35a17de8a6ba47db8ce4b8703790d58ae9e4b065402f" [label=""];
  "sha256:33d30558287fd3b0c07f35a17de8a6ba47db8ce4b8703790d58ae9e4b065402f" -> "sha256:28d0d1978f66585ca1f0c5b9bdf115a7e01add8f6180efc1025201457974b638" [label=""];
  "sha256:28d0d1978f66585ca1f0c5b9bdf115a7e01add8f6180efc1025201457974b638" -> "sha256:1e3355bfc32d72772e5d96e899ea71181f371cf03fac2a1074e6d09ab7ba2326" [label=""];
  "sha256:1e3355bfc32d72772e5d96e899ea71181f371cf03fac2a1074e6d09ab7ba2326" -> "sha256:94e20de040f871588d67cbe615ecb39a99463121a539f753ca2986fce3947764" [label=""];
  "sha256:94e20de040f871588d67cbe615ecb39a99463121a539f753ca2986fce3947764" -> "sha256:73867cf27406c66d6a1a9cb070561b335d7dec75661264be4c20b1f892c7362c" [label=""];
  "sha256:73867cf27406c66d6a1a9cb070561b335d7dec75661264be4c20b1f892c7362c" -> "sha256:69b190ef1baabdfb7fd2d01d406b0ad8b0404885c9b073d2363cfa3b2d87af84" [label=""];
  "sha256:69b190ef1baabdfb7fd2d01d406b0ad8b0404885c9b073d2363cfa3b2d87af84" -> "sha256:7493ffa9e0f9a1d4b50b60dd635091839086974912857fef45099ce866efabbf" [label=""];
  "sha256:7493ffa9e0f9a1d4b50b60dd635091839086974912857fef45099ce866efabbf" -> "sha256:1fe2e85c7c540d32e1bf25aa852d88cc8e447ae7d57d8071c5c8b22dda945dc8" [label=""];
  "sha256:1fe2e85c7c540d32e1bf25aa852d88cc8e447ae7d57d8071c5c8b22dda945dc8" -> "sha256:7881ea9c36efc36d67b7f96f1741588a85c32f8502f6aa4fd2902d7517805c6a" [label=""];
  "sha256:7881ea9c36efc36d67b7f96f1741588a85c32f8502f6aa4fd2902d7517805c6a" -> "sha256:5982e3f56bae968ba7c5b9a8ba46446d52760048a300e5d738f0625b378986fa" [label=""];
  "sha256:5982e3f56bae968ba7c5b9a8ba46446d52760048a300e5d738f0625b378986fa" -> "sha256:8df54a8d1f472336fc80972c09101d3a95af467fede50bb70e1a24ffdf06b99c" [label=""];
  "sha256:8df54a8d1f472336fc80972c09101d3a95af467fede50bb70e1a24ffdf06b99c" -> "sha256:872ce798afd029a8881abe10f31a0c8477a37e452baf0d7aa8e1a08e822e923e" [label=""];
  "sha256:872ce798afd029a8881abe10f31a0c8477a37e452baf0d7aa8e1a08e822e923e" -> "sha256:658272dbdf0b87e26584efa39df90238becbbfd0aa3d6e06e4a4f26e5d4997ef" [label=""];
  "sha256:658272dbdf0b87e26584efa39df90238becbbfd0aa3d6e06e4a4f26e5d4997ef" -> "sha256:f2c01c0bc59c5d3679d95243cad7f2877e05afabe569003b3ea3dd765d5ef79f" [label=""];
}
