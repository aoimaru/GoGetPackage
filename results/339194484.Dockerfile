[app/sources/339194484.Dockerfile]
digraph {
  "sha256:11aa2618b5571026619f3acb2f5f8aca3a793da83477b088ed709a3829aa57a7" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04" shape="ellipse"];
  "sha256:3ed0f6e1e1a71d00d6b4e409bebddb545f8c4fc837543d792a9a7b1d984e1907" [label="/bin/sh -c apt-get update && apt-get install -y \twget \tvim \tbzip2" shape="box"];
  "sha256:8179cb094a05bf62fd931b062fef2dec1b30b32b764b54e75548de657e5438c9" [label="/bin/sh -c apt-get install --allow-downgrades -y libcudnn7=7.0.5.15-1+cuda9.0" shape="box"];
  "sha256:31187617433840086afabf5f5ab5ac396b54fb2f862d9f4b36b0067f1b33a3c9" [label="/bin/sh -c wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh && \t/bin/bash Miniconda.sh -b -p /opt/conda && \trm Miniconda.sh" shape="box"];
  "sha256:8cf99fc49c27a30bf1d1a7d2ca50fabc778d9c78ece886d09f57e6536a2792cc" [label="/bin/sh -c conda create -y -n jupyter_env python=3.6 anaconda && \t/opt/conda/envs/jupyter_env/bin/pip install tensorflow-gpu keras jupyter-tensorboard jupyterlab" shape="box"];
  "sha256:a5c33098d067ae33fecc5524b9ac50004acde40a44a16c9ed6aeb1d3ba45d4ac" [label="sha256:a5c33098d067ae33fecc5524b9ac50004acde40a44a16c9ed6aeb1d3ba45d4ac" shape="plaintext"];
  "sha256:11aa2618b5571026619f3acb2f5f8aca3a793da83477b088ed709a3829aa57a7" -> "sha256:3ed0f6e1e1a71d00d6b4e409bebddb545f8c4fc837543d792a9a7b1d984e1907" [label=""];
  "sha256:3ed0f6e1e1a71d00d6b4e409bebddb545f8c4fc837543d792a9a7b1d984e1907" -> "sha256:8179cb094a05bf62fd931b062fef2dec1b30b32b764b54e75548de657e5438c9" [label=""];
  "sha256:8179cb094a05bf62fd931b062fef2dec1b30b32b764b54e75548de657e5438c9" -> "sha256:31187617433840086afabf5f5ab5ac396b54fb2f862d9f4b36b0067f1b33a3c9" [label=""];
  "sha256:31187617433840086afabf5f5ab5ac396b54fb2f862d9f4b36b0067f1b33a3c9" -> "sha256:8cf99fc49c27a30bf1d1a7d2ca50fabc778d9c78ece886d09f57e6536a2792cc" [label=""];
  "sha256:8cf99fc49c27a30bf1d1a7d2ca50fabc778d9c78ece886d09f57e6536a2792cc" -> "sha256:a5c33098d067ae33fecc5524b9ac50004acde40a44a16c9ed6aeb1d3ba45d4ac" [label=""];
}

