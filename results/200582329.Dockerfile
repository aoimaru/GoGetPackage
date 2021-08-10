[app/sources/200582329.Dockerfile]
digraph {
  "sha256:b6ff008003c6b032b2b724608c3b0b7d66a4288270dbe832fc9783c1af185316" [label="docker-image://docker.io/nvidia/cuda:9.2-cudnn7-devel-centos6" shape="ellipse"];
  "sha256:fb40fed130d4f84f083991eb531b4ba3992e3723a3967283760ee48401f64762" [label="docker-image://docker.io/skymindops/jenkins-agent:amd64-centos6" shape="ellipse"];
  "sha256:b5e8ae23b2b522a317a65a6e87d04ff1882c0ef714239f25c4dca8de541467a0" [label="copy{src=/opt, dest=/opt}" shape="note"];
  "sha256:f7353a8ea1fe223a1ba1eac32731cef43aa1a8334120f67be9bdd08d17581c49" [label="/bin/sh -c yum install -y         centos-release-scl-rh         epel-release &&     yum update -y &&     yum install -y         devtoolset-6-toolchain         devtoolset-6-libasan-devel         devtoolset-6-liblsan-devel         devtoolset-7-toolchain         devtoolset-7-libasan-devel         devtoolset-7-liblsan-devel         tar         wget         curl         openssl         ca-certificates         git         rpm-build         java-1.8.0-openjdk-devel         which         gtk2-devel         python-argparse         python-pip &&     yum clean all && rm -rf /var/cache/yum &&     ln -s /opt/maven/bin/mvn /usr/bin/mvn &&     ln -s /opt/python27/bin/python2.7 /usr/local/bin/python &&     ln -s /opt/python36/bin/python3.6 /usr/local/bin/python3 &&     ln -s /opt/python36/bin/pip3.6 /usr/local/bin/pip3" shape="box"];
  "sha256:764960d69ff893d999f77a6283644e7d973f639a2ce7c0d98f3530d29b189b28" [label="/bin/sh -c pip install --no-cache-dir Cython --install-option=\"--no-cython-compile\"" shape="box"];
  "sha256:40d66d3117eda723aa6de7e1d2d1c5ae10783c62dcdec7cc9857314ec9eabd17" [label="/bin/sh -c ln -s /usr/local/cuda/lib64/stubs/libcuda.so /usr/local/cuda/lib64/stubs/libcuda.so.1" shape="box"];
  "sha256:10e1437d3fff7d9d14d8ca95eeb97c36b34cd85b00b21c83a20bfad9a56feaa1" [label="/bin/sh -c groupadd jenkins -g 1001 && useradd -d ${HOME} -u 1001 -g 1001 -m jenkins" shape="box"];
  "sha256:33e356098350c48f1447412a4307526e4588db79236b0ccb5044248f9a9a9594" [label="mkdir{path=/home/jenkins}" shape="note"];
  "sha256:ffe43d2d5ac8898b208ec97af92bf0941e172734d98864ca6390a251e62608ae" [label="/bin/sh -c echo 'source /opt/rh/devtoolset-6/enable' >> \"${HOME}/.bashrc\"" shape="box"];
  "sha256:73fd89283515c4925793bd01780e7abada0cdeab44a5931b8cbb4bc813a59b77" [label="sha256:73fd89283515c4925793bd01780e7abada0cdeab44a5931b8cbb4bc813a59b77" shape="plaintext"];
  "sha256:b6ff008003c6b032b2b724608c3b0b7d66a4288270dbe832fc9783c1af185316" -> "sha256:b5e8ae23b2b522a317a65a6e87d04ff1882c0ef714239f25c4dca8de541467a0" [label=""];
  "sha256:fb40fed130d4f84f083991eb531b4ba3992e3723a3967283760ee48401f64762" -> "sha256:b5e8ae23b2b522a317a65a6e87d04ff1882c0ef714239f25c4dca8de541467a0" [label=""];
  "sha256:b5e8ae23b2b522a317a65a6e87d04ff1882c0ef714239f25c4dca8de541467a0" -> "sha256:f7353a8ea1fe223a1ba1eac32731cef43aa1a8334120f67be9bdd08d17581c49" [label=""];
  "sha256:f7353a8ea1fe223a1ba1eac32731cef43aa1a8334120f67be9bdd08d17581c49" -> "sha256:764960d69ff893d999f77a6283644e7d973f639a2ce7c0d98f3530d29b189b28" [label=""];
  "sha256:764960d69ff893d999f77a6283644e7d973f639a2ce7c0d98f3530d29b189b28" -> "sha256:40d66d3117eda723aa6de7e1d2d1c5ae10783c62dcdec7cc9857314ec9eabd17" [label=""];
  "sha256:40d66d3117eda723aa6de7e1d2d1c5ae10783c62dcdec7cc9857314ec9eabd17" -> "sha256:10e1437d3fff7d9d14d8ca95eeb97c36b34cd85b00b21c83a20bfad9a56feaa1" [label=""];
  "sha256:10e1437d3fff7d9d14d8ca95eeb97c36b34cd85b00b21c83a20bfad9a56feaa1" -> "sha256:33e356098350c48f1447412a4307526e4588db79236b0ccb5044248f9a9a9594" [label=""];
  "sha256:33e356098350c48f1447412a4307526e4588db79236b0ccb5044248f9a9a9594" -> "sha256:ffe43d2d5ac8898b208ec97af92bf0941e172734d98864ca6390a251e62608ae" [label=""];
  "sha256:ffe43d2d5ac8898b208ec97af92bf0941e172734d98864ca6390a251e62608ae" -> "sha256:73fd89283515c4925793bd01780e7abada0cdeab44a5931b8cbb4bc813a59b77" [label=""];
}

