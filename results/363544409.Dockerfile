[app/sources/363544409.Dockerfile]
digraph {
  "sha256:3e8b14c1ee67e93c6d965fbc7819462f4f1120944f41dafb7b2870f4fbb30dbe" [label="docker-image://docker.io/bitnami/minideb:jessie@sha256:095c0610f92c0d9ad329902d7a4989596c0ca28ebeefc844b2ec0ea5ce50a7d8" shape="ellipse"];
  "sha256:3f070631e3ed3bc8bac319a500d721a9a5b9337bca5b7e10ad9a6b147361a4e6" [label="/bin/sh -c install_packages ca-certificates curl" shape="box"];
  "sha256:78d544fa387202e7eb7f9d52866da5d32256214caf79e12e6152c0f5f7240ff2" [label="/bin/sh -c curl -Lo /root/cuda-all.run https://developer.nvidia.com/compute/cuda/${CUDA_MAJMIN}/Prod2/local_installers/cuda_${CUDA_FULL}_linux-run" shape="box"];
  "sha256:cf1320da109af02062fb6d8f2a9867a5cb70dffd79b3cb6dcb9de8b0e35f7f58" [label="/bin/sh -c install_packages perl libncurses5 gcc g++" shape="box"];
  "sha256:9355bdd3b50f9a7a3f8183a4e465b5b34dd40622f34b08af8f4ca04b3b20ebe0" [label="/bin/sh -c export PERL5LIB=. &&     sh /root/cuda-all.run --toolkit --silent --override &&     ls -l /usr/local &&     rm -f cuda-all.run" shape="box"];
  "sha256:8dab40d29275efd3c69448f298faab31e29d420358e90437d988652eb52a0308" [label="/bin/sh -c curl -Lo /root/cudnn.tgz     http://developer.download.nvidia.com/compute/redist/cudnn/v${CUDNN_MAJMIN}/cudnn-${CUDA_MAJMIN}-linux-x64-v${CUDNN_MAJMIN}.tgz" shape="box"];
  "sha256:0560265cbcef2503847e4d5a2811734700262b1b39151b6af4c0262850c92538" [label="/bin/sh -c tar --no-same-owner -xzf /root/cudnn.tgz -C /usr/local &&     mkdir -p /etc/ld.so.conf.d &&     echo \"/usr/local/cuda/lib64\" > /etc/ld.so.conf.d/cuda.conf &&     echo \"/usr/local/nvidia/lib64\" > /etc/ld.so.conf.d/nvidia.conf &&     ldconfig" shape="box"];
  "sha256:204824e30276e3068288029b556d6dd86518b9cacb023a192f016f8b4ceb93ce" [label="sha256:204824e30276e3068288029b556d6dd86518b9cacb023a192f016f8b4ceb93ce" shape="plaintext"];
  "sha256:3e8b14c1ee67e93c6d965fbc7819462f4f1120944f41dafb7b2870f4fbb30dbe" -> "sha256:3f070631e3ed3bc8bac319a500d721a9a5b9337bca5b7e10ad9a6b147361a4e6" [label=""];
  "sha256:3f070631e3ed3bc8bac319a500d721a9a5b9337bca5b7e10ad9a6b147361a4e6" -> "sha256:78d544fa387202e7eb7f9d52866da5d32256214caf79e12e6152c0f5f7240ff2" [label=""];
  "sha256:78d544fa387202e7eb7f9d52866da5d32256214caf79e12e6152c0f5f7240ff2" -> "sha256:cf1320da109af02062fb6d8f2a9867a5cb70dffd79b3cb6dcb9de8b0e35f7f58" [label=""];
  "sha256:cf1320da109af02062fb6d8f2a9867a5cb70dffd79b3cb6dcb9de8b0e35f7f58" -> "sha256:9355bdd3b50f9a7a3f8183a4e465b5b34dd40622f34b08af8f4ca04b3b20ebe0" [label=""];
  "sha256:9355bdd3b50f9a7a3f8183a4e465b5b34dd40622f34b08af8f4ca04b3b20ebe0" -> "sha256:8dab40d29275efd3c69448f298faab31e29d420358e90437d988652eb52a0308" [label=""];
  "sha256:8dab40d29275efd3c69448f298faab31e29d420358e90437d988652eb52a0308" -> "sha256:0560265cbcef2503847e4d5a2811734700262b1b39151b6af4c0262850c92538" [label=""];
  "sha256:0560265cbcef2503847e4d5a2811734700262b1b39151b6af4c0262850c92538" -> "sha256:204824e30276e3068288029b556d6dd86518b9cacb023a192f016f8b4ceb93ce" [label=""];
}

