[app/sources/377062496.Dockerfile]
digraph {
  "sha256:0171e19c083e6d10feabaa35891f987c655b3683c4165439a9428ddb99afab26" [label="docker-image://docker.io/nvidia/cudagl:10.0-base-ubuntu18.04" shape="ellipse"];
  "sha256:c8b3e86fa43bc1130f4de30a7e7808bb7bcc4b3096233099201f0aeef08cda72" [label="/bin/bash -c apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates     libglib2.0-0 libxext6 libsm6 libxrender1     git mercurial subversion" shape="box"];
  "sha256:860566ba31c8eca087611f5f2da6007d24b9fad8d845d27ececa19c216e76ebc" [label="/bin/bash -c wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O /tmp/miniconda.sh &&     /bin/bash /tmp/miniconda.sh -b -p /opt/conda &&     rm /tmp/miniconda.sh &&     ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh &&     echo \". /opt/conda/etc/profile.d/conda.sh\" >> /etc/bash.bashrc" shape="box"];
  "sha256:ee85e27b70990143f0dbfc11cf2c8df426325cf957af830ad22228eaf0eb468a" [label="/bin/bash -c apt-get install -y curl grep sed dpkg &&     TINI_VERSION=`curl https://github.com/krallin/tini/releases/latest | grep -o \"/v.*\\\"\" | sed 's:^..\\(.*\\).$:\\1:'` &&     curl -L \"https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini_${TINI_VERSION}.deb\" > tini.deb &&     dpkg -i tini.deb &&     rm tini.deb &&     apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:07bceffe7ab5df47cef8b552194d92b409947f24183b7daf19ab78e91d134f73" [label="/bin/bash -c conda update -y --name base conda     && conda clean --all -y" shape="box"];
  "sha256:5b83c47ae72803a6feb3c8694ef66d52dba2d9c1cba12ab3d1983bbc8e77a771" [label="/bin/bash -c apt-get update     && apt-get install -y --no-install-recommends         build-essential         cuda-command-line-tools-${CUDA/./-}         cuda-cublas-${CUDA/./-}         cuda-cufft-${CUDA/./-}         cuda-curand-${CUDA/./-}         cuda-cusolver-${CUDA/./-}         cuda-cusparse-${CUDA/./-}         curl         libcudnn7=${CUDNN}+cuda${CUDA}         libfreetype6-dev         libhdf5-serial-dev         libzmq3-dev         pkg-config         software-properties-common         zip         unzip     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7bd50eccf5858cd0c0996f1dae77d659b1b89e1c1d9822025c8a023ba9017322" [label="/bin/bash -c [ ${ARCH} = ppc64le ] || (apt-get update &&         apt-get install nvinfer-runtime-trt-repo-ubuntu${UBUNTU_VERSION/./}-5.0.2-ga-cuda${CUDA}         && apt-get update         && apt-get install -y --no-install-recommends libnvinfer5=5.0.2-1+cuda${CUDA}         && apt-get clean         && rm -rf /var/lib/apt/lists/*)" shape="box"];
  "sha256:a946bbc00da0e994be011eb3c51f437398af6e820f69f4d43218c64776c53bda" [label="/bin/bash -c apt-get update -y     && apt-get install -y --no-install-recommends         build-essential         curl         git         gnupg2         make         cmake         swig         libz-dev         unzip         zlib1g-dev         libglfw3         libglfw3-dev         libxrandr2         libxinerama-dev         libxi6         libxcursor-dev         libgl1-mesa-dev         libgl1-mesa-glx         libglew-dev         libosmesa6-dev         lsb-release         ack-grep         patchelf         vim         emacs         wget         xpra         xserver-xorg-dev         xvfb     && export CLOUD_SDK_REPO=\"cloud-sdk-$(lsb_release -c -s)\"     && echo \"deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main\"             | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list     && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg             | apt-key add -     && apt-get update -y     && apt-get install -y google-cloud-sdk     && apt-get clean     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:03dd9efd60dcabc4082b381a949810d06dcddb1b1e093a0ba0cf3f82d293d673" [label="local://context" shape="ellipse"];
  "sha256:cc31f0e09c5d0f40d9bb20c474bdfc541f58c22311ce88492c051bfead7f1ca3" [label="copy{src=/scripts/install_mujoco.py, dest=/tmp/}" shape="note"];
  "sha256:ac3f9cac9d5e8f908701fe88b6fb35b017068deade38ebc665c74378d5e7994f" [label="/bin/bash -c /tmp/install_mujoco.py --mujoco-path=/root/.mujoco --versions 1.50 2.00     && ln -s /root/.mujoco/mujoco200_linux /root/.mujoco/mujoco200     && rm /tmp/install_mujoco.py" shape="box"];
  "sha256:b85ebecd3e7351afe45daa7dd286b11d2c1aad6bf6906480725af9922c6d2b8b" [label="/bin/bash -c mkdir -p /usr/lib/nvidia-000" shape="box"];
  "sha256:15d3a525dcfc906c7106aac74985df0fe59caf9605feaa6a0d55ebe441842a67" [label="copy{src=/environment.yml, dest=/tmp/environment.yml}" shape="note"];
  "sha256:f565410b2337109238be4ab3fde18745c7b0c2e1f480c8c8c18f8c95246c4765" [label="copy{src=/requirements.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:e42e09823d7b7c5c3628a979ff7c89d7d524470b7b5f2cf5661087a2b796cf6c" [label="/bin/bash -c echo \"${MJKEY}\" > ~/.mujoco/mjkey.txt     && sed -i -e 's/^tensorflow==/tensorflow-gpu==/g' /tmp/requirements.txt     && conda env update -f /tmp/environment.yml     && conda clean --all -y     && rm ~/.mujoco/mjkey.txt" shape="box"];
  "sha256:1d285f4be2592dc7f4059496c972facc0483cdf101e7bdb279ef6af44a1442d9" [label="/bin/bash -c echo \"conda activate softlearning\" >> ~/.bashrc     && echo \"cd ~/softlearning\" >> ~/.bashrc" shape="box"];
  "sha256:61a3c9df07309077d577a752b408a523cc84077bb5805a4d531c3edfeff0886b" [label="/bin/bash -c mkdir -p /usr/lib/nvidia-384" shape="box"];
  "sha256:81201ce807245b5f4088dbac69c93f0bc37879d08e23cc9cff0bb1085f94f49c" [label="copy{src=/docker/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:6c9f0dcf18f8d6f2506318f00bbbeed443c4348c17ee689e518f11f4d31bd620" [label="sha256:6c9f0dcf18f8d6f2506318f00bbbeed443c4348c17ee689e518f11f4d31bd620" shape="plaintext"];
  "sha256:0171e19c083e6d10feabaa35891f987c655b3683c4165439a9428ddb99afab26" -> "sha256:c8b3e86fa43bc1130f4de30a7e7808bb7bcc4b3096233099201f0aeef08cda72" [label=""];
  "sha256:c8b3e86fa43bc1130f4de30a7e7808bb7bcc4b3096233099201f0aeef08cda72" -> "sha256:860566ba31c8eca087611f5f2da6007d24b9fad8d845d27ececa19c216e76ebc" [label=""];
  "sha256:860566ba31c8eca087611f5f2da6007d24b9fad8d845d27ececa19c216e76ebc" -> "sha256:ee85e27b70990143f0dbfc11cf2c8df426325cf957af830ad22228eaf0eb468a" [label=""];
  "sha256:ee85e27b70990143f0dbfc11cf2c8df426325cf957af830ad22228eaf0eb468a" -> "sha256:07bceffe7ab5df47cef8b552194d92b409947f24183b7daf19ab78e91d134f73" [label=""];
  "sha256:07bceffe7ab5df47cef8b552194d92b409947f24183b7daf19ab78e91d134f73" -> "sha256:5b83c47ae72803a6feb3c8694ef66d52dba2d9c1cba12ab3d1983bbc8e77a771" [label=""];
  "sha256:5b83c47ae72803a6feb3c8694ef66d52dba2d9c1cba12ab3d1983bbc8e77a771" -> "sha256:7bd50eccf5858cd0c0996f1dae77d659b1b89e1c1d9822025c8a023ba9017322" [label=""];
  "sha256:7bd50eccf5858cd0c0996f1dae77d659b1b89e1c1d9822025c8a023ba9017322" -> "sha256:a946bbc00da0e994be011eb3c51f437398af6e820f69f4d43218c64776c53bda" [label=""];
  "sha256:a946bbc00da0e994be011eb3c51f437398af6e820f69f4d43218c64776c53bda" -> "sha256:cc31f0e09c5d0f40d9bb20c474bdfc541f58c22311ce88492c051bfead7f1ca3" [label=""];
  "sha256:03dd9efd60dcabc4082b381a949810d06dcddb1b1e093a0ba0cf3f82d293d673" -> "sha256:cc31f0e09c5d0f40d9bb20c474bdfc541f58c22311ce88492c051bfead7f1ca3" [label=""];
  "sha256:cc31f0e09c5d0f40d9bb20c474bdfc541f58c22311ce88492c051bfead7f1ca3" -> "sha256:ac3f9cac9d5e8f908701fe88b6fb35b017068deade38ebc665c74378d5e7994f" [label=""];
  "sha256:ac3f9cac9d5e8f908701fe88b6fb35b017068deade38ebc665c74378d5e7994f" -> "sha256:b85ebecd3e7351afe45daa7dd286b11d2c1aad6bf6906480725af9922c6d2b8b" [label=""];
  "sha256:b85ebecd3e7351afe45daa7dd286b11d2c1aad6bf6906480725af9922c6d2b8b" -> "sha256:15d3a525dcfc906c7106aac74985df0fe59caf9605feaa6a0d55ebe441842a67" [label=""];
  "sha256:03dd9efd60dcabc4082b381a949810d06dcddb1b1e093a0ba0cf3f82d293d673" -> "sha256:15d3a525dcfc906c7106aac74985df0fe59caf9605feaa6a0d55ebe441842a67" [label=""];
  "sha256:15d3a525dcfc906c7106aac74985df0fe59caf9605feaa6a0d55ebe441842a67" -> "sha256:f565410b2337109238be4ab3fde18745c7b0c2e1f480c8c8c18f8c95246c4765" [label=""];
  "sha256:03dd9efd60dcabc4082b381a949810d06dcddb1b1e093a0ba0cf3f82d293d673" -> "sha256:f565410b2337109238be4ab3fde18745c7b0c2e1f480c8c8c18f8c95246c4765" [label=""];
  "sha256:f565410b2337109238be4ab3fde18745c7b0c2e1f480c8c8c18f8c95246c4765" -> "sha256:e42e09823d7b7c5c3628a979ff7c89d7d524470b7b5f2cf5661087a2b796cf6c" [label=""];
  "sha256:e42e09823d7b7c5c3628a979ff7c89d7d524470b7b5f2cf5661087a2b796cf6c" -> "sha256:1d285f4be2592dc7f4059496c972facc0483cdf101e7bdb279ef6af44a1442d9" [label=""];
  "sha256:1d285f4be2592dc7f4059496c972facc0483cdf101e7bdb279ef6af44a1442d9" -> "sha256:61a3c9df07309077d577a752b408a523cc84077bb5805a4d531c3edfeff0886b" [label=""];
  "sha256:61a3c9df07309077d577a752b408a523cc84077bb5805a4d531c3edfeff0886b" -> "sha256:81201ce807245b5f4088dbac69c93f0bc37879d08e23cc9cff0bb1085f94f49c" [label=""];
  "sha256:03dd9efd60dcabc4082b381a949810d06dcddb1b1e093a0ba0cf3f82d293d673" -> "sha256:81201ce807245b5f4088dbac69c93f0bc37879d08e23cc9cff0bb1085f94f49c" [label=""];
  "sha256:81201ce807245b5f4088dbac69c93f0bc37879d08e23cc9cff0bb1085f94f49c" -> "sha256:6c9f0dcf18f8d6f2506318f00bbbeed443c4348c17ee689e518f11f4d31bd620" [label=""];
}
