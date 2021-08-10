[app/sources/274612942.Dockerfile]
digraph {
  "sha256:19075c15dfcece7c24bcdaa0d83f9be5b8a6a74b710f4175b5ec92d1e034bbe0" [label="docker-image://docker.io/jupyter/base-notebook:latest" shape="ellipse"];
  "sha256:a4a6c8b04fd63e058894bf57009d526dbc236a611888ef4c6a0ae1752db967e7" [label="mkdir{path=/home}" shape="note"];
  "sha256:a510148ed27fb420a5e335c044f5dd57c5b53dbda8bb604a04e8c5561cb25ec8" [label="/bin/sh -c wget $AMBER_DOWNLOAD -O amber16.tar.bz2 &&     tar -jxvf amber16.tar.bz2 &&     rm amber16.tar.bz2" shape="box"];
  "sha256:70f1ce5d8a8aa43125ad3dd3b06805ace27c1946808d2a2b32d1ea7af4bc6c2c" [label="/bin/sh -c wget $GROMACS_DOWNLOAD -O gromacs.tar.bz2 &&     tar -jxvf gromacs.tar.bz2 &&     rm gromacs.tar.bz2" shape="box"];
  "sha256:c73219a87983b7f2d3f107efc3e1737d1237c6a1cb0d3cf68e210f9d84683fb3" [label="/bin/sh -c echo \"python 3.7.*\" >> /opt/conda/conda-meta/pinned" shape="box"];
  "sha256:f8bdff8c1f559843f8811e513fa9d36a81cd905e59f939d8e429786a25ad7f6d" [label="mkdir{path=/home}" shape="note"];
  "sha256:5ad57274325a47dfa828d5acd1b555856e3bf8d93120bed8addd4fc4ac6b6a58" [label="/bin/sh -c conda install -c rdkit -c conda-forge -c omnia -c michellab/label/dev biosimspace" shape="box"];
  "sha256:5d6ced675b5b8ede768a7b3a284b96a3f42e1521ce5517678d67ee606d300cc8" [label="/bin/sh -c pip install --upgrade pip &&     pip install pygtail &&     pip install pypdb &&     pip install jupyterhub-tmpauthenticator" shape="box"];
  "sha256:8747d4d9ed3d387442141f7488b9ee7bc715dec865659a40372c583b8f912da2" [label="/bin/sh -c jupyter-nbextension install nglview --py --sys-prefix &&     jupyter-nbextension enable nglview --py --sys-prefix &&     pip install fileupload &&     jupyter-nbextension install fileupload --py --sys-prefix &&     jupyter-nbextension enable fileupload --py --sys-prefix" shape="box"];
  "sha256:1948f01a647b45a1d21dd6b8b9739176f5e83f5fb1ad5d484e6f65a57d0d41b1" [label="/bin/sh -c conda clean -tipsy &&     npm cache clean --force &&     rm -rf $CONDA_DIR/share/jupyter/lab/staging &&     rm -rf $HOME/.cache $HOME/.jupyter $HOME/.local/share/jupyter" shape="box"];
  "sha256:06702a57a643e1d29245424e02ebe963ff89a15a0dc375d32b42c4e0b26c1504" [label="/bin/sh -c apt-get update &&     apt-get -yq --no-install-recommends install git libgfortran3 nano &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1574bb882e5a15dbbb9db7b1ff40b1343153d5d37c5c674478f941edc97f2ef5" [label="/bin/sh -c git clone https://github.com/michellab/biosimspace &&     git clone https://github.com/CCPBioSim/python_and_data_workshop" shape="box"];
  "sha256:caca903ee32dcabe3c24d978b9f975c26beaaf99d8402a0b445cc394d5446574" [label="/bin/sh -c git clone https://github.com/CCPBioSim/biosimspace_workshop" shape="box"];
  "sha256:b3ebd9e6a755725b21d1f2465218e0fc1a0dec93195b082b55d9bc4dd83d8d7c" [label="/bin/sh -c rmdir work &&     ln -s $HOME/biosimspace/demo $HOME/demo" shape="box"];
  "sha256:d8ef354659dc0c277cb300a4241a3ecc72a7feedc10adf5130fad185b947e44c" [label="/bin/sh -c mkdir /opt/conda/lib/python3.7/site-packages/BioSimSpace/Node/_nodes &&     cp $HOME/demo/*.py /opt/conda/lib/python3.7/site-packages/BioSimSpace/Node/_nodes/" shape="box"];
  "sha256:fa0eac4efb48ef3d4b90ba5768055e471c9f60cc1c33106aa27c5dd3cbc8b9ff" [label="local://context" shape="ellipse"];
  "sha256:bf25b5967211a046077568e82ce4649949084ecdc4efca93054578d480608d48" [label="copy{src=/jupyter_notebook_config.py, dest=/etc/jupyter/}" shape="note"];
  "sha256:5cbbf3871114726d0d8795f077fbc10894350e4cd9c0a42cee90a0dbf4656472" [label="copy{src=/update_biosimspace, dest=/usr/bin}" shape="note"];
  "sha256:5286dea4134df706ea6e2c2a8d516c5eeca4c8e213fa561b92ab258dcd0a3037" [label="sha256:5286dea4134df706ea6e2c2a8d516c5eeca4c8e213fa561b92ab258dcd0a3037" shape="plaintext"];
  "sha256:19075c15dfcece7c24bcdaa0d83f9be5b8a6a74b710f4175b5ec92d1e034bbe0" -> "sha256:a4a6c8b04fd63e058894bf57009d526dbc236a611888ef4c6a0ae1752db967e7" [label=""];
  "sha256:a4a6c8b04fd63e058894bf57009d526dbc236a611888ef4c6a0ae1752db967e7" -> "sha256:a510148ed27fb420a5e335c044f5dd57c5b53dbda8bb604a04e8c5561cb25ec8" [label=""];
  "sha256:a510148ed27fb420a5e335c044f5dd57c5b53dbda8bb604a04e8c5561cb25ec8" -> "sha256:70f1ce5d8a8aa43125ad3dd3b06805ace27c1946808d2a2b32d1ea7af4bc6c2c" [label=""];
  "sha256:70f1ce5d8a8aa43125ad3dd3b06805ace27c1946808d2a2b32d1ea7af4bc6c2c" -> "sha256:c73219a87983b7f2d3f107efc3e1737d1237c6a1cb0d3cf68e210f9d84683fb3" [label=""];
  "sha256:c73219a87983b7f2d3f107efc3e1737d1237c6a1cb0d3cf68e210f9d84683fb3" -> "sha256:f8bdff8c1f559843f8811e513fa9d36a81cd905e59f939d8e429786a25ad7f6d" [label=""];
  "sha256:f8bdff8c1f559843f8811e513fa9d36a81cd905e59f939d8e429786a25ad7f6d" -> "sha256:5ad57274325a47dfa828d5acd1b555856e3bf8d93120bed8addd4fc4ac6b6a58" [label=""];
  "sha256:5ad57274325a47dfa828d5acd1b555856e3bf8d93120bed8addd4fc4ac6b6a58" -> "sha256:5d6ced675b5b8ede768a7b3a284b96a3f42e1521ce5517678d67ee606d300cc8" [label=""];
  "sha256:5d6ced675b5b8ede768a7b3a284b96a3f42e1521ce5517678d67ee606d300cc8" -> "sha256:8747d4d9ed3d387442141f7488b9ee7bc715dec865659a40372c583b8f912da2" [label=""];
  "sha256:8747d4d9ed3d387442141f7488b9ee7bc715dec865659a40372c583b8f912da2" -> "sha256:1948f01a647b45a1d21dd6b8b9739176f5e83f5fb1ad5d484e6f65a57d0d41b1" [label=""];
  "sha256:1948f01a647b45a1d21dd6b8b9739176f5e83f5fb1ad5d484e6f65a57d0d41b1" -> "sha256:06702a57a643e1d29245424e02ebe963ff89a15a0dc375d32b42c4e0b26c1504" [label=""];
  "sha256:06702a57a643e1d29245424e02ebe963ff89a15a0dc375d32b42c4e0b26c1504" -> "sha256:1574bb882e5a15dbbb9db7b1ff40b1343153d5d37c5c674478f941edc97f2ef5" [label=""];
  "sha256:1574bb882e5a15dbbb9db7b1ff40b1343153d5d37c5c674478f941edc97f2ef5" -> "sha256:caca903ee32dcabe3c24d978b9f975c26beaaf99d8402a0b445cc394d5446574" [label=""];
  "sha256:caca903ee32dcabe3c24d978b9f975c26beaaf99d8402a0b445cc394d5446574" -> "sha256:b3ebd9e6a755725b21d1f2465218e0fc1a0dec93195b082b55d9bc4dd83d8d7c" [label=""];
  "sha256:b3ebd9e6a755725b21d1f2465218e0fc1a0dec93195b082b55d9bc4dd83d8d7c" -> "sha256:d8ef354659dc0c277cb300a4241a3ecc72a7feedc10adf5130fad185b947e44c" [label=""];
  "sha256:d8ef354659dc0c277cb300a4241a3ecc72a7feedc10adf5130fad185b947e44c" -> "sha256:bf25b5967211a046077568e82ce4649949084ecdc4efca93054578d480608d48" [label=""];
  "sha256:fa0eac4efb48ef3d4b90ba5768055e471c9f60cc1c33106aa27c5dd3cbc8b9ff" -> "sha256:bf25b5967211a046077568e82ce4649949084ecdc4efca93054578d480608d48" [label=""];
  "sha256:bf25b5967211a046077568e82ce4649949084ecdc4efca93054578d480608d48" -> "sha256:5cbbf3871114726d0d8795f077fbc10894350e4cd9c0a42cee90a0dbf4656472" [label=""];
  "sha256:fa0eac4efb48ef3d4b90ba5768055e471c9f60cc1c33106aa27c5dd3cbc8b9ff" -> "sha256:5cbbf3871114726d0d8795f077fbc10894350e4cd9c0a42cee90a0dbf4656472" [label=""];
  "sha256:5cbbf3871114726d0d8795f077fbc10894350e4cd9c0a42cee90a0dbf4656472" -> "sha256:5286dea4134df706ea6e2c2a8d516c5eeca4c8e213fa561b92ab258dcd0a3037" [label=""];
}

