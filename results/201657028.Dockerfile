[app/sources/201657028.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:77490128048e77cfd98fe0dbb8084253bfede693dab53cc1446593da66f984d1" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         curl         libfreetype6-dev         libpng12-dev         libzmq3-dev         pkg-config         python         python-dev         python-numpy         python-pip         python-scipy         rsync         unzip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f92a1ffed73996cb622f6376b1ec5ebf593518b8a1c06a418372bf4d831e82fa" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:2102318ea64d7a928264a7b64e00a6a4b31645c39d28d3eac1c3d77f885e765b" [label="/bin/sh -c pip --no-cache-dir install         ipykernel         jupyter         matplotlib         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:7016e4c9546db26b81032eb0da824110da33311320a36baa69fcfb6649385fb5" [label="/bin/sh -c pip --no-cache-dir install     http://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-${TENSORFLOW_VERSION}-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:0b75ff1ec0b810cff706099008b96fe463e84bd109e07267b08524a5f86d12c9" [label="local://context" shape="ellipse"];
  "sha256:60e4da7a7af875fa9aa313280e743c1cbf76379938bfc1577bd5adc8d69fa118" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:bd9b30ad8298641b7736afc7a9679dbbeb00c949aaba984982eff774a80951c5" [label="copy{src=/notebooks, dest=/notebooks}" shape="note"];
  "sha256:ec6df15e6ab1fc8d4571170d281ea531c2abd745ef97fcd3526a68e2e41bbd9e" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:ef846c28591e30eaa64ee3f60281652890d65e9454104e8beb238f7829ab47cb" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:d80f5da4ab0a4a0d96a6eedec8a4ef1f4cccd7044861b25d4288a8f8b28e770c" [label="sha256:d80f5da4ab0a4a0d96a6eedec8a4ef1f4cccd7044861b25d4288a8f8b28e770c" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:77490128048e77cfd98fe0dbb8084253bfede693dab53cc1446593da66f984d1" [label=""];
  "sha256:77490128048e77cfd98fe0dbb8084253bfede693dab53cc1446593da66f984d1" -> "sha256:f92a1ffed73996cb622f6376b1ec5ebf593518b8a1c06a418372bf4d831e82fa" [label=""];
  "sha256:f92a1ffed73996cb622f6376b1ec5ebf593518b8a1c06a418372bf4d831e82fa" -> "sha256:2102318ea64d7a928264a7b64e00a6a4b31645c39d28d3eac1c3d77f885e765b" [label=""];
  "sha256:2102318ea64d7a928264a7b64e00a6a4b31645c39d28d3eac1c3d77f885e765b" -> "sha256:7016e4c9546db26b81032eb0da824110da33311320a36baa69fcfb6649385fb5" [label=""];
  "sha256:7016e4c9546db26b81032eb0da824110da33311320a36baa69fcfb6649385fb5" -> "sha256:60e4da7a7af875fa9aa313280e743c1cbf76379938bfc1577bd5adc8d69fa118" [label=""];
  "sha256:0b75ff1ec0b810cff706099008b96fe463e84bd109e07267b08524a5f86d12c9" -> "sha256:60e4da7a7af875fa9aa313280e743c1cbf76379938bfc1577bd5adc8d69fa118" [label=""];
  "sha256:60e4da7a7af875fa9aa313280e743c1cbf76379938bfc1577bd5adc8d69fa118" -> "sha256:bd9b30ad8298641b7736afc7a9679dbbeb00c949aaba984982eff774a80951c5" [label=""];
  "sha256:0b75ff1ec0b810cff706099008b96fe463e84bd109e07267b08524a5f86d12c9" -> "sha256:bd9b30ad8298641b7736afc7a9679dbbeb00c949aaba984982eff774a80951c5" [label=""];
  "sha256:bd9b30ad8298641b7736afc7a9679dbbeb00c949aaba984982eff774a80951c5" -> "sha256:ec6df15e6ab1fc8d4571170d281ea531c2abd745ef97fcd3526a68e2e41bbd9e" [label=""];
  "sha256:0b75ff1ec0b810cff706099008b96fe463e84bd109e07267b08524a5f86d12c9" -> "sha256:ec6df15e6ab1fc8d4571170d281ea531c2abd745ef97fcd3526a68e2e41bbd9e" [label=""];
  "sha256:ec6df15e6ab1fc8d4571170d281ea531c2abd745ef97fcd3526a68e2e41bbd9e" -> "sha256:ef846c28591e30eaa64ee3f60281652890d65e9454104e8beb238f7829ab47cb" [label=""];
  "sha256:ef846c28591e30eaa64ee3f60281652890d65e9454104e8beb238f7829ab47cb" -> "sha256:d80f5da4ab0a4a0d96a6eedec8a4ef1f4cccd7044861b25d4288a8f8b28e770c" [label=""];
}

