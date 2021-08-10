[app/sources/260798828.Dockerfile]
digraph {
  "sha256:589360621ac4441b39ee24bf05bfad68bdd1df6d6f42b2ee1962d451fb842f7d" [label="docker-image://docker.io/aztk/spark:v0.1.0-spark1.6.3-base" shape="ellipse"];
  "sha256:f3e77752a49ca2d14addf0f4fff535366a04e0460c8d915bfa4471aa733b2d97" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends ca-certificates apt-transport-https gnupg-curl &&     rm -rf /var/lib/apt/lists/* &&     NVIDIA_GPGKEY_SUM=d1be581509378368edeec8c1eb2958702feedf3bc3d17011adbf24efacce4ab5 &&     NVIDIA_GPGKEY_FPR=ae09fe4bbd223a84b2ccfce3f60f4b3d7fa2af80 &&     apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub &&     apt-key adv --export --no-emit-version -a $NVIDIA_GPGKEY_FPR | tail -n +5 > cudasign.pub &&     echo \"$NVIDIA_GPGKEY_SUM  cudasign.pub\" | sha256sum -c --strict - && rm cudasign.pub &&     echo \"deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64 /\" > /etc/apt/sources.list.d/cuda.list" shape="box"];
  "sha256:c3b5aa9240ef13d8121e8dd65da9ad0ddc3db903cdc35abb615eb5728d0395a0" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         cuda-core-$CUDA_PKG_VERSION         cuda-misc-headers-$CUDA_PKG_VERSION         cuda-command-line-tools-$CUDA_PKG_VERSION         cuda-nvrtc-dev-$CUDA_PKG_VERSION         cuda-nvml-dev-$CUDA_PKG_VERSION         cuda-nvgraph-dev-$CUDA_PKG_VERSION         cuda-cusolver-dev-$CUDA_PKG_VERSION         cuda-cublas-dev-8-0=8.0.61.1-1         cuda-cufft-dev-$CUDA_PKG_VERSION         cuda-curand-dev-$CUDA_PKG_VERSION         cuda-cusparse-dev-$CUDA_PKG_VERSION         cuda-npp-dev-$CUDA_PKG_VERSION         cuda-cudart-dev-$CUDA_PKG_VERSION &&     ln -s cuda-8.0 /usr/local/cuda &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:511b175fd25a9ace153e4759b2c7e952286096616740346f9118e7c3a2da8a87" [label="/bin/sh -c echo \"/usr/local/cuda/lib64\" >> /etc/ld.so.conf.d/cuda.conf &&     ldconfig" shape="box"];
  "sha256:82e44c2ad9347934246f6101ccb11771c914d43976ec132626760f7436868425" [label="/bin/sh -c echo \"/usr/local/nvidia/lib\" >> /etc/ld.so.conf.d/nvidia.conf &&     echo \"/usr/local/nvidia/lib64\" >> /etc/ld.so.conf.d/nvidia.conf" shape="box"];
  "sha256:b8703e8f79b7bf7f76d0f153ac69c69b0d594ec7a94b2bb866e561ccb78f536c" [label="/bin/sh -c echo \"deb https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /\" > /etc/apt/sources.list.d/nvidia-ml.list" shape="box"];
  "sha256:7c1172216721198faccd500233922d8709c117d6e34c4c7a64d3ddd24c2fe115" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends             libcudnn6=$CUDNN_VERSION-1+cuda8.0             libcudnn6-dev=$CUDNN_VERSION-1+cuda8.0 &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2c90a9dc1fa947f8d4e0c00a53adfb4e787175cd1b56d70eb2d045982383e7e3" [label="sha256:2c90a9dc1fa947f8d4e0c00a53adfb4e787175cd1b56d70eb2d045982383e7e3" shape="plaintext"];
  "sha256:589360621ac4441b39ee24bf05bfad68bdd1df6d6f42b2ee1962d451fb842f7d" -> "sha256:f3e77752a49ca2d14addf0f4fff535366a04e0460c8d915bfa4471aa733b2d97" [label=""];
  "sha256:f3e77752a49ca2d14addf0f4fff535366a04e0460c8d915bfa4471aa733b2d97" -> "sha256:c3b5aa9240ef13d8121e8dd65da9ad0ddc3db903cdc35abb615eb5728d0395a0" [label=""];
  "sha256:c3b5aa9240ef13d8121e8dd65da9ad0ddc3db903cdc35abb615eb5728d0395a0" -> "sha256:511b175fd25a9ace153e4759b2c7e952286096616740346f9118e7c3a2da8a87" [label=""];
  "sha256:511b175fd25a9ace153e4759b2c7e952286096616740346f9118e7c3a2da8a87" -> "sha256:82e44c2ad9347934246f6101ccb11771c914d43976ec132626760f7436868425" [label=""];
  "sha256:82e44c2ad9347934246f6101ccb11771c914d43976ec132626760f7436868425" -> "sha256:b8703e8f79b7bf7f76d0f153ac69c69b0d594ec7a94b2bb866e561ccb78f536c" [label=""];
  "sha256:b8703e8f79b7bf7f76d0f153ac69c69b0d594ec7a94b2bb866e561ccb78f536c" -> "sha256:7c1172216721198faccd500233922d8709c117d6e34c4c7a64d3ddd24c2fe115" [label=""];
  "sha256:7c1172216721198faccd500233922d8709c117d6e34c4c7a64d3ddd24c2fe115" -> "sha256:2c90a9dc1fa947f8d4e0c00a53adfb4e787175cd1b56d70eb2d045982383e7e3" [label=""];
}

