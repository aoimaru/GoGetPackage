[app/sources/243132955.Dockerfile]
digraph {
  "sha256:98992f6daec36c7c48959420ab91ab424d0af3de379d305109066b9cbdb07a46" [label="local://context" shape="ellipse"];
  "sha256:865c445fade30d79b09737eae57ca3a1e0fc98b93600aac995390911adfa0eda" [label="docker-image://docker.io/ppc64le/ubuntu:16.04" shape="ellipse"];
  "sha256:252a6c5db769c1b3b9870dee0a056481e47a967152adf3d239598cd5d93ec9b7" [label="/bin/sh -c apt-get update && apt-get install -y         binutils         build-essential         bzip2         ca-certificates         libglib2.0-0         libsm6         libxext6         libxrender1         wget         curl         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* &&     echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh &&     curl -k -o /miniconda.sh https://repo.continuum.io/miniconda/Miniconda3-${MINICONDA_VERSION}-Linux-ppc64le.sh &&     wget https://repo.continuum.io/pkgs/free/linux-ppc64le/luigi-2.3.0-py27_0.tar.bz2 &&     /bin/bash /miniconda.sh -b -p /opt/conda &&     rm /miniconda.sh &&     /opt/conda/bin/conda config         --set always_yes yes         --set changeps1 no         --set show_channel_urls True         &&     /opt/conda/bin/conda config         --add channels conda-forge         &&     /opt/conda/bin/conda install         python==${PYTHON_VERSION}         sqlalchemy         psycopg2         mysql-connector-python         &&     /opt/conda/bin/conda install -c anaconda luigi  &&     /opt/conda/bin/conda clean -a -y &&     mkdir -p ${LUIGI_CONFIG_DIR} &&     mkdir -p ${LUIGI_STATE_DIR} &&     apt-get purge -y binutils build-essential bzip2 ca-certificates libglib2.0-0 libsm6 libxext6  libxrender1 wget curl &&     apt-get autoremove -y" shape="box"];
  "sha256:bf5ce2685e111b24dbb651cdc60c56f4a1b662ada836bf579f4e9e8dc0fe832f" [label="copy{src=/logging.conf, dest=/etc/luigi/}" shape="note"];
  "sha256:2e5dbbb4c12cbf23cae1883c1b018543ad24a7869d6472b970647e783fcfb474" [label="copy{src=/luigi.conf, dest=/etc/luigi/}" shape="note"];
  "sha256:e680bed3efec6c259edd524d35c312b4dfc989b34033b18d36748c288816049e" [label="/bin/sh -c cd /etc/luigi && mkdir luigid && cd luigid && mkdir run" shape="box"];
  "sha256:c829361f1197c1b551c89b5d366e130fbf46c1ed202c6087afb64f002123f46c" [label="copy{src=/luigid.sh, dest=/etc/service/luigid/run/}" shape="note"];
  "sha256:5ef95d370bd3c01d5c2a42b1c73af0b6a065e3726052cb46e5d91f1b893e3e76" [label="sha256:5ef95d370bd3c01d5c2a42b1c73af0b6a065e3726052cb46e5d91f1b893e3e76" shape="plaintext"];
  "sha256:865c445fade30d79b09737eae57ca3a1e0fc98b93600aac995390911adfa0eda" -> "sha256:252a6c5db769c1b3b9870dee0a056481e47a967152adf3d239598cd5d93ec9b7" [label=""];
  "sha256:252a6c5db769c1b3b9870dee0a056481e47a967152adf3d239598cd5d93ec9b7" -> "sha256:bf5ce2685e111b24dbb651cdc60c56f4a1b662ada836bf579f4e9e8dc0fe832f" [label=""];
  "sha256:98992f6daec36c7c48959420ab91ab424d0af3de379d305109066b9cbdb07a46" -> "sha256:bf5ce2685e111b24dbb651cdc60c56f4a1b662ada836bf579f4e9e8dc0fe832f" [label=""];
  "sha256:bf5ce2685e111b24dbb651cdc60c56f4a1b662ada836bf579f4e9e8dc0fe832f" -> "sha256:2e5dbbb4c12cbf23cae1883c1b018543ad24a7869d6472b970647e783fcfb474" [label=""];
  "sha256:98992f6daec36c7c48959420ab91ab424d0af3de379d305109066b9cbdb07a46" -> "sha256:2e5dbbb4c12cbf23cae1883c1b018543ad24a7869d6472b970647e783fcfb474" [label=""];
  "sha256:2e5dbbb4c12cbf23cae1883c1b018543ad24a7869d6472b970647e783fcfb474" -> "sha256:e680bed3efec6c259edd524d35c312b4dfc989b34033b18d36748c288816049e" [label=""];
  "sha256:e680bed3efec6c259edd524d35c312b4dfc989b34033b18d36748c288816049e" -> "sha256:c829361f1197c1b551c89b5d366e130fbf46c1ed202c6087afb64f002123f46c" [label=""];
  "sha256:98992f6daec36c7c48959420ab91ab424d0af3de379d305109066b9cbdb07a46" -> "sha256:c829361f1197c1b551c89b5d366e130fbf46c1ed202c6087afb64f002123f46c" [label=""];
  "sha256:c829361f1197c1b551c89b5d366e130fbf46c1ed202c6087afb64f002123f46c" -> "sha256:5ef95d370bd3c01d5c2a42b1c73af0b6a065e3726052cb46e5d91f1b893e3e76" [label=""];
}

