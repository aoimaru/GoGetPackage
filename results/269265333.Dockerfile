[app/sources/269265333.Dockerfile]
digraph {
  "sha256:db853c8afe548c048b0984d2817ae386da4fdf8bff8ec9016e2732f20df3290c" [label="docker-image://docker.io/jetbrains/teamcity-agent:latest" shape="ellipse"];
  "sha256:693611f71122eb687aef24a4d14b657252a89dbda24c2975ed0db35cd9760d87" [label="/bin/sh -c NVIDIA_GPGKEY_SUM=d1be581509378368edeec8c1eb2958702feedf3bc3d17011adbf24efacce4ab5 &&     NVIDIA_GPGKEY_FPR=ae09fe4bbd223a84b2ccfce3f60f4b3d7fa2af80 &&     apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub &&     apt-key adv --export --no-emit-version -a $NVIDIA_GPGKEY_FPR | tail -n +5 > cudasign.pub &&     echo \"$NVIDIA_GPGKEY_SUM  cudasign.pub\" | sha256sum -c --strict - && rm cudasign.pub &&     echo \"deb http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64 /\" > /etc/apt/sources.list.d/cuda.list &&     echo \"deb http://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /\" > /etc/apt/sources.list.d/nvidia-ml.list" shape="box"];
  "sha256:c23366354d33bde76075ce3adb0a0aac0fed85c3eaec67bbfb1086f0c303d0df" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         cuda-cudart-$CUDA_PKG_VERSION &&     ln -s cuda-9.0 /usr/local/cuda &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b7a5066f16300b689d965337e03a82195c7d1a60d90b8917edb270835ddd71ba" [label="/bin/sh -c echo \"/usr/local/nvidia/lib\" >> /etc/ld.so.conf.d/nvidia.conf &&     echo \"/usr/local/nvidia/lib64\" >> /etc/ld.so.conf.d/nvidia.conf" shape="box"];
  "sha256:4fa52d4d928f6843cdb34adbe842affcb7efd516127c47257e0855640e73f39a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         cuda-libraries-$CUDA_PKG_VERSION         libnccl2=$NCCL_VERSION-1+cuda9.0 &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c2e2d157e9dc6754414e8733ffd2912d044936ced94332a57187daf84dfb0a50" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends             libcudnn7=$CUDNN_VERSION-1+cuda9.0 &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1c3a01ae8cdb496ddb0f0458b6179d4a18c0d863f43303adb56064ec3989d2d1" [label="/bin/sh -c apt-get update && apt-get install -y python3-pip" shape="box"];
  "sha256:63825ad40f95f66142b697906497b03eb21d14224fda128d4255711100bfda95" [label="/bin/sh -c pip3 install --upgrade pip" shape="box"];
  "sha256:c805ef2076cce6d67866bbcc79c10e640e320011e53a324337064b2149f86106" [label="local://context" shape="ellipse"];
  "sha256:344f324d5008ef470841be0dd621e0e47912c132df34e53dd9d192c8ca3070d5" [label="copy{src=/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:27dd58e98ba184edb300b4d7d93765e7614d5a7d41fa22bf322c67c95340040e" [label="/bin/sh -c pip3 install -r requirements.txt" shape="box"];
  "sha256:589c451ec3f0b86c7c391a3c180d894340c2ece0da1f28818ab5d166df8deba6" [label="/bin/sh -c curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash" shape="box"];
  "sha256:377a487a8b1f1d0a7864fc19d72fec1c78d4df0cd0c077501469c87eb24d843d" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends             git-lfs &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fc733ee0645b2f9c9349d2e019236c5a2df85c8cab482cb9ea9af65ea675d04d" [label="/bin/sh -c git lfs install" shape="box"];
  "sha256:39d3714743c21117de7ca6eda18cc9622a434e28e83d9a6e02a005a12f17661f" [label="sha256:39d3714743c21117de7ca6eda18cc9622a434e28e83d9a6e02a005a12f17661f" shape="plaintext"];
  "sha256:db853c8afe548c048b0984d2817ae386da4fdf8bff8ec9016e2732f20df3290c" -> "sha256:693611f71122eb687aef24a4d14b657252a89dbda24c2975ed0db35cd9760d87" [label=""];
  "sha256:693611f71122eb687aef24a4d14b657252a89dbda24c2975ed0db35cd9760d87" -> "sha256:c23366354d33bde76075ce3adb0a0aac0fed85c3eaec67bbfb1086f0c303d0df" [label=""];
  "sha256:c23366354d33bde76075ce3adb0a0aac0fed85c3eaec67bbfb1086f0c303d0df" -> "sha256:b7a5066f16300b689d965337e03a82195c7d1a60d90b8917edb270835ddd71ba" [label=""];
  "sha256:b7a5066f16300b689d965337e03a82195c7d1a60d90b8917edb270835ddd71ba" -> "sha256:4fa52d4d928f6843cdb34adbe842affcb7efd516127c47257e0855640e73f39a" [label=""];
  "sha256:4fa52d4d928f6843cdb34adbe842affcb7efd516127c47257e0855640e73f39a" -> "sha256:c2e2d157e9dc6754414e8733ffd2912d044936ced94332a57187daf84dfb0a50" [label=""];
  "sha256:c2e2d157e9dc6754414e8733ffd2912d044936ced94332a57187daf84dfb0a50" -> "sha256:1c3a01ae8cdb496ddb0f0458b6179d4a18c0d863f43303adb56064ec3989d2d1" [label=""];
  "sha256:1c3a01ae8cdb496ddb0f0458b6179d4a18c0d863f43303adb56064ec3989d2d1" -> "sha256:63825ad40f95f66142b697906497b03eb21d14224fda128d4255711100bfda95" [label=""];
  "sha256:63825ad40f95f66142b697906497b03eb21d14224fda128d4255711100bfda95" -> "sha256:344f324d5008ef470841be0dd621e0e47912c132df34e53dd9d192c8ca3070d5" [label=""];
  "sha256:c805ef2076cce6d67866bbcc79c10e640e320011e53a324337064b2149f86106" -> "sha256:344f324d5008ef470841be0dd621e0e47912c132df34e53dd9d192c8ca3070d5" [label=""];
  "sha256:344f324d5008ef470841be0dd621e0e47912c132df34e53dd9d192c8ca3070d5" -> "sha256:27dd58e98ba184edb300b4d7d93765e7614d5a7d41fa22bf322c67c95340040e" [label=""];
  "sha256:27dd58e98ba184edb300b4d7d93765e7614d5a7d41fa22bf322c67c95340040e" -> "sha256:589c451ec3f0b86c7c391a3c180d894340c2ece0da1f28818ab5d166df8deba6" [label=""];
  "sha256:589c451ec3f0b86c7c391a3c180d894340c2ece0da1f28818ab5d166df8deba6" -> "sha256:377a487a8b1f1d0a7864fc19d72fec1c78d4df0cd0c077501469c87eb24d843d" [label=""];
  "sha256:377a487a8b1f1d0a7864fc19d72fec1c78d4df0cd0c077501469c87eb24d843d" -> "sha256:fc733ee0645b2f9c9349d2e019236c5a2df85c8cab482cb9ea9af65ea675d04d" [label=""];
  "sha256:fc733ee0645b2f9c9349d2e019236c5a2df85c8cab482cb9ea9af65ea675d04d" -> "sha256:39d3714743c21117de7ca6eda18cc9622a434e28e83d9a6e02a005a12f17661f" [label=""];
}

