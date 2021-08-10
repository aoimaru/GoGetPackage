[app/sources/282864441.Dockerfile]
digraph {
  "sha256:63e2f67ea485ce89087f48cd072f433100c26e52520f9f880af584ac453d105f" [label="local://context" shape="ellipse"];
  "sha256:bdfaafc252d809c899903fbe8e535173035544f62199c61b2b45a9374e384d2e" [label="docker-image://docker.io/nvidia/cuda:9.0-base-ubuntu16.04" shape="ellipse"];
  "sha256:6d03c8bad62316a416c17e541b98da4a7534bbbd345c2429d003dcaeaa213a89" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cuda-command-line-tools-9-0         cuda-cublas-9-0         cuda-cufft-9-0         cuda-curand-9-0         cuda-cusolver-9-0         cuda-cusparse-9-0         curl         libcudnn7=7.1.4.18-1+cuda9.0         libfreetype6-dev         libhdf5-serial-dev         libpng12-dev         libzmq3-dev         pkg-config         python         python-dev         rsync         software-properties-common         unzip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:e38f94d1615b28c2a14cd1e04e05b4f353af21ffc6bfc68f445b8b7db583202d" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:fd19727eb0a8ca4bfd3543cf11afbf6b61226b9d97a64ba7a482ed0da77cb0e9" [label="/bin/sh -c pip --no-cache-dir install         Pillow         h5py         ipykernel         jupyter         matplotlib         numpy         pandas         scipy         sklearn         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:1266058b883822b6bc3374dc4737946cad3b4554ed9ca72296819d357d19e953" [label="/bin/sh -c pip --no-cache-dir install     http://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.0.0-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:93876a08a3ecc6330d49274bc2b9089a43742580b1013f9fae098963f3ac4152" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:c62c2a29ec7114338dd83fe233004c2ca7b630114634e28c9d4a68de4af0a8f1" [label="copy{src=/notebooks, dest=/notebooks}" shape="note"];
  "sha256:ffc6d6a89640c44d819ad143b665b41010239598aaf999032c8b7c8e0d11a2eb" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:ea84fc58a27f3a1d8fa5861f143ceecd71f6a0834054715186241aa7cc556bc5" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:665a271360e2e6df23173c97652fbf662f51eb035092e030e1dd2d5bdec1cf3c" [label="sha256:665a271360e2e6df23173c97652fbf662f51eb035092e030e1dd2d5bdec1cf3c" shape="plaintext"];
  "sha256:bdfaafc252d809c899903fbe8e535173035544f62199c61b2b45a9374e384d2e" -> "sha256:6d03c8bad62316a416c17e541b98da4a7534bbbd345c2429d003dcaeaa213a89" [label=""];
  "sha256:6d03c8bad62316a416c17e541b98da4a7534bbbd345c2429d003dcaeaa213a89" -> "sha256:e38f94d1615b28c2a14cd1e04e05b4f353af21ffc6bfc68f445b8b7db583202d" [label=""];
  "sha256:e38f94d1615b28c2a14cd1e04e05b4f353af21ffc6bfc68f445b8b7db583202d" -> "sha256:fd19727eb0a8ca4bfd3543cf11afbf6b61226b9d97a64ba7a482ed0da77cb0e9" [label=""];
  "sha256:fd19727eb0a8ca4bfd3543cf11afbf6b61226b9d97a64ba7a482ed0da77cb0e9" -> "sha256:1266058b883822b6bc3374dc4737946cad3b4554ed9ca72296819d357d19e953" [label=""];
  "sha256:1266058b883822b6bc3374dc4737946cad3b4554ed9ca72296819d357d19e953" -> "sha256:93876a08a3ecc6330d49274bc2b9089a43742580b1013f9fae098963f3ac4152" [label=""];
  "sha256:63e2f67ea485ce89087f48cd072f433100c26e52520f9f880af584ac453d105f" -> "sha256:93876a08a3ecc6330d49274bc2b9089a43742580b1013f9fae098963f3ac4152" [label=""];
  "sha256:93876a08a3ecc6330d49274bc2b9089a43742580b1013f9fae098963f3ac4152" -> "sha256:c62c2a29ec7114338dd83fe233004c2ca7b630114634e28c9d4a68de4af0a8f1" [label=""];
  "sha256:63e2f67ea485ce89087f48cd072f433100c26e52520f9f880af584ac453d105f" -> "sha256:c62c2a29ec7114338dd83fe233004c2ca7b630114634e28c9d4a68de4af0a8f1" [label=""];
  "sha256:c62c2a29ec7114338dd83fe233004c2ca7b630114634e28c9d4a68de4af0a8f1" -> "sha256:ffc6d6a89640c44d819ad143b665b41010239598aaf999032c8b7c8e0d11a2eb" [label=""];
  "sha256:63e2f67ea485ce89087f48cd072f433100c26e52520f9f880af584ac453d105f" -> "sha256:ffc6d6a89640c44d819ad143b665b41010239598aaf999032c8b7c8e0d11a2eb" [label=""];
  "sha256:ffc6d6a89640c44d819ad143b665b41010239598aaf999032c8b7c8e0d11a2eb" -> "sha256:ea84fc58a27f3a1d8fa5861f143ceecd71f6a0834054715186241aa7cc556bc5" [label=""];
  "sha256:ea84fc58a27f3a1d8fa5861f143ceecd71f6a0834054715186241aa7cc556bc5" -> "sha256:665a271360e2e6df23173c97652fbf662f51eb035092e030e1dd2d5bdec1cf3c" [label=""];
}

