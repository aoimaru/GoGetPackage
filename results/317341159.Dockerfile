[app/sources/317341159.Dockerfile]
digraph {
  "sha256:aa426d5a811ecccb8d8dddb19ebfe61fa9269218a4aa48f2b5a05ba9736f2df7" [label="docker-image://docker.io/ibmcom/powerai:1.5.4-all-ubuntu18.04-py3@sha256:0375bac4b8e1b541caa00fee2d13cab75d2dee79d4723db559e5faba690fed28" shape="ellipse"];
  "sha256:a40869c1d1cc83f7648382fcac844a33af1f047ede91c4efcfb8792a3feaf5a5" [label="/bin/sh -c echo 1 | sudo /opt/DL/license/bin/accept-powerai-license.sh" shape="box"];
  "sha256:26bf08be765c06238f0ecd772e504310f0b1620a8363b8b1fe6c5ffd55487ff3" [label="/bin/sh -c sudo /bin/ln -sf /bin/bash /bin/sh" shape="box"];
  "sha256:6a6ac6eaecd82c2e298afdad2f0d342cdabfeeabb783bf5ce21ad232dff61372" [label="/bin/sh -c sudo /bin/sed -i -e \"/ddl-tensorflow/a\\ \\ \\ \\ scripts['tensorboard']=\\'/opt/DL/tensorboard/bin/tensorboard-activate\\'\" /var/local/powerai/default_framework.sh" shape="box"];
  "sha256:995df4e8fbe38193dca343206578c7c4dc210f92ed8ed583c8bdf5dbbf4cad0c" [label="/bin/sh -c sudo apt-get update && sudo apt-get install -y --no-install-recommends          build-essential          libcupti-dev          ca-certificates          cmake          libfreetype6-dev          wget          git          pkg-config          tmux          graphviz          vim && wget -O ~/get-pip.py     https://bootstrap.pypa.io/get-pip.py && python3.6 ~/get-pip.py && pip install --upgrade --no-cache-dir keras==2.1.6 && pip install --upgrade --no-cache-dir jupyter && sudo apt-get clean && sudo apt-get autoremove && sudo rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8ce0b7817c92a811c736117a477d40a1fdeba8d08052fd42cd8ce6517a2aee9f" [label="local://context" shape="ellipse"];
  "sha256:8fba39b6248ff0e7ff6d8fa244d1b6af29aeafd432c61140676c77b0e65dfa19" [label="copy{src=/requirements_docker.txt, dest=/tmp/requirements.txt}" shape="note"];
  "sha256:2a37cf9a36e15a00e143f3061bdfc26c21e0e351ce8d636bed4e75cfa6734dff" [label="/bin/sh -c pip install -r /tmp/requirements.txt" shape="box"];
  "sha256:e70c20842ff15ab61c26f33116ef7976e5538486ddf9956297a933a6b133a2ef" [label="mkdir{path=/home/pwrai/microDL}" shape="note"];
  "sha256:0a0484e7aae16b2559cee5e15802bf899b766ddb23f102c0550ad4195ccf37c7" [label="/bin/sh -c sudo chown ${USER_NAME} ${WORK_DIR}" shape="box"];
  "sha256:c64be4be9318c7e478e2b45a3488a3c4e4c434bd630b082c71cf4f18cf2b92b2" [label="/bin/sh -c sudo chgrp ${USER_NAME} ${WORK_DIR}" shape="box"];
  "sha256:dfc530179cfec4543dc65bd4cc0c1ac39388fc827158627139acd99757030f51" [label="sha256:dfc530179cfec4543dc65bd4cc0c1ac39388fc827158627139acd99757030f51" shape="plaintext"];
  "sha256:aa426d5a811ecccb8d8dddb19ebfe61fa9269218a4aa48f2b5a05ba9736f2df7" -> "sha256:a40869c1d1cc83f7648382fcac844a33af1f047ede91c4efcfb8792a3feaf5a5" [label=""];
  "sha256:a40869c1d1cc83f7648382fcac844a33af1f047ede91c4efcfb8792a3feaf5a5" -> "sha256:26bf08be765c06238f0ecd772e504310f0b1620a8363b8b1fe6c5ffd55487ff3" [label=""];
  "sha256:26bf08be765c06238f0ecd772e504310f0b1620a8363b8b1fe6c5ffd55487ff3" -> "sha256:6a6ac6eaecd82c2e298afdad2f0d342cdabfeeabb783bf5ce21ad232dff61372" [label=""];
  "sha256:6a6ac6eaecd82c2e298afdad2f0d342cdabfeeabb783bf5ce21ad232dff61372" -> "sha256:995df4e8fbe38193dca343206578c7c4dc210f92ed8ed583c8bdf5dbbf4cad0c" [label=""];
  "sha256:995df4e8fbe38193dca343206578c7c4dc210f92ed8ed583c8bdf5dbbf4cad0c" -> "sha256:8fba39b6248ff0e7ff6d8fa244d1b6af29aeafd432c61140676c77b0e65dfa19" [label=""];
  "sha256:8ce0b7817c92a811c736117a477d40a1fdeba8d08052fd42cd8ce6517a2aee9f" -> "sha256:8fba39b6248ff0e7ff6d8fa244d1b6af29aeafd432c61140676c77b0e65dfa19" [label=""];
  "sha256:8fba39b6248ff0e7ff6d8fa244d1b6af29aeafd432c61140676c77b0e65dfa19" -> "sha256:2a37cf9a36e15a00e143f3061bdfc26c21e0e351ce8d636bed4e75cfa6734dff" [label=""];
  "sha256:2a37cf9a36e15a00e143f3061bdfc26c21e0e351ce8d636bed4e75cfa6734dff" -> "sha256:e70c20842ff15ab61c26f33116ef7976e5538486ddf9956297a933a6b133a2ef" [label=""];
  "sha256:e70c20842ff15ab61c26f33116ef7976e5538486ddf9956297a933a6b133a2ef" -> "sha256:0a0484e7aae16b2559cee5e15802bf899b766ddb23f102c0550ad4195ccf37c7" [label=""];
  "sha256:0a0484e7aae16b2559cee5e15802bf899b766ddb23f102c0550ad4195ccf37c7" -> "sha256:c64be4be9318c7e478e2b45a3488a3c4e4c434bd630b082c71cf4f18cf2b92b2" [label=""];
  "sha256:c64be4be9318c7e478e2b45a3488a3c4e4c434bd630b082c71cf4f18cf2b92b2" -> "sha256:dfc530179cfec4543dc65bd4cc0c1ac39388fc827158627139acd99757030f51" [label=""];
}

