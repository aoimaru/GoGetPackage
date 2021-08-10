[app/sources/203644828.Dockerfile]
digraph {
  "sha256:f35d663e7ec6c9466769b85e1ebcaaaa69f0aff2187ea90f0aa793bcd6c1063a" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04" shape="ellipse"];
  "sha256:cd5f98c5d97b4a0dd376d8bcd41f0c1f39da8c51c26ee5a0706d1a2dae1c5385" [label="/bin/sh -c apt-get update --fix-missing  && apt-get install -y --no-install-recommends       ca-certificates       cmake       git       libssl-dev       sudo  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6c25c82a686a30776524ea2923bc4309eed6048694bbaf5cded746f8d6574970" [label="/bin/sh -c git clone --depth 1 https://github.com/torch/distro.git ~/torch --recursive  && cd ~/torch  && bash install-deps  && export PREFIX=/opt/torch  && mkdir -p $PREFIX  && ./install.sh -b  && rm -fr /tmp/* ~/torch" shape="box"];
  "sha256:d8724eec26ef7b891dd548e5bbf4a750499ed32b7c15ce77f138e87d22dc2953" [label="sha256:d8724eec26ef7b891dd548e5bbf4a750499ed32b7c15ce77f138e87d22dc2953" shape="plaintext"];
  "sha256:f35d663e7ec6c9466769b85e1ebcaaaa69f0aff2187ea90f0aa793bcd6c1063a" -> "sha256:cd5f98c5d97b4a0dd376d8bcd41f0c1f39da8c51c26ee5a0706d1a2dae1c5385" [label=""];
  "sha256:cd5f98c5d97b4a0dd376d8bcd41f0c1f39da8c51c26ee5a0706d1a2dae1c5385" -> "sha256:6c25c82a686a30776524ea2923bc4309eed6048694bbaf5cded746f8d6574970" [label=""];
  "sha256:6c25c82a686a30776524ea2923bc4309eed6048694bbaf5cded746f8d6574970" -> "sha256:d8724eec26ef7b891dd548e5bbf4a750499ed32b7c15ce77f138e87d22dc2953" [label=""];
}

