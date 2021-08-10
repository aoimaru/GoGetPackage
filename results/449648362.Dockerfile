[app/sources/449648362.Dockerfile]
digraph {
  "sha256:701b05566dae4795ae9fbf8b946439f5c6b9012e935a88b405fe668700f2171a" [label="local://context" shape="ellipse"];
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" [label="docker-image://docker.io/nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04" shape="ellipse"];
  "sha256:02136146427aa0a1e86974450ec8e8ae01e9bc7316743ea29288f6d48f9a1c29" [label="/bin/sh -c apt-get update && apt-get install -y         curl bzip2 software-properties-common pkg-config ca-certificates         cmake autoconf automake libtool flex sudo git tzdata openssh-server         libglib2.0-0 libxext6 libsm6 libxrender1 libreadline-dev         graphviz libgraphviz-dev &&     apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:746ba04d07ca3c9b853fe2c931c5ee72d8b85f490cf74621a88a32f8c2a95da1" [label="/bin/sh -c echo $TZ > /etc/timezone && rm /etc/localtime &&     ln -snf /usr/share/zoneinfo/$TZ /etc/localtime &&     dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:53c6c3786391954cfb43738f905b5f7859c5f82ae6c400ac409be966d47328f7" [label="/bin/sh -c curl -s -o miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-${MINICONDA_VERSION}-Linux-x86_64.sh &&     bash miniconda.sh -b -p /opt/miniconda && rm miniconda.sh" shape="box"];
  "sha256:54a10157142545f3e01bc9c85c3cebcd543c2f8188be846b8ab403c839666bb7" [label="copy{src=/environment.yml, dest=/src/environment.yml}" shape="note"];
  "sha256:cfde290fd5811d44a1e71c32e99aa997a67c4423a181955f1269f20264cfcf7d" [label="/bin/sh -c conda env create -f /src/environment.yml" shape="box"];
  "sha256:e00df25dda0bb6774b7a376a4f726df65f7d556dceace1aedd7707ca7416b485" [label="copy{src=/requirements.txt, dest=/src/requirements.txt}" shape="note"];
  "sha256:4c25e26a187b5eb8f81d7e2424149fa727fa7dee8532f69ead8612f92cc9a7a8" [label="/bin/sh -c bash -c \"source activate default && pip install -r /src/requirements.txt\"" shape="box"];
  "sha256:d434f331af83ef9ee3a930f6b82f0eaf680bfd238656f67d1a2ff29ad1768fca" [label="/bin/sh -c bash -c \"source activate default &&         jupyter nbextension enable --py --sys-prefix widgetsnbextension &&         jupyter labextension install @jupyter-widgets/jupyterlab-manager &&         python -m nltk.downloader -d /opt/miniconda/envs/default/share/nltk_data punkt\"" shape="box"];
  "sha256:665ca1ea7470de25c21fe69a75f69600583603f9bc3d139e586c9f0ced337970" [label="copy{src=/, dest=/src}" shape="note"];
  "sha256:20f44d8ec0b8d0d9d9fdb1c95f4a183680e66ce50aa4c49533fdc0eeda03c054" [label="mkdir{path=/src}" shape="note"];
  "sha256:b67982175c571a6dfb0a23d02f191c5571caeaafe891ff4686a27c9183eef6e7" [label="/bin/sh -c bash -c \"source activate default && python setup.py build_ext\"" shape="box"];
  "sha256:aa49ccdee72dcfc00b54e0c74ce2a3beaa173cb20a2552d0266e6dd21cfc4a45" [label="/bin/sh -c bash -c \"source activate default && python setup.py develop\"" shape="box"];
  "sha256:24ed2d50c5854ccd77df78b184c6d0255e821d17f3139a28d1ab1e7327990bf6" [label="mkdir{path=/work}" shape="note"];
  "sha256:7a3eabc68d19386e19d08990d83f8703b97dee90d3e0a79e9e32c3e7b7a3994d" [label="sha256:7a3eabc68d19386e19d08990d83f8703b97dee90d3e0a79e9e32c3e7b7a3994d" shape="plaintext"];
  "sha256:6ed6146e7fc5023cf3d84e996ecd598a3af9e373c40cfde14d1fa91b8a687927" -> "sha256:02136146427aa0a1e86974450ec8e8ae01e9bc7316743ea29288f6d48f9a1c29" [label=""];
  "sha256:02136146427aa0a1e86974450ec8e8ae01e9bc7316743ea29288f6d48f9a1c29" -> "sha256:746ba04d07ca3c9b853fe2c931c5ee72d8b85f490cf74621a88a32f8c2a95da1" [label=""];
  "sha256:746ba04d07ca3c9b853fe2c931c5ee72d8b85f490cf74621a88a32f8c2a95da1" -> "sha256:53c6c3786391954cfb43738f905b5f7859c5f82ae6c400ac409be966d47328f7" [label=""];
  "sha256:53c6c3786391954cfb43738f905b5f7859c5f82ae6c400ac409be966d47328f7" -> "sha256:54a10157142545f3e01bc9c85c3cebcd543c2f8188be846b8ab403c839666bb7" [label=""];
  "sha256:701b05566dae4795ae9fbf8b946439f5c6b9012e935a88b405fe668700f2171a" -> "sha256:54a10157142545f3e01bc9c85c3cebcd543c2f8188be846b8ab403c839666bb7" [label=""];
  "sha256:54a10157142545f3e01bc9c85c3cebcd543c2f8188be846b8ab403c839666bb7" -> "sha256:cfde290fd5811d44a1e71c32e99aa997a67c4423a181955f1269f20264cfcf7d" [label=""];
  "sha256:cfde290fd5811d44a1e71c32e99aa997a67c4423a181955f1269f20264cfcf7d" -> "sha256:e00df25dda0bb6774b7a376a4f726df65f7d556dceace1aedd7707ca7416b485" [label=""];
  "sha256:701b05566dae4795ae9fbf8b946439f5c6b9012e935a88b405fe668700f2171a" -> "sha256:e00df25dda0bb6774b7a376a4f726df65f7d556dceace1aedd7707ca7416b485" [label=""];
  "sha256:e00df25dda0bb6774b7a376a4f726df65f7d556dceace1aedd7707ca7416b485" -> "sha256:4c25e26a187b5eb8f81d7e2424149fa727fa7dee8532f69ead8612f92cc9a7a8" [label=""];
  "sha256:4c25e26a187b5eb8f81d7e2424149fa727fa7dee8532f69ead8612f92cc9a7a8" -> "sha256:d434f331af83ef9ee3a930f6b82f0eaf680bfd238656f67d1a2ff29ad1768fca" [label=""];
  "sha256:d434f331af83ef9ee3a930f6b82f0eaf680bfd238656f67d1a2ff29ad1768fca" -> "sha256:665ca1ea7470de25c21fe69a75f69600583603f9bc3d139e586c9f0ced337970" [label=""];
  "sha256:701b05566dae4795ae9fbf8b946439f5c6b9012e935a88b405fe668700f2171a" -> "sha256:665ca1ea7470de25c21fe69a75f69600583603f9bc3d139e586c9f0ced337970" [label=""];
  "sha256:665ca1ea7470de25c21fe69a75f69600583603f9bc3d139e586c9f0ced337970" -> "sha256:20f44d8ec0b8d0d9d9fdb1c95f4a183680e66ce50aa4c49533fdc0eeda03c054" [label=""];
  "sha256:20f44d8ec0b8d0d9d9fdb1c95f4a183680e66ce50aa4c49533fdc0eeda03c054" -> "sha256:b67982175c571a6dfb0a23d02f191c5571caeaafe891ff4686a27c9183eef6e7" [label=""];
  "sha256:b67982175c571a6dfb0a23d02f191c5571caeaafe891ff4686a27c9183eef6e7" -> "sha256:aa49ccdee72dcfc00b54e0c74ce2a3beaa173cb20a2552d0266e6dd21cfc4a45" [label=""];
  "sha256:aa49ccdee72dcfc00b54e0c74ce2a3beaa173cb20a2552d0266e6dd21cfc4a45" -> "sha256:24ed2d50c5854ccd77df78b184c6d0255e821d17f3139a28d1ab1e7327990bf6" [label=""];
  "sha256:24ed2d50c5854ccd77df78b184c6d0255e821d17f3139a28d1ab1e7327990bf6" -> "sha256:7a3eabc68d19386e19d08990d83f8703b97dee90d3e0a79e9e32c3e7b7a3994d" [label=""];
}

