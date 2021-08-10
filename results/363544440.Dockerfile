[app/sources/363544440.Dockerfile]
digraph {
  "sha256:ac0d1bd5fa3e35449a09806de0648001bfb7a4a1b113b54e9ba8b0ed832aae0e" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn7-devel-ubuntu16.04" shape="ellipse"];
  "sha256:6fe729c5c2a562c91c2fd2aac3bc0813040fb2198f07e8deec802dde2fdabebb" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends openjdk-8-jdk-headless &&     apt-get install -y --no-install-recommends         libfreetype6-dev         libhdf5-serial-dev         libpng12-dev         libzmq3-dev         pkg-config         rsync         software-properties-common         zip unzip         zlib1g-dev         wget         imagemagick         graphviz         cmake \tgcc g++         curl \twget         rsync         sed         swig         git-core \tzip &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e19fc78eab49242ec079dcc27206064dbb00e6edbb0bda10fe3220244607afe0" [label="/bin/sh -c apt-get update &&     apt-get install nvinfer-runtime-trt-repo-ubuntu1604-4.0.1-ga-cuda8.0 &&     apt-get update &&     apt-get install libnvinfer4=4.1.2-1+cuda8.0 &&     apt-get install libnvinfer-dev=4.1.2-1+cuda8.0" shape="box"];
  "sha256:90335ee45e7c3a7ef6d51394f453e181e58ef0de0c2017f1fde03d21c774fd81" [label="/bin/sh -c mkdir /usr/local/cuda-8.0/lib &&      ln -s /usr/lib/x86_64-linux-gnu/libnccl.so.2 /usr/local/cuda/lib/libnccl.so.2 &&     ln -s /usr/include/nccl.h /usr/local/cuda/include/nccl.h" shape="box"];
  "sha256:24d943ae214fea8ee1147681306c52b0358cbb21235d6046a4a52b8d3ac05286" [label="/bin/sh -c ln -s /usr/local/cuda-8.0 /usr/local/cuda &&     ldconfig" shape="box"];
  "sha256:1510745cb11bf425a4ad23aac35d6d02b05abae99c52c1fff31034100a5f3a3a" [label="docker-image://docker.io/lablup/kernel-base:python3.6" shape="ellipse"];
  "sha256:455d6493d44166a0818842b805bc49501938b6918b17574ba3e334f7fbad5224" [label="copy{src=/python.tar.gz, dest=/}" shape="note"];
  "sha256:842dabe1dff9aa7f466d6595a779d06b0978b4b6317111ad099918a57ee745ab" [label="/bin/sh -c cd /; tar xzpf python.tar.gz; rm python.tar.gz; ldconfig" shape="box"];
  "sha256:2ed1784523d86ae03bb513f1ba890740d605ed2cbfb5ec1a098211499ae5ae6a" [label="/bin/sh -c mkdir /bazel &&     cd /bazel &&     curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\" -fSsL -O https://github.com/bazelbuild/bazel/releases/download/$BAZEL_VERSION/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     curl -H \"User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36\" -fSsL -o /bazel/LICENSE.txt https://raw.githubusercontent.com/bazelbuild/bazel/master/LICENSE &&     chmod +x bazel-*.sh &&     ./bazel-$BAZEL_VERSION-installer-linux-x86_64.sh &&     cd / &&     rm -f /bazel/bazel-$BAZEL_VERSION-installer-linux-x86_64.sh" shape="box"];
  "sha256:855f2cc0ba9c4f3985e9b5900e77391a0a53d384b523a78a954333eda9b92869" [label="/bin/sh -c bazel version; python -c \"import sys; print(sys.prefix); print(sys.version_info)\" &&     pip install --no-cache-dir wheel numpy scipy &&     pip install --no-cache-dir keras_applications &&     pip install --no-cache-dir keras_preprocessing &&     rm -f /tmp/*.whl" shape="box"];
  "sha256:f8df6cfa9f4f2620a2af5f64d3dbd9b9009406801444c9b57520a2ea4cd7a343" [label="/bin/sh -c : build TensorFlow pip package &&     cd /tmp &&     curl -SL https://github.com/tensorflow/tensorflow/archive/r${TF_VERSION}.tar.gz | tar xzf - &&     ldconfig" shape="box"];
  "sha256:202134a8db81e446be5753ce9cc3d15738824be123bebe61bbe75aac6e5b8163" [label="/bin/sh -c cd /tmp/tensorflow-r${TF_VERSION} &&     ln -s /usr/local/cuda/lib64/stubs/libcuda.so /usr/local/cuda/lib64/stubs/libcuda.so.1 &&         LD_LIBRARY_PATH=/usr/local/cuda/lib64/stubs:${LD_LIBRARY_PATH}         tensorflow/tools/ci_build/builds/configured GPU     bazel build     \t-c opt \t--copt=-mavx \t--config=cuda         --cxxopt=\"-D_GLIBCXX_USE_CXX11_ABI=0\" \ttensorflow/tools/pip_package:build_pip_package &&     rm /usr/local/cuda/lib64/stubs/libcuda.so.1 &&     bazel-bin/tensorflow/tools/pip_package/build_pip_package /tmp/tensorflow_pkg &&     rm -fr /root/*.cache" shape="box"];
  "sha256:324829ebf6135699ef3cd3b3442cb78415fdc1a7f0559cdeb7b0ab39f8527e68" [label="/bin/sh -c ls -lh /tmp/tensorflow_pkg" shape="box"];
  "sha256:470ab7a3add474cf44641ec71fb3de41d3fc2a35640158e3630d4e55927d2a9f" [label="sha256:470ab7a3add474cf44641ec71fb3de41d3fc2a35640158e3630d4e55927d2a9f" shape="plaintext"];
  "sha256:ac0d1bd5fa3e35449a09806de0648001bfb7a4a1b113b54e9ba8b0ed832aae0e" -> "sha256:6fe729c5c2a562c91c2fd2aac3bc0813040fb2198f07e8deec802dde2fdabebb" [label=""];
  "sha256:6fe729c5c2a562c91c2fd2aac3bc0813040fb2198f07e8deec802dde2fdabebb" -> "sha256:e19fc78eab49242ec079dcc27206064dbb00e6edbb0bda10fe3220244607afe0" [label=""];
  "sha256:e19fc78eab49242ec079dcc27206064dbb00e6edbb0bda10fe3220244607afe0" -> "sha256:90335ee45e7c3a7ef6d51394f453e181e58ef0de0c2017f1fde03d21c774fd81" [label=""];
  "sha256:90335ee45e7c3a7ef6d51394f453e181e58ef0de0c2017f1fde03d21c774fd81" -> "sha256:24d943ae214fea8ee1147681306c52b0358cbb21235d6046a4a52b8d3ac05286" [label=""];
  "sha256:24d943ae214fea8ee1147681306c52b0358cbb21235d6046a4a52b8d3ac05286" -> "sha256:455d6493d44166a0818842b805bc49501938b6918b17574ba3e334f7fbad5224" [label=""];
  "sha256:1510745cb11bf425a4ad23aac35d6d02b05abae99c52c1fff31034100a5f3a3a" -> "sha256:455d6493d44166a0818842b805bc49501938b6918b17574ba3e334f7fbad5224" [label=""];
  "sha256:455d6493d44166a0818842b805bc49501938b6918b17574ba3e334f7fbad5224" -> "sha256:842dabe1dff9aa7f466d6595a779d06b0978b4b6317111ad099918a57ee745ab" [label=""];
  "sha256:842dabe1dff9aa7f466d6595a779d06b0978b4b6317111ad099918a57ee745ab" -> "sha256:2ed1784523d86ae03bb513f1ba890740d605ed2cbfb5ec1a098211499ae5ae6a" [label=""];
  "sha256:2ed1784523d86ae03bb513f1ba890740d605ed2cbfb5ec1a098211499ae5ae6a" -> "sha256:855f2cc0ba9c4f3985e9b5900e77391a0a53d384b523a78a954333eda9b92869" [label=""];
  "sha256:855f2cc0ba9c4f3985e9b5900e77391a0a53d384b523a78a954333eda9b92869" -> "sha256:f8df6cfa9f4f2620a2af5f64d3dbd9b9009406801444c9b57520a2ea4cd7a343" [label=""];
  "sha256:f8df6cfa9f4f2620a2af5f64d3dbd9b9009406801444c9b57520a2ea4cd7a343" -> "sha256:202134a8db81e446be5753ce9cc3d15738824be123bebe61bbe75aac6e5b8163" [label=""];
  "sha256:202134a8db81e446be5753ce9cc3d15738824be123bebe61bbe75aac6e5b8163" -> "sha256:324829ebf6135699ef3cd3b3442cb78415fdc1a7f0559cdeb7b0ab39f8527e68" [label=""];
  "sha256:324829ebf6135699ef3cd3b3442cb78415fdc1a7f0559cdeb7b0ab39f8527e68" -> "sha256:470ab7a3add474cf44641ec71fb3de41d3fc2a35640158e3630d4e55927d2a9f" [label=""];
}
