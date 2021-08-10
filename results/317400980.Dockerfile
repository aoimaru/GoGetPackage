[app/sources/317400980.Dockerfile]
digraph {
  "sha256:fff662282c4fab6379f7127fc04229946c006c996505a755f6afa839a94a82d1" [label="local://context" shape="ellipse"];
  "sha256:bdfaafc252d809c899903fbe8e535173035544f62199c61b2b45a9374e384d2e" [label="docker-image://docker.io/nvidia/cuda:9.0-base-ubuntu16.04" shape="ellipse"];
  "sha256:590c1d6c39eefe28c5f7d8f294020eb31161aa847545f1b1f3af9036c5c6ff7b" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends         build-essential         cuda-command-line-tools-9-0         cuda-cublas-9-0         cuda-cufft-9-0         cuda-curand-9-0         cuda-cusolver-9-0         cuda-cusparse-9-0         curl         libcudnn7=7.1.4.18-1+cuda9.0         libnccl2=2.2.13-1+cuda9.0         libfreetype6-dev         libhdf5-serial-dev         libpng12-dev         libzmq3-dev         pkg-config         python         python-dev         rsync         software-properties-common         unzip         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f70d639f1a0007d55e2e4f2b9964baad7f5f7d78a9ab8dadba1322f7bfc8c19b" [label="/bin/sh -c curl -O https://bootstrap.pypa.io/get-pip.py &&     python get-pip.py &&     rm get-pip.py" shape="box"];
  "sha256:697c18e2c601bc727c70cad05636f122fbc84bf489323a75ec5779bc92ab5af4" [label="/bin/sh -c pip --no-cache-dir install         Pillow         h5py         ipykernel         jupyter         matplotlib         numpy==1.14.5         pandas         scipy         sklearn         &&     python -m ipykernel.kernelspec" shape="box"];
  "sha256:ab44e23106f26e2ea78e47ea5d203f16fe094664339a5d9827311df0f0883b92" [label="/bin/sh -c pip --no-cache-dir install     http://storage.googleapis.com/tensorflow/linux/gpu/tensorflow_gpu-0.0.0-cp27-none-linux_x86_64.whl" shape="box"];
  "sha256:c56436167f9966a65bdde0ca273efe7bd969dd84d1c810bad7115f3dc39609ed" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:55be72f76a8dfab625859dc0b7f431f8ddf22a3cc16cc847aa93c88206a8fb24" [label="copy{src=/notebooks, dest=/notebooks}" shape="note"];
  "sha256:89904f5f9ae8082f203fa240ed9b638529b8dae9457e176ea119bd0900df1adb" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:b8b9bed1bcbfcbd925f31fa60f3d22095c4ba1c15d9709877e81084652d8dcad" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:f25aeca346b98a16af6e4a7c5e24f4483007e085658731cd033041a939211462" [label="sha256:f25aeca346b98a16af6e4a7c5e24f4483007e085658731cd033041a939211462" shape="plaintext"];
  "sha256:bdfaafc252d809c899903fbe8e535173035544f62199c61b2b45a9374e384d2e" -> "sha256:590c1d6c39eefe28c5f7d8f294020eb31161aa847545f1b1f3af9036c5c6ff7b" [label=""];
  "sha256:590c1d6c39eefe28c5f7d8f294020eb31161aa847545f1b1f3af9036c5c6ff7b" -> "sha256:f70d639f1a0007d55e2e4f2b9964baad7f5f7d78a9ab8dadba1322f7bfc8c19b" [label=""];
  "sha256:f70d639f1a0007d55e2e4f2b9964baad7f5f7d78a9ab8dadba1322f7bfc8c19b" -> "sha256:697c18e2c601bc727c70cad05636f122fbc84bf489323a75ec5779bc92ab5af4" [label=""];
  "sha256:697c18e2c601bc727c70cad05636f122fbc84bf489323a75ec5779bc92ab5af4" -> "sha256:ab44e23106f26e2ea78e47ea5d203f16fe094664339a5d9827311df0f0883b92" [label=""];
  "sha256:ab44e23106f26e2ea78e47ea5d203f16fe094664339a5d9827311df0f0883b92" -> "sha256:c56436167f9966a65bdde0ca273efe7bd969dd84d1c810bad7115f3dc39609ed" [label=""];
  "sha256:fff662282c4fab6379f7127fc04229946c006c996505a755f6afa839a94a82d1" -> "sha256:c56436167f9966a65bdde0ca273efe7bd969dd84d1c810bad7115f3dc39609ed" [label=""];
  "sha256:c56436167f9966a65bdde0ca273efe7bd969dd84d1c810bad7115f3dc39609ed" -> "sha256:55be72f76a8dfab625859dc0b7f431f8ddf22a3cc16cc847aa93c88206a8fb24" [label=""];
  "sha256:fff662282c4fab6379f7127fc04229946c006c996505a755f6afa839a94a82d1" -> "sha256:55be72f76a8dfab625859dc0b7f431f8ddf22a3cc16cc847aa93c88206a8fb24" [label=""];
  "sha256:55be72f76a8dfab625859dc0b7f431f8ddf22a3cc16cc847aa93c88206a8fb24" -> "sha256:89904f5f9ae8082f203fa240ed9b638529b8dae9457e176ea119bd0900df1adb" [label=""];
  "sha256:fff662282c4fab6379f7127fc04229946c006c996505a755f6afa839a94a82d1" -> "sha256:89904f5f9ae8082f203fa240ed9b638529b8dae9457e176ea119bd0900df1adb" [label=""];
  "sha256:89904f5f9ae8082f203fa240ed9b638529b8dae9457e176ea119bd0900df1adb" -> "sha256:b8b9bed1bcbfcbd925f31fa60f3d22095c4ba1c15d9709877e81084652d8dcad" [label=""];
  "sha256:b8b9bed1bcbfcbd925f31fa60f3d22095c4ba1c15d9709877e81084652d8dcad" -> "sha256:f25aeca346b98a16af6e4a7c5e24f4483007e085658731cd033041a939211462" [label=""];
}

