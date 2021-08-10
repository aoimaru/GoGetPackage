[app/sources/337296865.Dockerfile]
digraph {
  "sha256:03f7274ea1475a00bf730db4975600c123eb41d68498512662a5512c5dc29f95" [label="local://context" shape="ellipse"];
  "sha256:4908dd22cd48e06cd5977a316c3dc2f8fc375f08035cb55c7843ea9618b75393" [label="docker-image://docker.io/nvidia/cuda:9.2-cudnn7-runtime-ubuntu16.04" shape="ellipse"];
  "sha256:35d40a1b4f698fdce468c8e58626583106d9aafc6fee16725e01effb0c0c300d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:29cfd5f1bac9cc08879f3f630e01a850cacd7e559b147bcca84fe2c7bb63b0c8" [label="/bin/sh -c apt-get dist-upgrade -y" shape="box"];
  "sha256:d95b438e1870de2fdf7edd28fd8624896845085d42121b113249461d210ce47e" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d7b7fe20f02572f0acead6cbcdd6245f21ba265297c855493581b59459f8c01b" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -y install python-software-properties --fix-missing" shape="box"];
  "sha256:fc1b0a40fbb237c09e93bcd4898a5c593a46f6045b0f2152670d29017f2b1471" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common --fix-missing" shape="box"];
  "sha256:76a0701c809c7c6d1fbd93a8ad5c7cd9504c3d72f4c2862d0506bf7a9b702f7b" [label="/bin/sh -c add-apt-repository ppa:deadsnakes/ppa &&     apt-get update" shape="box"];
  "sha256:66d3d4109b7011f997814740423c5dcd0c090426f5b4e39fb83acc3699cb920d" [label="/bin/sh -c apt-get update && apt-get -yq dist-upgrade  && apt-get install -yq --no-install-recommends     wget     bzip2     ca-certificates     sudo     locales     fonts-liberation     python3.6  && apt-get clean  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:d80b22a867da8e4357f270b76b8a896b8728b923d9a09dc88308a23e9b944067" [label="/bin/sh -c echo \"en_US.UTF-8 UTF-8\" > /etc/locale.gen &&     locale-gen" shape="box"];
  "sha256:ee310517335f60071e28a4d631ee066afd91df119ec3800989a626650914bfe2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:e599eab7248db93de0d127ca5f104e995d83d9f8bfc60e7460f8d33a8ec964f0" [label="/bin/sh -c apt-get install curl" shape="box"];
  "sha256:2e5f2ecf8f98823ce841b95d0a01cfeb06db0279b6348232996ae17efe301149" [label="/bin/sh -c curl https://bootstrap.pypa.io/get-pip.py | python3.6" shape="box"];
  "sha256:4e86090c2bff47d20dad1ccab200fb70e41b1d77afbebccfa3d20bad2f9e2ce2" [label="/bin/sh -c ln -sf /usr/bin/python3.6 /usr/local/bin/python3 &&    ln -sf /usr/local/bin/pip /usr/local/bin/pip3" shape="box"];
  "sha256:39dd7d25437e5782a47be109e08b5dfe814e37faa3f6973624db0756f5d81182" [label="/bin/sh -c wget --quiet https://github.com/krallin/tini/releases/download/v0.10.0/tini &&     echo \"1361527f39190a7338a0b434bd8c88ff7233ce7b9a4876f3315c22fce7eca1b0 *tini\" | sha256sum -c - &&     mv tini /usr/local/bin/tini &&     chmod +x /usr/local/bin/tini" shape="box"];
  "sha256:6478c1004339accf3209ca548e63e0348e3fbe7aaaa6b0d132d14c1066df4478" [label="copy{src=/fix-permissions, dest=/usr/local/bin/fix-permissions}" shape="note"];
  "sha256:adf64f64dc869601d3143051475fff24f3ac8e1feb97ea23043070fc0e513148" [label="/bin/sh -c useradd -m -s /bin/bash -N -u $NB_UID $NB_USER &&     mkdir -p $CONDA_DIR &&     chown $NB_USER:$NB_GID $CONDA_DIR &&     fix-permissions $HOME &&     fix-permissions $CONDA_DIR" shape="box"];
  "sha256:0fefad65e9a2430674d761a0fcc2c93ff632da403e66aa897809e335cc45a957" [label="/bin/sh -c mkdir /home/$NB_USER/work &&     fix-permissions /home/$NB_USER" shape="box"];
  "sha256:fdc9f0528b4c51b99aaf8157c7b34e83cfa38dee6b032960c582ea0b7d0a3fff" [label="/bin/sh -c mkdir /home/$NB_USER/work/local &&     fix-permissions /home/$NB_USER" shape="box"];
  "sha256:de6838700c8fdb2fa834fe4b7c60abcccaa8643478cd4af6e6b3430bd688caca" [label="/bin/sh -c cd /tmp &&     wget --quiet https://repo.continuum.io/miniconda/Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh &&     /bin/bash Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh -f -b -p $CONDA_DIR &&     rm Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh &&     $CONDA_DIR/bin/conda config --system --prepend channels conda-forge &&     $CONDA_DIR/bin/conda config --system --set auto_update_conda false &&     $CONDA_DIR/bin/conda config --system --set show_channel_urls true &&     $CONDA_DIR/bin/conda update --all --quiet --yes &&     conda clean -tipsy &&     fix-permissions $CONDA_DIR" shape="box"];
  "sha256:080dd966d2ab13b3d7e2b332568100def32c95280dea1bef543f2fc997e29552" [label="/bin/sh -c conda install -y     'python=3.6'      'notebook=5.7.2'     'jupyterhub=0.9.4'     'jupyterlab=0.35.4' &&    fix-permissions $CONDA_DIR" shape="box"];
  "sha256:a9d8827a7a6f41c4c1680a41e29151bf9654f9ecd5255538ca8e22274dd9f46d" [label="/bin/sh -c conda create -n deep_learning_python3     'python=3.6'     'notebook=5.7.2'     'jupyterlab=0.35.4' &&    fix-permissions $CONDA_DIR" shape="box"];
  "sha256:7acab0e28a504326d8f09e3fd64d4b48c136c506c9ec39795f1f66fa5df97d8c" [label="/bin/sh -c /opt/conda/envs/deep_learning_python3/bin/python -m ipykernel install --user --name deep_learning_python3 --display-name 'Deep Learning Python 3'" shape="box"];
  "sha256:02eb7f92c7c7a80c926179866b40a116995c18d38cd4ac23fed947f9c83c58d7" [label="/bin/sh -c conda create -n deep_learning_python2     'python=2.7'     'notebook'     'jupyterlab' &&    fix-permissions $CONDA_DIR" shape="box"];
  "sha256:9d6c5710c6d236dadd9c67f35b126bb47899aa36241bd2706e6d5a6e51163e84" [label="/bin/sh -c /opt/conda/envs/deep_learning_python2/bin/python -m ipykernel install --user --name deep_learning_python2 --display-name 'Deep Learning Python 2'" shape="box"];
  "sha256:50470a17bad326e1d812d93b2ae52d26c9fb998e814562120dbe32441da05126" [label="mkdir{path=/home/Deep_Learner}" shape="note"];
  "sha256:5017a2a5c503672277e33ed5ff6bcf42bb57c6a7361bc51dceb8ea4e2c77d919" [label="copy{src=/start.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:0bc5b5f8785dd17f372afa232fbf5a2b5ee6941f9a46ff9adb0137c5a76d7637" [label="copy{src=/start-notebook.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:990029aff5e841deafba2d19a5a3612ff9eb17ffd77133e7b2b4dbdef99930ab" [label="copy{src=/start-singleuser.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:9b34ec5ec2b107ef51ff2176bdbb6d54f61609545697ad9a4df3f3f2a07143c3" [label="sha256:9b34ec5ec2b107ef51ff2176bdbb6d54f61609545697ad9a4df3f3f2a07143c3" shape="plaintext"];
  "sha256:4908dd22cd48e06cd5977a316c3dc2f8fc375f08035cb55c7843ea9618b75393" -> "sha256:35d40a1b4f698fdce468c8e58626583106d9aafc6fee16725e01effb0c0c300d" [label=""];
  "sha256:35d40a1b4f698fdce468c8e58626583106d9aafc6fee16725e01effb0c0c300d" -> "sha256:29cfd5f1bac9cc08879f3f630e01a850cacd7e559b147bcca84fe2c7bb63b0c8" [label=""];
  "sha256:29cfd5f1bac9cc08879f3f630e01a850cacd7e559b147bcca84fe2c7bb63b0c8" -> "sha256:d95b438e1870de2fdf7edd28fd8624896845085d42121b113249461d210ce47e" [label=""];
  "sha256:d95b438e1870de2fdf7edd28fd8624896845085d42121b113249461d210ce47e" -> "sha256:d7b7fe20f02572f0acead6cbcdd6245f21ba265297c855493581b59459f8c01b" [label=""];
  "sha256:d7b7fe20f02572f0acead6cbcdd6245f21ba265297c855493581b59459f8c01b" -> "sha256:fc1b0a40fbb237c09e93bcd4898a5c593a46f6045b0f2152670d29017f2b1471" [label=""];
  "sha256:fc1b0a40fbb237c09e93bcd4898a5c593a46f6045b0f2152670d29017f2b1471" -> "sha256:76a0701c809c7c6d1fbd93a8ad5c7cd9504c3d72f4c2862d0506bf7a9b702f7b" [label=""];
  "sha256:76a0701c809c7c6d1fbd93a8ad5c7cd9504c3d72f4c2862d0506bf7a9b702f7b" -> "sha256:66d3d4109b7011f997814740423c5dcd0c090426f5b4e39fb83acc3699cb920d" [label=""];
  "sha256:66d3d4109b7011f997814740423c5dcd0c090426f5b4e39fb83acc3699cb920d" -> "sha256:d80b22a867da8e4357f270b76b8a896b8728b923d9a09dc88308a23e9b944067" [label=""];
  "sha256:d80b22a867da8e4357f270b76b8a896b8728b923d9a09dc88308a23e9b944067" -> "sha256:ee310517335f60071e28a4d631ee066afd91df119ec3800989a626650914bfe2" [label=""];
  "sha256:ee310517335f60071e28a4d631ee066afd91df119ec3800989a626650914bfe2" -> "sha256:e599eab7248db93de0d127ca5f104e995d83d9f8bfc60e7460f8d33a8ec964f0" [label=""];
  "sha256:e599eab7248db93de0d127ca5f104e995d83d9f8bfc60e7460f8d33a8ec964f0" -> "sha256:2e5f2ecf8f98823ce841b95d0a01cfeb06db0279b6348232996ae17efe301149" [label=""];
  "sha256:2e5f2ecf8f98823ce841b95d0a01cfeb06db0279b6348232996ae17efe301149" -> "sha256:4e86090c2bff47d20dad1ccab200fb70e41b1d77afbebccfa3d20bad2f9e2ce2" [label=""];
  "sha256:4e86090c2bff47d20dad1ccab200fb70e41b1d77afbebccfa3d20bad2f9e2ce2" -> "sha256:39dd7d25437e5782a47be109e08b5dfe814e37faa3f6973624db0756f5d81182" [label=""];
  "sha256:39dd7d25437e5782a47be109e08b5dfe814e37faa3f6973624db0756f5d81182" -> "sha256:6478c1004339accf3209ca548e63e0348e3fbe7aaaa6b0d132d14c1066df4478" [label=""];
  "sha256:03f7274ea1475a00bf730db4975600c123eb41d68498512662a5512c5dc29f95" -> "sha256:6478c1004339accf3209ca548e63e0348e3fbe7aaaa6b0d132d14c1066df4478" [label=""];
  "sha256:6478c1004339accf3209ca548e63e0348e3fbe7aaaa6b0d132d14c1066df4478" -> "sha256:adf64f64dc869601d3143051475fff24f3ac8e1feb97ea23043070fc0e513148" [label=""];
  "sha256:adf64f64dc869601d3143051475fff24f3ac8e1feb97ea23043070fc0e513148" -> "sha256:0fefad65e9a2430674d761a0fcc2c93ff632da403e66aa897809e335cc45a957" [label=""];
  "sha256:0fefad65e9a2430674d761a0fcc2c93ff632da403e66aa897809e335cc45a957" -> "sha256:fdc9f0528b4c51b99aaf8157c7b34e83cfa38dee6b032960c582ea0b7d0a3fff" [label=""];
  "sha256:fdc9f0528b4c51b99aaf8157c7b34e83cfa38dee6b032960c582ea0b7d0a3fff" -> "sha256:de6838700c8fdb2fa834fe4b7c60abcccaa8643478cd4af6e6b3430bd688caca" [label=""];
  "sha256:de6838700c8fdb2fa834fe4b7c60abcccaa8643478cd4af6e6b3430bd688caca" -> "sha256:080dd966d2ab13b3d7e2b332568100def32c95280dea1bef543f2fc997e29552" [label=""];
  "sha256:080dd966d2ab13b3d7e2b332568100def32c95280dea1bef543f2fc997e29552" -> "sha256:a9d8827a7a6f41c4c1680a41e29151bf9654f9ecd5255538ca8e22274dd9f46d" [label=""];
  "sha256:a9d8827a7a6f41c4c1680a41e29151bf9654f9ecd5255538ca8e22274dd9f46d" -> "sha256:7acab0e28a504326d8f09e3fd64d4b48c136c506c9ec39795f1f66fa5df97d8c" [label=""];
  "sha256:7acab0e28a504326d8f09e3fd64d4b48c136c506c9ec39795f1f66fa5df97d8c" -> "sha256:02eb7f92c7c7a80c926179866b40a116995c18d38cd4ac23fed947f9c83c58d7" [label=""];
  "sha256:02eb7f92c7c7a80c926179866b40a116995c18d38cd4ac23fed947f9c83c58d7" -> "sha256:9d6c5710c6d236dadd9c67f35b126bb47899aa36241bd2706e6d5a6e51163e84" [label=""];
  "sha256:9d6c5710c6d236dadd9c67f35b126bb47899aa36241bd2706e6d5a6e51163e84" -> "sha256:50470a17bad326e1d812d93b2ae52d26c9fb998e814562120dbe32441da05126" [label=""];
  "sha256:50470a17bad326e1d812d93b2ae52d26c9fb998e814562120dbe32441da05126" -> "sha256:5017a2a5c503672277e33ed5ff6bcf42bb57c6a7361bc51dceb8ea4e2c77d919" [label=""];
  "sha256:03f7274ea1475a00bf730db4975600c123eb41d68498512662a5512c5dc29f95" -> "sha256:5017a2a5c503672277e33ed5ff6bcf42bb57c6a7361bc51dceb8ea4e2c77d919" [label=""];
  "sha256:5017a2a5c503672277e33ed5ff6bcf42bb57c6a7361bc51dceb8ea4e2c77d919" -> "sha256:0bc5b5f8785dd17f372afa232fbf5a2b5ee6941f9a46ff9adb0137c5a76d7637" [label=""];
  "sha256:03f7274ea1475a00bf730db4975600c123eb41d68498512662a5512c5dc29f95" -> "sha256:0bc5b5f8785dd17f372afa232fbf5a2b5ee6941f9a46ff9adb0137c5a76d7637" [label=""];
  "sha256:0bc5b5f8785dd17f372afa232fbf5a2b5ee6941f9a46ff9adb0137c5a76d7637" -> "sha256:990029aff5e841deafba2d19a5a3612ff9eb17ffd77133e7b2b4dbdef99930ab" [label=""];
  "sha256:03f7274ea1475a00bf730db4975600c123eb41d68498512662a5512c5dc29f95" -> "sha256:990029aff5e841deafba2d19a5a3612ff9eb17ffd77133e7b2b4dbdef99930ab" [label=""];
  "sha256:990029aff5e841deafba2d19a5a3612ff9eb17ffd77133e7b2b4dbdef99930ab" -> "sha256:9b34ec5ec2b107ef51ff2176bdbb6d54f61609545697ad9a4df3f3f2a07143c3" [label=""];
}
