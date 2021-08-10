[app/sources/269229694.Dockerfile]
digraph {
  "sha256:e033f6c24899117a6d70dd5b7151f44d4141136613674eb2d7fd2441e3fbe892" [label="docker-image://docker.io/nvidia/cuda:9.0-base" shape="ellipse"];
  "sha256:7e7bdcc95be15649eab50cdb12621ec5b6f19f1f033baf8a5affd614684c4e36" [label="/bin/sh -c mkdir -p $CONDA_DIR &&     echo export PATH=$CONDA_DIR/bin:'$PATH' > /etc/profile.d/conda.sh &&     apt-get update &&     apt-get install -y wget git g++ bzip2 &&     wget --quiet https://repo.continuum.io/miniconda/Miniconda3-4.2.12-Linux-x86_64.sh &&     echo \"c59b3dd3cad550ac7596e0d599b91e75d88826db132e4146030ef471bb434e9a *Miniconda3-4.2.12-Linux-x86_64.sh\" | sha256sum -c - &&     /bin/bash /Miniconda3-4.2.12-Linux-x86_64.sh -f -b -p $CONDA_DIR &&     rm Miniconda3-4.2.12-Linux-x86_64.sh" shape="box"];
  "sha256:10a2524be31874f9e9c2c34b8ca624ad7947fefd0840754890f4efd5ba953634" [label="/bin/sh -c mkdir -p /src" shape="box"];
  "sha256:fef2aeb69e1cf24f1d0049308b2a3bbdbc2b5d271e643c898a569b790dba1872" [label="mkdir{path=/src}" shape="note"];
  "sha256:4bb2b3e2589fb884c3cb5a468730daebcc07d09e07c5eb3ff5c970c650489edc" [label="/bin/sh -c conda install -y python=${python_version} &&     pip install --upgrade pip && \tgit clone https://github.com/msalvaris/gpu_monitor.git && \tpip install -r gpu_monitor/requirements.txt && \tpip install --no-deps -e gpu_monitor &&     conda clean -yt" shape="box"];
  "sha256:66d17ecfe978d0b1ffaff8751db54ebe8e295cde7bb39619b81531bbe1552927" [label="sha256:66d17ecfe978d0b1ffaff8751db54ebe8e295cde7bb39619b81531bbe1552927" shape="plaintext"];
  "sha256:e033f6c24899117a6d70dd5b7151f44d4141136613674eb2d7fd2441e3fbe892" -> "sha256:7e7bdcc95be15649eab50cdb12621ec5b6f19f1f033baf8a5affd614684c4e36" [label=""];
  "sha256:7e7bdcc95be15649eab50cdb12621ec5b6f19f1f033baf8a5affd614684c4e36" -> "sha256:10a2524be31874f9e9c2c34b8ca624ad7947fefd0840754890f4efd5ba953634" [label=""];
  "sha256:10a2524be31874f9e9c2c34b8ca624ad7947fefd0840754890f4efd5ba953634" -> "sha256:fef2aeb69e1cf24f1d0049308b2a3bbdbc2b5d271e643c898a569b790dba1872" [label=""];
  "sha256:fef2aeb69e1cf24f1d0049308b2a3bbdbc2b5d271e643c898a569b790dba1872" -> "sha256:4bb2b3e2589fb884c3cb5a468730daebcc07d09e07c5eb3ff5c970c650489edc" [label=""];
  "sha256:4bb2b3e2589fb884c3cb5a468730daebcc07d09e07c5eb3ff5c970c650489edc" -> "sha256:66d17ecfe978d0b1ffaff8751db54ebe8e295cde7bb39619b81531bbe1552927" [label=""];
}

