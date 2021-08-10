[app/sources/269992273.Dockerfile]
digraph {
  "sha256:286cda7a99a95805fd7694229d9c65777e83cad7730791ba3ea32a7991f89efd" [label="docker-image://docker.io/nvidia/cuda:9.0-devel-ubuntu16.04" shape="ellipse"];
  "sha256:ccc97c43290973f41fd01450d65fab8edd0b119a1f578b5a54f078c94280ed37" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         autotools-dev         build-essential         python3-dev         clang         cmake         git         gfortran-multilib         libatlas-base-dev         liblapacke-dev         pkg-config         wget         curl         zlib1g-dev         ca-certificates         python-dev         automake         libtool         autoconf         subversion" shape="box"];
  "sha256:c9da8ea4e9c33d154e7826d8b6c183321aba18931fbebfdfbe44fcf9349d8b32" [label="/bin/sh -c apt-get install -y --no-install-recommends openjdk-8-jdk bash-completion &&     curl -fsSL https://github.com/bazelbuild/bazel/releases/download/0.7.0/bazel_0.7.0-linux-x86_64.deb -O &&     dpkg -i bazel_0.7.0-linux-x86_64.deb &&     rm bazel_0.7.0-linux-x86_64.deb" shape="box"];
  "sha256:d9c63e44d54993b20190d01c210a6d92ec5f2af1d716a9ce3aac5da3ff6e8bf9" [label="/bin/sh -c CUDNN_DOWNLOAD_SUM=1a3e076447d5b9860c73d9bebe7087ffcb7b0c8814fd1e506096435a2ad9ab0e &&     curl -fsSL http://developer.download.nvidia.com/compute/redist/cudnn/v7.0.5/cudnn-9.0-linux-x64-v7.tgz -O &&     echo \"$CUDNN_DOWNLOAD_SUM  cudnn-9.0-linux-x64-v7.tgz\" | sha256sum -c - &&     tar --no-same-owner -xzf cudnn-9.0-linux-x64-v7.tgz -C /usr/local &&     rm cudnn-9.0-linux-x64-v7.tgz &&     ldconfig" shape="box"];
  "sha256:c0f1df187f5c4abc1a8bc863c285f7bb223d765bde81ed13d0e10759a59dd4a7" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     python3-numpy python3-dev python3-pip python3-wheel python3-setuptools" shape="box"];
  "sha256:bf57208517cd19ba365d5a1b7fbb4e8384da34164d7c15dd95d8117bf0ad10d1" [label="sha256:bf57208517cd19ba365d5a1b7fbb4e8384da34164d7c15dd95d8117bf0ad10d1" shape="plaintext"];
  "sha256:286cda7a99a95805fd7694229d9c65777e83cad7730791ba3ea32a7991f89efd" -> "sha256:ccc97c43290973f41fd01450d65fab8edd0b119a1f578b5a54f078c94280ed37" [label=""];
  "sha256:ccc97c43290973f41fd01450d65fab8edd0b119a1f578b5a54f078c94280ed37" -> "sha256:c9da8ea4e9c33d154e7826d8b6c183321aba18931fbebfdfbe44fcf9349d8b32" [label=""];
  "sha256:c9da8ea4e9c33d154e7826d8b6c183321aba18931fbebfdfbe44fcf9349d8b32" -> "sha256:d9c63e44d54993b20190d01c210a6d92ec5f2af1d716a9ce3aac5da3ff6e8bf9" [label=""];
  "sha256:d9c63e44d54993b20190d01c210a6d92ec5f2af1d716a9ce3aac5da3ff6e8bf9" -> "sha256:c0f1df187f5c4abc1a8bc863c285f7bb223d765bde81ed13d0e10759a59dd4a7" [label=""];
  "sha256:c0f1df187f5c4abc1a8bc863c285f7bb223d765bde81ed13d0e10759a59dd4a7" -> "sha256:bf57208517cd19ba365d5a1b7fbb4e8384da34164d7c15dd95d8117bf0ad10d1" [label=""];
}

