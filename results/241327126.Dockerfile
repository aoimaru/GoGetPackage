[app/sources/241327126.Dockerfile]
digraph {
  "sha256:f35d663e7ec6c9466769b85e1ebcaaaa69f0aff2187ea90f0aa793bcd6c1063a" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04" shape="ellipse"];
  "sha256:8cc596527d2b2fb739314d5a5f3c0e90251445455cc429cce8f2bb88cac56a2c" [label="/bin/sh -c which wget || (apt-get update     && apt-get install -y --no-install-recommends         ca-certificates         wget     && rm -rf /var/lib/apt/lists/*)" shape="box"];
  "sha256:7577e1431f10a612e275b8efb17aa7730efb11b8f39770ebaa50b341b3596e34" [label="/bin/sh -c wget https://github.com/NVIDIA/nccl/releases/download/v1.2.3-1%2Bcuda8.0/libnccl1_1.2.3-1.cuda8.0_amd64.deb -O libnccl.deb     && dpkg -i libnccl.deb     && rm libnccl.deb     && ldconfig" shape="box"];
  "sha256:dc57612a592f824a925688bf7b97525957552cfe59b4106ce987bbbc811faa56" [label="/bin/sh -c wget https://github.com/NVIDIA/nccl/releases/download/v1.2.3-1%2Bcuda8.0/libnccl-dev_1.2.3-1.cuda8.0_amd64.deb -O libnccl-dev.deb     && dpkg -i libnccl-dev.deb     && rm libnccl-dev.deb     && ldconfig" shape="box"];
  "sha256:4572ede18624bb306ca190b75fa0c78640e28560c08661203b2deaef7ea1db10" [label="sha256:4572ede18624bb306ca190b75fa0c78640e28560c08661203b2deaef7ea1db10" shape="plaintext"];
  "sha256:f35d663e7ec6c9466769b85e1ebcaaaa69f0aff2187ea90f0aa793bcd6c1063a" -> "sha256:8cc596527d2b2fb739314d5a5f3c0e90251445455cc429cce8f2bb88cac56a2c" [label=""];
  "sha256:8cc596527d2b2fb739314d5a5f3c0e90251445455cc429cce8f2bb88cac56a2c" -> "sha256:7577e1431f10a612e275b8efb17aa7730efb11b8f39770ebaa50b341b3596e34" [label=""];
  "sha256:7577e1431f10a612e275b8efb17aa7730efb11b8f39770ebaa50b341b3596e34" -> "sha256:dc57612a592f824a925688bf7b97525957552cfe59b4106ce987bbbc811faa56" [label=""];
  "sha256:dc57612a592f824a925688bf7b97525957552cfe59b4106ce987bbbc811faa56" -> "sha256:4572ede18624bb306ca190b75fa0c78640e28560c08661203b2deaef7ea1db10" [label=""];
}

