[app/sources/250821256.Dockerfile]
digraph {
  "sha256:3e70f1de5a9b2a510a334646961ed7a4d446827ffa420a1baa59ccbf68fb05ff" [label="docker-image://docker.io/library/centos:7.1.1503" shape="ellipse"];
  "sha256:88de2129dfc3c06bf569b649d8ad54c97effd2f84691cce413ae3bfee8e16f73" [label="local://context" shape="ellipse"];
  "sha256:3013e5ea3d1501ee95de5de6a480feab2d80e229aefeaaa77df7621672eb77c3" [label="copy{src=/ssh_config, dest=/root/.ssh/config}" shape="note"];
  "sha256:37c51185c18ad5e3a10e360c791d0a0c1cdcc6f3e34f3b79345c89cb52605911" [label="/bin/sh -c yum swap -y fakesystemd systemd     && yum install -y epel-release     && yum install -y         openssh-clients openssh-server net-tools numactl         libmlx4 librdmacm libibverbs dapl rdma     && yum clean all     && mkdir -p /var/run/sshd     && ssh-keygen -A     && sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config     && sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config     && sed -i 's/#RSAAuthentication yes/RSAAuthentication yes/g' /etc/ssh/sshd_config     && sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g' /etc/ssh/sshd_config     && ssh-keygen -f /root/.ssh/id_rsa -t rsa -N ''     && chmod 600 /root/.ssh/config     && chmod 700 /root/.ssh     && cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys" shape="box"];
  "sha256:ae51613c23e86f1c0272d6f0dd59268d88455905d2144dd436860d7158febf6f" [label="copy{src=/l_comp_lib_2017.0.098_comp.cpp_redist.tgz, dest=/tmp/},copy{src=/l_mpi-rt_p_5.1.3.223.tgz, dest=/tmp/},copy{src=/l_mklb_p_2017.0.010.tgz, dest=/tmp/}" shape="note"];
  "sha256:53903e85b0bb8c5bf2647e65c72eafab1a31d162420eac9aa5465b88a832a58c" [label="/bin/sh -c cd /tmp/l_comp_lib_2017.0.098_comp.cpp_redist     && ./install.sh -i /opt/intel2 -e     && cd ..     && rm -rf l_comp_lib_2017.0.098_comp.cpp_redist     && cd l_mpi-rt_p_5.1.3.223     && sed -i -e 's/^ACCEPT_EULA=decline/ACCEPT_EULA=accept/g' silent.cfg     && sed -i -e 's,^PSET_INSTALL_DIR=.*,PSET_INSTALL_DIR=/opt/intel2,g' silent.cfg     && ./install.sh -s silent.cfg     && cd ..     && rm -rf l_mpi-rt_p_5.1.3.223     && cp -r l_mklb_p_2017.0.010/benchmarks_2017/linux/mkl /opt/intel2     && rm -rf l_mklb_p_2017.0.010" shape="box"];
  "sha256:6a0d082d387f6201317e762652b81e8aaba9638e9aa7347c11fd76745b116a8d" [label="copy{src=/findpq.py, dest=/sw/},copy{src=/run_hplinpack.sh, dest=/sw/},copy{src=/run_hpcg.sh, dest=/sw/}" shape="note"];
  "sha256:daf800c8ca0c9ae40a44bbb5db6d3c45396d828440c312c923838fa81495683f" [label="sha256:daf800c8ca0c9ae40a44bbb5db6d3c45396d828440c312c923838fa81495683f" shape="plaintext"];
  "sha256:3e70f1de5a9b2a510a334646961ed7a4d446827ffa420a1baa59ccbf68fb05ff" -> "sha256:3013e5ea3d1501ee95de5de6a480feab2d80e229aefeaaa77df7621672eb77c3" [label=""];
  "sha256:88de2129dfc3c06bf569b649d8ad54c97effd2f84691cce413ae3bfee8e16f73" -> "sha256:3013e5ea3d1501ee95de5de6a480feab2d80e229aefeaaa77df7621672eb77c3" [label=""];
  "sha256:3013e5ea3d1501ee95de5de6a480feab2d80e229aefeaaa77df7621672eb77c3" -> "sha256:37c51185c18ad5e3a10e360c791d0a0c1cdcc6f3e34f3b79345c89cb52605911" [label=""];
  "sha256:37c51185c18ad5e3a10e360c791d0a0c1cdcc6f3e34f3b79345c89cb52605911" -> "sha256:ae51613c23e86f1c0272d6f0dd59268d88455905d2144dd436860d7158febf6f" [label=""];
  "sha256:88de2129dfc3c06bf569b649d8ad54c97effd2f84691cce413ae3bfee8e16f73" -> "sha256:ae51613c23e86f1c0272d6f0dd59268d88455905d2144dd436860d7158febf6f" [label=""];
  "sha256:ae51613c23e86f1c0272d6f0dd59268d88455905d2144dd436860d7158febf6f" -> "sha256:53903e85b0bb8c5bf2647e65c72eafab1a31d162420eac9aa5465b88a832a58c" [label=""];
  "sha256:53903e85b0bb8c5bf2647e65c72eafab1a31d162420eac9aa5465b88a832a58c" -> "sha256:6a0d082d387f6201317e762652b81e8aaba9638e9aa7347c11fd76745b116a8d" [label=""];
  "sha256:88de2129dfc3c06bf569b649d8ad54c97effd2f84691cce413ae3bfee8e16f73" -> "sha256:6a0d082d387f6201317e762652b81e8aaba9638e9aa7347c11fd76745b116a8d" [label=""];
  "sha256:6a0d082d387f6201317e762652b81e8aaba9638e9aa7347c11fd76745b116a8d" -> "sha256:daf800c8ca0c9ae40a44bbb5db6d3c45396d828440c312c923838fa81495683f" [label=""];
}

