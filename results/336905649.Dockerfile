[app/sources/336905649.Dockerfile]
digraph {
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04" shape="ellipse"];
  "sha256:60ba8a5ad3d8e16d51d37c466d19206b408c45fc17d8a32fe499367934889b45" [label="/bin/sh -c apt-get update --fix-missing && apt-get install -y wget bzip2 ca-certificates     libglib2.0-0 libxext6 libsm6 libxrender1     git     vim &&     rm -rf /var/lib/apt/lists/* &&     echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh &&     wget --quiet https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh -O ~/anaconda.sh &&     /bin/bash ~/anaconda.sh -b -p /opt/conda &&     rm ~/anaconda.sh" shape="box"];
  "sha256:12cdac480e53242a216f6e46c6e158ca7439d694e10eb89923e594e7fecae230" [label="/bin/sh -c conda install mkl-service" shape="box"];
  "sha256:b665850473d00193b6a7b6229d4a6d3c44092a923f382512e40820353db4c14a" [label="/bin/sh -c pip install opencv-python" shape="box"];
  "sha256:4b77c7dcac9cf326caee03ca31f5836cab774c6497c89951c924e4fb01db3244" [label="/bin/sh -c conda install pytorch torchvision cuda90 -c pytorch" shape="box"];
  "sha256:bb8f991f819989182dedd7cc6da1200b354938ace20b068055bf31ba5a903ea1" [label="/bin/sh -c pip install     tqdm" shape="box"];
  "sha256:da2770a8b39d6c42cfd900e876533f9fbbe2cf091dafa07815f0a01b552bb200" [label="/bin/sh -c git clone https://void-detector:LzPxmG9HjBkzQfrs3Aa3@bitbucket.org/void-detector/void-detector.git" shape="box"];
  "sha256:dde5fbb4ceda503c6a0e93b25bfe0391210f05902aae3767f6b45f1ebac11b95" [label="mkdir{path=/void-detector}" shape="note"];
  "sha256:430a6a9d50ed2f02171727ad1f92019e46cae7db951075115474e9f025bf0b41" [label="/bin/sh -c python utils/download_model.py" shape="box"];
  "sha256:92b21843ca643a97e943b648619b309141b69483db2166e4c8bbf03a98bd3b00" [label="/bin/sh -c echo \"PS1=\\\"[\\D{%T}] \\\"$PS1\" >> ~/.bashrc" shape="box"];
  "sha256:96bf1c7bdaf69ae0e23950489c8256cfd5c93735a7414a1540f7b177a4279ce4" [label="sha256:96bf1c7bdaf69ae0e23950489c8256cfd5c93735a7414a1540f7b177a4279ce4" shape="plaintext"];
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" -> "sha256:60ba8a5ad3d8e16d51d37c466d19206b408c45fc17d8a32fe499367934889b45" [label=""];
  "sha256:60ba8a5ad3d8e16d51d37c466d19206b408c45fc17d8a32fe499367934889b45" -> "sha256:12cdac480e53242a216f6e46c6e158ca7439d694e10eb89923e594e7fecae230" [label=""];
  "sha256:12cdac480e53242a216f6e46c6e158ca7439d694e10eb89923e594e7fecae230" -> "sha256:b665850473d00193b6a7b6229d4a6d3c44092a923f382512e40820353db4c14a" [label=""];
  "sha256:b665850473d00193b6a7b6229d4a6d3c44092a923f382512e40820353db4c14a" -> "sha256:4b77c7dcac9cf326caee03ca31f5836cab774c6497c89951c924e4fb01db3244" [label=""];
  "sha256:4b77c7dcac9cf326caee03ca31f5836cab774c6497c89951c924e4fb01db3244" -> "sha256:bb8f991f819989182dedd7cc6da1200b354938ace20b068055bf31ba5a903ea1" [label=""];
  "sha256:bb8f991f819989182dedd7cc6da1200b354938ace20b068055bf31ba5a903ea1" -> "sha256:da2770a8b39d6c42cfd900e876533f9fbbe2cf091dafa07815f0a01b552bb200" [label=""];
  "sha256:da2770a8b39d6c42cfd900e876533f9fbbe2cf091dafa07815f0a01b552bb200" -> "sha256:dde5fbb4ceda503c6a0e93b25bfe0391210f05902aae3767f6b45f1ebac11b95" [label=""];
  "sha256:dde5fbb4ceda503c6a0e93b25bfe0391210f05902aae3767f6b45f1ebac11b95" -> "sha256:430a6a9d50ed2f02171727ad1f92019e46cae7db951075115474e9f025bf0b41" [label=""];
  "sha256:430a6a9d50ed2f02171727ad1f92019e46cae7db951075115474e9f025bf0b41" -> "sha256:92b21843ca643a97e943b648619b309141b69483db2166e4c8bbf03a98bd3b00" [label=""];
  "sha256:92b21843ca643a97e943b648619b309141b69483db2166e4c8bbf03a98bd3b00" -> "sha256:96bf1c7bdaf69ae0e23950489c8256cfd5c93735a7414a1540f7b177a4279ce4" [label=""];
}

