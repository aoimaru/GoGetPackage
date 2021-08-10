[app/sources/250821442.Dockerfile]
digraph {
  "sha256:086cd608418706f2fe22fc03bb9f20d18a5d5bc23c379d90f8cdfd660ed3528b" [label="docker-image://docker.io/nvidia/cuda:7.5-cudnn5-devel" shape="ellipse"];
  "sha256:5af4f4a7d118a0bbd28b23ef0f72e5abe61fc71465e6f19e794799d5a7e529dd" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive &&     apt-get update && apt-get install -y --no-install-recommends         apt-utils software-properties-common cron python-apt python-pycurl         unattended-upgrades &&     apt-get install -y --no-install-recommends         build-essential gfortran sudo curl wget cmake git-core unzip &&     apt-get install -y --no-install-recommends         libfftw3-dev sox libsox-dev libsox-fmt-all libreadline-dev         libzmq3-dev ipython &&     apt-get install -y --no-install-recommends         imagemagick libgraphicsmagick1-dev libqt4-dev libjpeg-dev libpng-dev         ncurses-dev &&     apt-get install -y --no-install-recommends         gnuplot gnuplot-x11 &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:afa3c19e6c15b3dd91c5908660468e41d508a65eb7aea6d7aa156c875c5ca4fa" [label="/bin/sh -c cd tmp &&     git clone https://github.com/xianyi/OpenBLAS.git &&     cd OpenBLAS &&     make NO_AFFINITY=1 USE_OPENMP=1 -j\"$(nproc)\" &&     make install &&     cd .. &&     rm -rf OpenBLAS &&     mkdir -p ${TORCH_ROOT} &&     cd ${TORCH_ROOT} &&     git clone https://github.com/torch/distro.git . --recursive &&     ./install.sh" shape="box"];
  "sha256:f4eb530942e52533f4e80ae568d749f36f06feaded91df84ad3437323bb665bc" [label="local://context" shape="ellipse"];
  "sha256:08f871f7acf8f02db52c5b8a3f2473f9d4decc1d1082530030900bd034a9f22b" [label="copy{src=/run_mnist.sh, dest=/root/torch}" shape="note"];
  "sha256:cb6e8ef70ffcff9e28057985e9add13f0b41c4fc384b0758c8372b1ec105441e" [label="sha256:cb6e8ef70ffcff9e28057985e9add13f0b41c4fc384b0758c8372b1ec105441e" shape="plaintext"];
  "sha256:086cd608418706f2fe22fc03bb9f20d18a5d5bc23c379d90f8cdfd660ed3528b" -> "sha256:5af4f4a7d118a0bbd28b23ef0f72e5abe61fc71465e6f19e794799d5a7e529dd" [label=""];
  "sha256:5af4f4a7d118a0bbd28b23ef0f72e5abe61fc71465e6f19e794799d5a7e529dd" -> "sha256:afa3c19e6c15b3dd91c5908660468e41d508a65eb7aea6d7aa156c875c5ca4fa" [label=""];
  "sha256:afa3c19e6c15b3dd91c5908660468e41d508a65eb7aea6d7aa156c875c5ca4fa" -> "sha256:08f871f7acf8f02db52c5b8a3f2473f9d4decc1d1082530030900bd034a9f22b" [label=""];
  "sha256:f4eb530942e52533f4e80ae568d749f36f06feaded91df84ad3437323bb665bc" -> "sha256:08f871f7acf8f02db52c5b8a3f2473f9d4decc1d1082530030900bd034a9f22b" [label=""];
  "sha256:08f871f7acf8f02db52c5b8a3f2473f9d4decc1d1082530030900bd034a9f22b" -> "sha256:cb6e8ef70ffcff9e28057985e9add13f0b41c4fc384b0758c8372b1ec105441e" [label=""];
}

