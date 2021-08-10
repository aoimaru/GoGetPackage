[app/sources/314508700.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:5d0ef5fa9b96351d83c58d20007c377330cbf659aae4028640bf19123a153114" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends ca-certificates apt-transport-https gnupg2 curl &&         curl -fsSL https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub | apt-key add - &&         echo \"deb https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64 /\" > /etc/apt/sources.list.d/cuda.list &&         echo \"deb https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1604/x86_64 /\" > /etc/apt/sources.list.d/nvidia-ml.list" shape="box"];
  "sha256:d557023986f5fe98351a2135d5723414274a5031d3ddf674813e347e22acc3c9" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         cuda-cudart-$CUDA_PKG_VERSION &&         ln -s cuda-9.0 /usr/local/cuda" shape="box"];
  "sha256:c2529f19bc5d96f255c1b54424fb850bcfd25a71eaf79ba164fdb55344c9a7af" [label="/bin/sh -c echo \"/usr/local/nvidia/lib\" >> /etc/ld.so.conf.d/nvidia.conf && echo \"/usr/local/nvidia/lib64\" >> /etc/ld.so.conf.d/nvidia.conf" shape="box"];
  "sha256:5c0f28650958d318c389151af96c23842890302cbc3ffb7aaab30b4106366fbd" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         cuda-libraries-$CUDA_PKG_VERSION         cuda-cublas-9-0=9.0.176.3-1         libnccl2=$NCCL_VERSION-1+cuda9.0" shape="box"];
  "sha256:5ceba331006af7f1d2e6eb46dcf8e9898b391187f4d804e66957475d7cb32c22" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         libcudnn7=$CUDNN_VERSION-1+cuda9.0 &&         rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:b38e769202c87dbf67987fcb07b6aaef20af5b93ffc5bd55d91bc3eee92b7f69" [label="/bin/sh -c mkdir -p ${ELF_FOLDER}" shape="box"];
  "sha256:92ff404711a9f4db64b9ffe08ffdf22b3a65b50d7ea4ef9f6c3ae71f9f843172" [label="/bin/sh -c apt update -y && apt install -y cmake git libboost-all-dev libzmq3-dev" shape="box"];
  "sha256:ab17c58ca0e344fc0fd63d0601a3d12f2073afdb7ac20eb79e0e93e83aad41dd" [label="https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh" shape="ellipse"];
  "sha256:8e6a71b5e8ee44dbacff3b92dcce58f1e56c79690e58a88c64dd010221acfe8f" [label="copy{src=/Miniconda3-latest-Linux-x86_64.sh, dest=/go-elf/Miniconda3.sh}" shape="note"];
  "sha256:a46b6ae066737bd7b51e460053030473f34da23ddc4a8ec970dae2b638d74bb1" [label="/bin/sh -c chmod +x ${ELF_FOLDER}/${MINICONDA_INSTALL_SCRIPT_NAME}" shape="box"];
  "sha256:c10356ab75066d1bf716ebcc2168000eabb1ee7c309808c1b9084d08c74d8f1d" [label="/bin/sh -c ${ELF_FOLDER}/${MINICONDA_INSTALL_SCRIPT_NAME} -b" shape="box"];
  "sha256:3296649d09365bbcc91acc1cbaefd1b9c8f5c774cd7fad766cbb785b99bf739d" [label="/bin/sh -c conda install -c pytorch pytorch-nightly cuda90 numpy zeromq pyzmq" shape="box"];
  "sha256:0d834ef8161ca343e4f595950567faeb4e41b195145a896d1069cb916bfca3e8" [label="/bin/sh -c mkdir -p ${ELF_FOLDER}/ELF" shape="box"];
  "sha256:69fad746515fec093e473f07922b15a707df0be47109374075a7264155910933" [label="local://context" shape="ellipse"];
  "sha256:43d0250555af535fac2583490d4b91ed69529b02a9d4721dc26cb2ef21332153" [label="copy{src=/, dest=/go-elf/ELF}" shape="note"];
  "sha256:f0b3ec0a62c614b03f008c0fc2e24e619b8d2e459fc5156b2be30aa202c4bfee" [label="mkdir{path=/go-elf/ELF}" shape="note"];
  "sha256:3a7582d75070de95bc69b222f12c12a086db619fedd80c9b055581f4365fbc81" [label="/bin/sh -c git submodule sync && git submodule update --init --recursive" shape="box"];
  "sha256:afbb52ff3f734d5426850654d5980fd8846e4fa2f9a77adea5c17fdb5380b0b4" [label="/bin/sh -c bash -c \"source activate base && make -j4\"" shape="box"];
  "sha256:2023224da2472b5bf6f5ff73c1e913feda1b1561f8dfcfe5ec8ae0d1a1989ec8" [label="https://github.com/pytorch/ELF/releases/download/pretrained-go-19x19-v0/pretrained-go-19x19-v0.bin" shape="ellipse"];
  "sha256:5cad2c76b75f5a848b3b4e2e6378f127532381651ea4a8b5a4bc02f87eb11dfd" [label="copy{src=/pretrained-go-19x19-v0.bin, dest=/go-elf/ELF}" shape="note"];
  "sha256:97e7996597a27e205c60d4c8c05cc88f9f2f6c5c03b3a67a333accf3f4f29457" [label="sha256:97e7996597a27e205c60d4c8c05cc88f9f2f6c5c03b3a67a333accf3f4f29457" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:5d0ef5fa9b96351d83c58d20007c377330cbf659aae4028640bf19123a153114" [label=""];
  "sha256:5d0ef5fa9b96351d83c58d20007c377330cbf659aae4028640bf19123a153114" -> "sha256:d557023986f5fe98351a2135d5723414274a5031d3ddf674813e347e22acc3c9" [label=""];
  "sha256:d557023986f5fe98351a2135d5723414274a5031d3ddf674813e347e22acc3c9" -> "sha256:c2529f19bc5d96f255c1b54424fb850bcfd25a71eaf79ba164fdb55344c9a7af" [label=""];
  "sha256:c2529f19bc5d96f255c1b54424fb850bcfd25a71eaf79ba164fdb55344c9a7af" -> "sha256:5c0f28650958d318c389151af96c23842890302cbc3ffb7aaab30b4106366fbd" [label=""];
  "sha256:5c0f28650958d318c389151af96c23842890302cbc3ffb7aaab30b4106366fbd" -> "sha256:5ceba331006af7f1d2e6eb46dcf8e9898b391187f4d804e66957475d7cb32c22" [label=""];
  "sha256:5ceba331006af7f1d2e6eb46dcf8e9898b391187f4d804e66957475d7cb32c22" -> "sha256:b38e769202c87dbf67987fcb07b6aaef20af5b93ffc5bd55d91bc3eee92b7f69" [label=""];
  "sha256:b38e769202c87dbf67987fcb07b6aaef20af5b93ffc5bd55d91bc3eee92b7f69" -> "sha256:92ff404711a9f4db64b9ffe08ffdf22b3a65b50d7ea4ef9f6c3ae71f9f843172" [label=""];
  "sha256:92ff404711a9f4db64b9ffe08ffdf22b3a65b50d7ea4ef9f6c3ae71f9f843172" -> "sha256:8e6a71b5e8ee44dbacff3b92dcce58f1e56c79690e58a88c64dd010221acfe8f" [label=""];
  "sha256:ab17c58ca0e344fc0fd63d0601a3d12f2073afdb7ac20eb79e0e93e83aad41dd" -> "sha256:8e6a71b5e8ee44dbacff3b92dcce58f1e56c79690e58a88c64dd010221acfe8f" [label=""];
  "sha256:8e6a71b5e8ee44dbacff3b92dcce58f1e56c79690e58a88c64dd010221acfe8f" -> "sha256:a46b6ae066737bd7b51e460053030473f34da23ddc4a8ec970dae2b638d74bb1" [label=""];
  "sha256:a46b6ae066737bd7b51e460053030473f34da23ddc4a8ec970dae2b638d74bb1" -> "sha256:c10356ab75066d1bf716ebcc2168000eabb1ee7c309808c1b9084d08c74d8f1d" [label=""];
  "sha256:c10356ab75066d1bf716ebcc2168000eabb1ee7c309808c1b9084d08c74d8f1d" -> "sha256:3296649d09365bbcc91acc1cbaefd1b9c8f5c774cd7fad766cbb785b99bf739d" [label=""];
  "sha256:3296649d09365bbcc91acc1cbaefd1b9c8f5c774cd7fad766cbb785b99bf739d" -> "sha256:0d834ef8161ca343e4f595950567faeb4e41b195145a896d1069cb916bfca3e8" [label=""];
  "sha256:0d834ef8161ca343e4f595950567faeb4e41b195145a896d1069cb916bfca3e8" -> "sha256:43d0250555af535fac2583490d4b91ed69529b02a9d4721dc26cb2ef21332153" [label=""];
  "sha256:69fad746515fec093e473f07922b15a707df0be47109374075a7264155910933" -> "sha256:43d0250555af535fac2583490d4b91ed69529b02a9d4721dc26cb2ef21332153" [label=""];
  "sha256:43d0250555af535fac2583490d4b91ed69529b02a9d4721dc26cb2ef21332153" -> "sha256:f0b3ec0a62c614b03f008c0fc2e24e619b8d2e459fc5156b2be30aa202c4bfee" [label=""];
  "sha256:f0b3ec0a62c614b03f008c0fc2e24e619b8d2e459fc5156b2be30aa202c4bfee" -> "sha256:3a7582d75070de95bc69b222f12c12a086db619fedd80c9b055581f4365fbc81" [label=""];
  "sha256:3a7582d75070de95bc69b222f12c12a086db619fedd80c9b055581f4365fbc81" -> "sha256:afbb52ff3f734d5426850654d5980fd8846e4fa2f9a77adea5c17fdb5380b0b4" [label=""];
  "sha256:afbb52ff3f734d5426850654d5980fd8846e4fa2f9a77adea5c17fdb5380b0b4" -> "sha256:5cad2c76b75f5a848b3b4e2e6378f127532381651ea4a8b5a4bc02f87eb11dfd" [label=""];
  "sha256:2023224da2472b5bf6f5ff73c1e913feda1b1561f8dfcfe5ec8ae0d1a1989ec8" -> "sha256:5cad2c76b75f5a848b3b4e2e6378f127532381651ea4a8b5a4bc02f87eb11dfd" [label=""];
  "sha256:5cad2c76b75f5a848b3b4e2e6378f127532381651ea4a8b5a4bc02f87eb11dfd" -> "sha256:97e7996597a27e205c60d4c8c05cc88f9f2f6c5c03b3a67a333accf3f4f29457" [label=""];
}

