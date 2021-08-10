[app/sources/335189204.Dockerfile]
digraph {
  "sha256:670dbc0522848bb2ee589945b0f2409f83dbd2b532e9780792d2bbebfb03a9b1" [label="docker-image://docker.io/continuumio/anaconda3@sha256:1d441b875dffd5d1d76b6c7f5ec3b4988ca9832a1587148bff6779e413f78370" shape="ellipse"];
  "sha256:bf82f6a57dd3ec4789afd32e27d58589fcf518306ec3d2b6bfa4af8e6e9384cf" [label="/bin/sh -c apt-get update && apt-get install -y         pkg-config         libfreetype6-dev         &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:73f8edbbf66180bf73233aeb535c4f452cc1c28ef4ef1f43fc377b7fdfbbf429" [label="/bin/sh -c pip install tensorflow==$TENSORFLOW_VERSION" shape="box"];
  "sha256:317a3b84a944bfb349bf80cf38723148fd23c67ac8963b4d03737d72f8268403" [label="local://context" shape="ellipse"];
  "sha256:c2c33366a099c677756f4f63f971c666e6c63acd5dbb03ac5b54bfbac974e094" [label="copy{src=/jupyter_notebook_config.py, dest=/root/.jupyter/}" shape="note"];
  "sha256:f395212ee9b7cae4137afbbd7c05041b739eded02523cb9b727af01c74a9f58e" [label="copy{src=/run_jupyter.sh, dest=/}" shape="note"];
  "sha256:82028138f7b48114e33d639dea6cdd312d0bace625272d8eb0af0b06d2d3cda6" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:13fd3ab56f33ee1e057b577bcc0d16e256de978d03fece6f04c10b97387b765f" [label="sha256:13fd3ab56f33ee1e057b577bcc0d16e256de978d03fece6f04c10b97387b765f" shape="plaintext"];
  "sha256:670dbc0522848bb2ee589945b0f2409f83dbd2b532e9780792d2bbebfb03a9b1" -> "sha256:bf82f6a57dd3ec4789afd32e27d58589fcf518306ec3d2b6bfa4af8e6e9384cf" [label=""];
  "sha256:bf82f6a57dd3ec4789afd32e27d58589fcf518306ec3d2b6bfa4af8e6e9384cf" -> "sha256:73f8edbbf66180bf73233aeb535c4f452cc1c28ef4ef1f43fc377b7fdfbbf429" [label=""];
  "sha256:73f8edbbf66180bf73233aeb535c4f452cc1c28ef4ef1f43fc377b7fdfbbf429" -> "sha256:c2c33366a099c677756f4f63f971c666e6c63acd5dbb03ac5b54bfbac974e094" [label=""];
  "sha256:317a3b84a944bfb349bf80cf38723148fd23c67ac8963b4d03737d72f8268403" -> "sha256:c2c33366a099c677756f4f63f971c666e6c63acd5dbb03ac5b54bfbac974e094" [label=""];
  "sha256:c2c33366a099c677756f4f63f971c666e6c63acd5dbb03ac5b54bfbac974e094" -> "sha256:f395212ee9b7cae4137afbbd7c05041b739eded02523cb9b727af01c74a9f58e" [label=""];
  "sha256:317a3b84a944bfb349bf80cf38723148fd23c67ac8963b4d03737d72f8268403" -> "sha256:f395212ee9b7cae4137afbbd7c05041b739eded02523cb9b727af01c74a9f58e" [label=""];
  "sha256:f395212ee9b7cae4137afbbd7c05041b739eded02523cb9b727af01c74a9f58e" -> "sha256:82028138f7b48114e33d639dea6cdd312d0bace625272d8eb0af0b06d2d3cda6" [label=""];
  "sha256:82028138f7b48114e33d639dea6cdd312d0bace625272d8eb0af0b06d2d3cda6" -> "sha256:13fd3ab56f33ee1e057b577bcc0d16e256de978d03fece6f04c10b97387b765f" [label=""];
}

